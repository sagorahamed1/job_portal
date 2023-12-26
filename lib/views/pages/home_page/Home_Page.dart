import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_portal/utils/appcolors.dart';
import 'package:job_portal/views/widgets/custom_buttom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                "Your search for the next dream job is over 🚀",
                style: TextStyle(
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 32),
              ),
              SizedBox(
                height: 20,
              ),
              CustomButton(
                  height: 56,
                  width: 336.w,
                  color: Color(0xFF5424FD),
                  onTap: () {},
                  title: "start searching"),
              SizedBox(
                height: 100,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      /// --------------------------Airbnb----------
                      _IconsButtomSection(
                        bottom: 400,
                        left: 35,
                        bgcolor: AppColors.red,
                        image: "assets/icons/logoAirbnb.svg",
                        name: "Airbnb",
                        transform: -0.2,
                      ),


                      /// --------------------------meta----------
                      _IconsButtomSection(

                        left: 200,
                        bottom: 400,
                        bgcolor: AppColors.iconsbuttomColor,
                        image: "assets/icons/meta.svg",
                        name: "Tesla",
                        transform: 0.3,
                      ),

                      /// --------------------------MIcrosoft----------
                      _IconsButtomSection(
                        bgcolor: AppColors.iconsbuttomColor,
                        bottom: 320,
                        left: -30,
                        image: "assets/icons/logoMicrosoft.svg",
                        name: "Microsoft",
                        transform: -0.3,
                      ),

                      /// --------------------------Pepsi----------
                      _IconsButtomSection(
                        bottom: 300,
                        left: 100,
                        bgcolor: AppColors.iconsbuttomColor,
                        image: "assets/icons/logoPepsi.svg",
                        name: "Pepsi",
                        transform: 0.05,
                      ),


                      /// --------------------------Tesla----------
                      _IconsButtomSection(
                        bottom: 400,
                        left: 360,
                        bgcolor: AppColors.red,
                        image: "assets/icons/logoTesla.svg",
                        name: "Tesla",
                        transform: 1.8,
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
