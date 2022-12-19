import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return const MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
            top: 258,
            bottom: 0,
            width: screenWidthSize,
            child: Assets.svg.bgShadowBottom.svg(fit: BoxFit.fill),
          ),
          Positioned(
            top: 101,
            left: 101,
            right: 101,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.image.logoImage.image(height: 59, width: 59),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Text(
                    "SanaLira",
                    style: GoogleFonts.inter(
                      fontSize: 21,
                      color: ColorName.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 289,
            left: 15,
            right: 15,
            bottom: 31,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'SanaLira\'ya ',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: ColorName.snowPea,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: 'Yeni Üyelik\n',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              color: ColorName.chefsHat,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          TextSpan(
                            text: 'Bilgilerinizi girip sözleşmeyi onaylayın',
                            children: const [
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 20,
                                  ),
                                ),
                              )
                            ],
                            style: GoogleFonts.inter(
                              fontSize: 12,
                              color: ColorName.lightHorizonSky,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const LoginViewTextFormField(labelText: "Ad"),
                    const LoginViewTextFormField(labelText: "Soyad"),
                    const LoginViewTextFormField(labelText: "E-posta"),
                    const LoginViewPhoneTextFormField()
                  ]),
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
    double? screenWidthSize = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 5),
          child: Text(
            "Ad",
            style: GoogleFonts.inter(
              fontSize: 10,
              color: ColorName.lightHorizonSky,
            ),
          ),
        ),
        Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorName.lightHorizonSky,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                height: 44,
                width: 83,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 5),
                      child: Assets.icon.icTurkey.svg(),
                    ),
                    Text(
                      "+90",
                      style: GoogleFonts.inter(
                        color: ColorName.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                )),
            const SizedBox(
              width: 5,
            ),
            SizedBox(
              height: 44,
              width: screenWidthSize - 118,
              child: TextFormField(
                style: GoogleFonts.inter(color: ColorName.white, fontWeight: FontWeight.w600, fontSize: 12),
                cursorColor: ColorName.lightHorizonSky,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: ColorName.lightHorizonSky,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: ColorName.lightHorizonSky,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: ColorName.lightHorizonSky,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorName.lightHorizonSky,
                    ),
                    borderRadius: BorderRadius.circular(10),
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 5),
          child: Text(
            labelText,
            style: GoogleFonts.inter(
              fontSize: 10,
              color: ColorName.lightHorizonSky,
            ),
          ),
        ),
        SizedBox(
          height: 44,
          width: screenWidthSize,
          child: TextFormField(
            style: GoogleFonts.inter(color: ColorName.white, fontWeight: FontWeight.w600, fontSize: 12),
            cursorColor: ColorName.lightHorizonSky,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorName.lightHorizonSky,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorName.lightHorizonSky,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: ColorName.lightHorizonSky,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorName.lightHorizonSky,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}

/*
Positioned(
            top: 258,
            child: Stack(
              children: [
                Assets.svg.bgShadowBottom.svg(
                  width: screenWidthSize,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 31),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        loginScreenHeadline(),
                        const SizedBox(
                          height: 7,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 5),
                              child: Text(
                                "Ad",
                                style: GoogleFonts.inter(
                                  fontSize: 10,
                                  color: ColorName.lightHorizonSky,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 44,
                              width: screenWidthSize - 44,
                              child: TextFormField(
                                style: GoogleFonts.inter(
                                    color: ColorName.white, fontWeight: FontWeight.w600, fontSize: 12),
                                cursorColor: ColorName.lightHorizonSky,
                                decoration: InputDecoration(
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: ColorName.lightHorizonSky,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: const BorderSide(
                                      color: ColorName.lightHorizonSky,
                                    ),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: ColorName.lightHorizonSky,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              ],
            ),
          ),
          */
