import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/views/home_view.dart';
import 'product/generation/assets.gen.dart';
import 'product/generation/colors.gen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 760),
      builder: (context, child) {
        return const MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          home: LoginView(),
        );
      },
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    double? screenWidthSize = MediaQuery.of(context).size.width;
    double? screenHeightSize = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.image.bgImage.path),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: screenHeightSize,
              width: screenWidthSize,
              child: Assets.svg.bgShadow.svg(
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 258.h,
            bottom: 0.h,
            width: screenWidthSize,
            child: Assets.svg.bgShadowBottom.svg(fit: BoxFit.fill),
          ),
          Positioned(
            top: 101.h,
            left: 101.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.image.logoImage.image(height: 59.h, width: 59.w),
                Padding(
                  padding: EdgeInsets.only(left: 11.0.w),
                  child: Text(
                    "SanaLira",
                    style: GoogleFonts.inter(
                      fontSize: 21.sp,
                      color: ColorName.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 289.h,
            left: 15.w,
            right: 15.w,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  LoginViewTitle(),
                  LoginViewSubTitle(),
                  LoginViewTextFormField(labelText: "Ad"),
                  LoginViewTextFormField(labelText: "Soyad"),
                  LoginViewTextFormField(labelText: "E-posta"),
                  LoginViewPhoneTextFormField(),
                  AgreementField(),
                  LoginButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeView(),
              ));
        },
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(330.w, 47.h)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r))),
          backgroundColor: MaterialStateProperty.all(
            ColorName.snowPea,
          ),
        ),
        child: Center(
          child: Text(
            "Giriş Yap",
            style: GoogleFonts.inter(fontSize: 13.sp, color: ColorName.white, fontWeight: FontWeight.w600),
          ),
        ));
  }
}

class LoginViewSubTitle extends StatelessWidget {
  const LoginViewSubTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 15),
      child: Text(
        'Bilgilerinizi girip sözleşmeyi onaylayın',
        style: GoogleFonts.inter(
          fontSize: 12.sp,
          color: ColorName.lightHorizonSky,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}

class LoginViewTitle extends StatelessWidget {
  const LoginViewTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      width: 176.w,
      child: Text.rich(TextSpan(children: [
        TextSpan(
            text: "SanaLira'ya ",
            style: TextStyle(fontSize: 16.sp, color: ColorName.snowPea, fontWeight: FontWeight.w600)),
        TextSpan(
            text: "Yeni Üyelik",
            style: TextStyle(
              fontSize: 16.sp,
              color: ColorName.white,
            ))
      ])),
    );
  }
}

class AgreementField extends StatefulWidget {
  const AgreementField({
    Key? key,
  }) : super(key: key);

  @override
  State<AgreementField> createState() => _AgreementFieldState();
}

class _AgreementFieldState extends State<AgreementField> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0.h),
      child: Row(
        children: [
          SizedBox(
            height: 19.h,
            width: 19.w,
            child: Checkbox(
              value: isChecked,
              activeColor: ColorName.snowPea,
              side: BorderSide(color: ColorName.lightHorizonSky, width: 1.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.r),
                side: BorderSide(
                  width: 1.w,
                  color: ColorName.lightHorizonSky,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6.0.h, right: 44.w),
            child: SizedBox(
              height: 35.h,
              width: 261.w,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Hesabınızı oluştururken ",
                      style: GoogleFonts.inter(fontSize: 12.sp, color: ColorName.white),
                    ),
                    TextSpan(
                      text: "sözleşme ve koşulları ",
                      style: GoogleFonts.inter(fontSize: 12.sp, color: ColorName.snowPea, fontWeight: FontWeight.w600),
                    ),
                    TextSpan(
                      text: "kabul etmeniz gerekir.",
                      style: GoogleFonts.inter(fontSize: 12.sp, color: ColorName.white),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LoginViewSubtitle extends StatelessWidget {
  const LoginViewSubtitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'SanaLira\'ya ',
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: ColorName.snowPea,
            ),
          ),
          TextSpan(
            text: 'Yeni Üyelik\n',
            style: GoogleFonts.inter(
              fontSize: 16.sp,
              color: ColorName.chefsHat,
            ),
          ),
        ],
      ),
    );
  }
}

class LoginViewPhoneTextFormField extends StatelessWidget {
  const LoginViewPhoneTextFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 7.0.h, bottom: 8.h),
          child: Text(
            "Cep Telefonu Numaranız",
            style: GoogleFonts.inter(
              fontSize: 10.sp,
              color: ColorName.lightHorizonSky,
            ),
          ),
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.w,
                      color: ColorName.lightHorizonSky,
                    ),
                    borderRadius: BorderRadius.circular(10.r)),
                height: 44.h,
                width: 83.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0.w, right: 5.w),
                      child: Assets.icon.icTurkey.svg(),
                    ),
                    Text(
                      "+90",
                      style: GoogleFonts.inter(
                        color: ColorName.white,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )),
            SizedBox(
              width: 5.w,
            ),
            SizedBox(
              height: 44.h,
              width: 242.w,
              child: TextFormField(
                style: GoogleFonts.inter(color: ColorName.white, fontWeight: FontWeight.w600, fontSize: 12.sp),
                cursorColor: ColorName.lightHorizonSky,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 12.w, top: 15.h, bottom: 14.h, right: 12.w),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: ColorName.lightHorizonSky,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: ColorName.lightHorizonSky,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: BorderSide(
                      width: 1.w,
                      color: ColorName.lightHorizonSky,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.w,
                      color: ColorName.lightHorizonSky,
                    ),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class LoginViewTextFormField extends StatelessWidget {
  final String labelText;
  const LoginViewTextFormField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double? screenWidthSize = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(bottom: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(
              labelText,
              style: GoogleFonts.inter(
                fontSize: 10.sp,
                color: ColorName.lightHorizonSky,
              ),
            ),
          ),
          SizedBox(
            height: 44.h,
            width: screenWidthSize,
            child: TextFormField(
              style: GoogleFonts.inter(
                color: ColorName.white,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
              cursorColor: ColorName.lightHorizonSky,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 12.w, top: 15.h, bottom: 14.h, right: 12.w),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: ColorName.lightHorizonSky,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: ColorName.lightHorizonSky,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide(
                    width: 1.w,
                    color: ColorName.lightHorizonSky,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.w,
                    color: ColorName.lightHorizonSky,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
