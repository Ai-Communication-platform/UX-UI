import 'package:eunbyul_s_application104/core/app_export.dart';
import 'package:eunbyul_s_application104/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';


// [get started page] 디자인 수정


class AndroidSmallOneScreen extends StatelessWidget {
  const AndroidSmallOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 645.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.centerRight, children: [
                          // 왼쪽 큰 원
                          CustomImageView(
                              imagePath: ImageConstant.imgSubtract,
                              height: 315.v,
                              width: 267.v,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 3.h, top: 80.v)),
                          // 오른쪽 아래 원
                          CustomImageView(
                              imagePath: ImageConstant.imgEllipse2,
                              height: 101.v,
                              width: 104.v,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(top: 150.v)),
                          // 오른쪽 위 원
                          CustomImageView(
                              imagePath: ImageConstant.imgSubtractRed100,
                              height: 198.v,
                              width: 170.v,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 3.v)),
                          // Get start button
                          CustomOutlinedButton(
                              width: 238.v,
                              text: "Get Start",
                              margin: EdgeInsets.only(top: 95.v),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientOnPrimaryContainerToRedDecoration,
                              onPressed: () {
                                onTapGetStart(context);
                              },
                              alignment: Alignment.topCenter),

                          Align(
                              alignment: Alignment.bottomCenter,
                              child: SizedBox(
                                  height: 467.v,
                                  width: 359.v,
                                  child: Stack(
                                      alignment: Alignment.topLeft,
                                      children: [
                                        // 이미지
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSaly24,
                                            height: 580.h,
                                            width: 370.h,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(left: 1.v, top: 3.v)),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgSmail1,
                                            height: 91.v,
                                            width: 89.v,
                                            alignment: Alignment.topLeft,
                                            margin: EdgeInsets.only(
                                                left: 61.h, top: 63.v))
                                      ])))
                        ]))))));
  }

  /// Navigates to the mainOneScreen when the action is triggered.
  onTapGetStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainOneScreen);
  }
}
