import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:job_portal/utils/appcolors.dart';

class JobDetailsPage extends StatelessWidget {
  final Map companyInfo;
  final Color color;
  final Color? jobTypeContainerColor;
  final Color? textColor;

  const JobDetailsPage(
      {super.key,
      required this.color,
      this.jobTypeContainerColor,
      required this.companyInfo,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blackmain,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.white,
            )),
        title: Text(
          "Job Details",
          style: TextStyle(color: AppColors.white),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20),
              height: 32,
              width: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Color(0xFFFCC636),
              ),
              child: Icon(Icons.person))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              Container(
                height: 180,
                width: 382,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            color: color,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24),
                            )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    height: 48,
                                    width: 48,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: AppColors.black),
                                    child: Container(
                                        padding: EdgeInsets.all(10),
                                        child: SvgPicture.asset(
                                            "${companyInfo["companyLogo"]}"))),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${companyInfo["jobTitle"]}",
                                      style: TextStyle(color: textColor),
                                    ),
                                    Text(
                                      "${companyInfo["companyName"]}",
                                      style: TextStyle(color: textColor),
                                    )
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: 28,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: jobTypeContainerColor,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Center(
                                    child: Text(
                                      "${companyInfo["location"]}",
                                      style: TextStyle(color: textColor),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 28,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: jobTypeContainerColor,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Center(
                                    child: Text(
                                      "${companyInfo["jobExperience"]}",
                                      style: TextStyle(color: textColor),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 28,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: jobTypeContainerColor,
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(24)),
                                  child: Center(
                                    child: Text(
                                      "${companyInfo["workTime"]}",
                                      style: TextStyle(color: textColor),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(24),
                              bottomRight: Radius.circular(24),
                            )),
                        child: Container(
                          margin: EdgeInsets.only(top: 5, right: 15, left: 20),
                          width: double.infinity,
                          height: 59,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(13),
                                  bottomRight: Radius.circular(13))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("${companyInfo["postTime"]}"),
                              Text(
                                "${companyInfo["monthlySalary"]}",
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              _allDetails_info(
                infoTitle: "job Description",
                 details: companyInfo["jobDescription"],
                height: 188,
                weight: 382,
                icon: Icon(Icons.edit)
              ),
        
        
              SizedBox(
                height: 30,
              ),
              _allDetails_info(
                infoTitle: "Skills & Requirements",
                  details: companyInfo["skillsAndRequirements"],
                  height: 214,
                  weight: 382,
                  icon: Icon(Icons.check_circle_outline_sharp)
              ),


              SizedBox(
                height: 30,
              ),
              _allDetails_info(
                  infoTitle: "Your Role",
                  details: companyInfo["yourRole"],
                  height: 280,
                  weight: 382,
                  icon: Icon(Icons.person)
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _allDetails_info extends StatelessWidget {
  _allDetails_info(
      {super.key,
        required  this.infoTitle,
      required this.details,
      this.height,
      this.weight,
      this.icon});

  String infoTitle;
  final  details;
  double? height;
  double? weight;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: height,
      width: weight,
      decoration: BoxDecoration(
        color: Color(0xFF2b2b2b),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 10),
                  height: 35,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xFF404040),
                      borderRadius: BorderRadius.circular(5)),
                  child: icon,),
              Text(
                infoTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              )
            ],
          ),
          Spacer(),
          Text(
            "$details",
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
