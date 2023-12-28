import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_portal/utils/appcolors.dart';
import 'widgets/job_postList.dart';




class JobPage extends StatefulWidget {
  JobPage({Key? key}) : super(key: key);

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {

  String selectedButtom = "Discover";
  List topbuttonList = ["Discover", "Saved", "Applied", "Closed", "Discarded"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.blackmain,
        title: Text(
          "  Hello Kabira 👋",
          style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.white),
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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 1.3,
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Find Jobs",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      color: AppColors.white),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: topbuttonList.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedButtom = topbuttonList[index];
                            print("======================================>${topbuttonList[index]}");
                          });
                        },
                        child: Row(
                          children: [
                            Container(
                              height: 43,
                              width: 89,
                              decoration: BoxDecoration(
                                color: selectedButtom == topbuttonList[index]
                                    ? Color(0xFF5424FD)
                                    :  Color(0xFFd5d5d5),
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Center(
                                child: Text(
                                  "${topbuttonList[index]}",
                                  style: TextStyle(
                                    color: selectedButtom == topbuttonList[index] ? Colors.white : Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),

                            if(index < topbuttonList.length -1 )
                              Container(
                                  height: 5,
                                  width: 10,
                                  color:  Colors.white
                              )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        padding: EdgeInsets.only(right: 10),
                        height: 44,
                        child: TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white12,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: AppColors.white,
                            ),
                            hintText: "Search for company or roles...",
                            hintStyle: TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        padding: EdgeInsets.all(11),
                        height: 44,
                        width: 44,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(20)),
                        child: SvgPicture.asset(
                          "assets/icons/filter.svg",
                          height: 15,
                          width: 15,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 21,
                ),

                Expanded(
                  flex: 1 ,
                  child: JobPostList(),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
