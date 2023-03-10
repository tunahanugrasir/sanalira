import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../init/network/network_init.dart';
import '../../product/generation/assets.gen.dart';
import '../../product/generation/colors.gen.dart';
import '../../service/service.dart';
import '../view_model/home_view_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewModel _homeViewModel;
  late final IService bankService;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _fetchData();
  }

  void _fetchData() {
    _homeViewModel = HomeViewModel(BankService(NetworkInit.instance.networkManager));
    _homeViewModel.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorName.chefsHat,
        body: Observer(
          builder: (_) {
            return _homeViewModel.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 36.h,
                                width: 36.w,
                                decoration:
                                    BoxDecoration(color: ColorName.white, borderRadius: BorderRadius.circular(10.r)),
                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Assets.icon.icBackArrow.svg(),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 36.h,
                                width: 36.w,
                                decoration: BoxDecoration(
                                  color: ColorName.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Stack(
                                  children: [
                                    IconButton(
                                      onPressed: () => Navigator.pop(context),
                                      icon: Assets.icon.icNotification.svg(),
                                    ),
                                    Positioned(
                                      top: 9.h,
                                      left: 20.w,
                                      child: Container(
                                        height: 6.h,
                                        width: 6.w,
                                        decoration: BoxDecoration(
                                            color: ColorName.snowPea, borderRadius: BorderRadius.circular(100)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 9.w,
                              ),
                              Container(
                                height: 36.h,
                                width: 36.w,
                                decoration: BoxDecoration(
                                  color: ColorName.white,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: IconButton(
                                  onPressed: () => Navigator.pop(context),
                                  icon: Assets.icon.icSettings.svg(),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 21.0.h),
                            child: Container(
                              height: 56.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: ColorName.white,
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(right: 17.0.w),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0.w, top: 14.h, bottom: 14.h, right: 5.w),
                                      child: SizedBox(
                                        height: 29.h,
                                        width: 29.w,
                                        child: Assets.icon.icTurkey.svg(),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 14.0.h),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "T??rk Liras??",
                                            style: GoogleFonts.inter(
                                                fontSize: 12.sp, fontWeight: FontWeight.w500, color: ColorName.heBlack),
                                          ),
                                          Text(
                                            "TL",
                                            style: TextStyle(
                                              fontSize: 10.sp,
                                              color: ColorName.lightHorizonSky,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 20.0.h),
                                      child: Text(
                                        "234 ???",
                                        style: GoogleFonts.inter(
                                            fontSize: 13.sp, fontWeight: FontWeight.w700, color: ColorName.heBlack),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "T??rk liras?? yat??rmak i??in banka se??iniz.",
                            style: GoogleFonts.inter(
                              fontSize: 12.sp,
                              color: ColorName.lightHorizonSky,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 13.0.h),
                            child: Container(
                              height: 72.h,
                              width: 330.w,
                              decoration:
                                  BoxDecoration(color: ColorName.white, borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
          },
        ));
  }
}
