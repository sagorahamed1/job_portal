
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/job_info.dart';
import '../../../../job_details/job_details_page.dart';
import '../../../../utils/appcolors.dart';
import 'custom_container.dart';

class JobPostList extends StatelessWidget {
  const JobPostList({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       physics: NeverScrollableScrollPhysics(),
      itemCount: CompanyInfo.companyList.length,
      itemBuilder: (context, index) {
        var companyInfo = CompanyInfo.companyList[index];
        Color bgColor = companyInfo["bgColor"];
        print("............................$bgColor}");
        Color? textColor;
        Color? jobTypeContainerColor;


        if(bgColor ==  Color(0xFF5424FD) ){
          textColor = AppColors.white;
          jobTypeContainerColor = Color(0xFF7650fd);
        }
        else if(bgColor == Color(0xFFF5001E)){
          textColor = AppColors.white;
          jobTypeContainerColor = Color(0xFFf62640);
        }else{
          textColor = Colors.black;
          jobTypeContainerColor = Color(0xFFd6a82e);
        }
        return Column(
          children: [
            SizedBox(
              width: 383,
              height: 232,
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  CustomPaint(
                    willChange: true,
                    painter: CustomContainer(bgcolor: bgColor),
                    child: Container(
                      width: 381,
                      height: 232,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 15,left: 15,top: 12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(right: 14),
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: AppColors.black
                                        ),
                                        child: Container(
                                            padding: EdgeInsets.all(10),
                                            child: SvgPicture.asset("${companyInfo["companyLogo"]}"))),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${companyInfo["jobTitle"]}",style: TextStyle(color: textColor,fontSize: 18),),
                                        Text("${companyInfo["companyName"]}",style: TextStyle(color: textColor),)
                                      ],
                                    )
                                  ],
                                ),


                                SizedBox(height: 7.5,),
                                ///
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 28,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: jobTypeContainerColor,
                                          border: Border.all(color: textColor.withAlpha(130),),
                                          borderRadius: BorderRadius.circular(24)

                                      ),
                                      child: FittedBox(
                                        fit: BoxFit.cover,
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Row(
                                              children: [
                                                Icon(Icons.location_on_outlined,color: textColor),
                                                Text("${companyInfo["location"]}",style: TextStyle(color: textColor,letterSpacing: 0.1),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 28,
                                      width: 115,
                                      decoration: BoxDecoration(
                                          color: jobTypeContainerColor,
                                          border: Border.all(color: textColor.withAlpha(130)),
                                          borderRadius: BorderRadius.circular(24)
                                      ),
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Row(
                                            children: [
                                              Icon(Icons.school_outlined,color: textColor,),
                                              Text("  ${companyInfo["jobExperience"]}",style: TextStyle(color: textColor,letterSpacing: 0.1),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),

                                    Container(
                                      height: 28,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          color: jobTypeContainerColor,
                                          border: Border.all(color: textColor.withAlpha(130)),
                                          borderRadius: BorderRadius.circular(24)
                                      ),
                                      child: Center(
                                        child: FittedBox(
                                          fit: BoxFit.cover,
                                          child: Row(
                                            children: [
                                              Icon(Icons.watch_later_outlined,color: textColor,),
                                              Text("${companyInfo["workTime"]}",style: TextStyle(color: textColor),),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 14,),

                                Text("${companyInfo["jobDetails"]}",style: TextStyle(color: textColor),),
                                SizedBox(height: 14,),
                              ],
                            ),
                          ),



                          Container(
                            padding: EdgeInsets.only(right: 15,left: 15),
                            width: double.infinity,
                            height: 48,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                    bottomRight: Radius.circular(13)
                                )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${companyInfo["postTime"]}"),
                                Text("${companyInfo["monthlySalary"]}",)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),


                  Positioned(
                    right: 0,
                    child: GestureDetector(
                      onTap: (){Get.to(JobDetailsPage(color: bgColor, companyInfo: companyInfo, jobTypeContainerColor: jobTypeContainerColor,textColor: textColor,));},
                      child: Container(
                        height: 49,
                        width: 97,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(30)),
                        child: Center(
                            child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "View ",
                                  style: TextStyle(color: AppColors.white),
                                ),

                                Icon(Icons.subdirectory_arrow_right_rounded,color: Colors.white,)
                              ],
                            )),
                      ),
                    ),
                  )
                ],
              ),
            ),


            SizedBox(height: 20,)
          ],
        );
      },
    );
  }
}



