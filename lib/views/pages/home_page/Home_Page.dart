import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:job_portal/utils/appcolors.dart';
import 'package:job_portal/views/pages/job/job_page.dart';
import 'package:job_portal/views/widgets/custom_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  "Your search for the next dream job is over 🚀",textAlign: TextAlign.center,
                  style: TextStyle(
                       wordSpacing: 4,
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 34),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  height: 56,
                  width: 336.w,
                  color: Color(0xFF5424FD),
                  onTap: () {
                    Get.to(JobPage());
                  },
                  title: "start searching"),
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      /// --------------------------Airbnb----------
                      _IconsButtomSection(
                        bottom: 340,
                        left: 0,
                        bgcolor: AppColors.red,
                        image: "assets/icons/logoAirbnb.svg",
                        name: "Airbnb",
                        transform: -0.2,
                      ),


                      /// --------------------------meta----------
                      _IconsButtomSection(

                        right: 45,
                        bottom: 370,
                        bgcolor: AppColors.iconsbuttomColor,
                        image: "assets/icons/meta.svg",
                        name: "Meta",
                        transform: 0.2,
                      ),

                      /// --------------------------MIcrosoft----------
                      _IconsButtomSection(
                        bgcolor: AppColors.iconsbuttomColor,
                        bottom: 250,
                        left: -30,
                        image: "assets/icons/logoMicrosoft.svg",
                        name: "Microsoft",
                        transform: -0.3,
                      ),

                      /// --------------------------Pepsi----------
                      _IconsButtomSection(
                        bottom: 280,
                        left: 135,
                        bgcolor: AppColors.iconsbuttomColor,
                        image: "assets/icons/logoPepsi.svg",
                        name: "Pepsi",
                        transform: 0.1,
                      ),


                      /// --------------------------Tesla----------
                      _IconsButtomSection(
                        bottom: 340,
                        left: 370,
                        bgcolor: AppColors.red,
                        image: "assets/icons/logoTesla.svg",
                        name: "Tesla",
                        transform: 1.7,
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _IconsButtomSection extends StatelessWidget {
  double? top;
  double? bottom;
  double? right;
  double? left;
  double? transform;
  String? image;
  String? name;
  Color? bgcolor;
  Color? textColor;

  _IconsButtomSection(
      {super.key,
      this.right,
      this.left,
      this.bgcolor,
      this.textColor,
      this.bottom,
      this.top,
      this.transform,
      this.image,
      this.name});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      right: right,
      left: left,
      child: Transform(
          transform: Matrix4.rotationZ(transform!),
          child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                color: bgcolor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("$image"),
                  Text(
                    "$name",
                    style: TextStyle(color: AppColors.white),
                  )
                ],
              ))),
    );
  }
}
