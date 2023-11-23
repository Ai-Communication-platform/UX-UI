import 'package:eunbyul_s_application104/core/app_export.dart';
import 'package:eunbyul_s_application104/widgets/app_bar/appbar_title_image.dart';
import 'package:eunbyul_s_application104/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class MainOneScreen extends StatelessWidget {
  const MainOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 5.v),
              _buildAppBar(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 22.h),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgSmail2,
            ),
            Container(
              height: 72.v,
              width: 116.h,
              margin: EdgeInsets.only(
                left: 9.h,
                top: 12.v,
                bottom: 1.v,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgFont31,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      right: 21.h,
                      bottom: 25.v,
                    ),
                  ),
                  AppbarTitleImage(
                    imagePath: ImageConstant.imgFont41,
                    margin: EdgeInsets.only(top: 46.v),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }
}
