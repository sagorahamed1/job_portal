import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_portal/utils/appcolors.dart';

class JobPage extends StatefulWidget {
   JobPage({super.key});

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  List<bool> isCheckedList = List.generate(5, (index) => false);
  List ss = ["Discover", "Saved", "Applied", "Closed", "Discarded"];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.blackmain,
        title: Text("Hello Kabira 👋",style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500, color: AppColors.white),),
        actions: [
          Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.yellow,
              ),
              child: SvgPicture.asset("assets/icons/profile.svg"))
        ],
      ),


      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text("Find Jobs",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 32,color: AppColors.white),),


            Container(
              height: 100,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                // itemCount: isCheckedList.length,
                itemCount: ss.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        /// --------------------------go to next page if this page have
                        print("======================================>${ss[index]}");
                        // isCheckedList[index] = !isCheckedList[index];
                      });
                    },
                    child: Row(
                      children: [
                        Container(
                         height: 43,
                          width: 89,
                          decoration: BoxDecoration(
                            color: isCheckedList[index] ? Colors.green : Colors.blue,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Center(
                            child: Text(
                              "${ss[index]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                          width: 10,
                          color: AppColors.white,
                        ),



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
                      decoration: const InputDecoration(
                        filled: true,
                         fillColor: Colors.white12,
                       // border: InputBorder.none,
                       border: OutlineInputBorder(
                         borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                       ),
                        prefixIcon: Icon(Icons.search,color: AppColors.white,),
                        hintText: "Search for company or roles...",
                        hintStyle: TextStyle(color: AppColors.white)
                        // label: Text("Search for company or roles...",style: TextStyle(color: AppColors.white),),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: SvgPicture.asset("assets/icons/filter.svg",height: 15,width: 15,),
                  ),
                ),

              ],
            ),



            SizedBox(height: 150,),




        Stack(
          clipBehavior: Clip.none,
          children: [
            Center(
              child: CustomPaint(
                painter: RPSCustomPainter(),
                child: Container(
                  width: 400.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  // Your additional child widgets go here
                ),
              ),
            ),

            Positioned(
              right: -3,
              child: Container(
                  height: 55,
                  width: 100,
                 decoration: BoxDecoration(
                   color: Colors.white12,
                   borderRadius: BorderRadius.circular(30)
                 ),
                  child: Center(child: Text("View",style: TextStyle(color: AppColors.white),))),
            )
          ],
        ),

          ],
        ),
      ),
    );
  }
}




class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color =Color(0xFF5424FD)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_1 = Path();
    path_1.moveTo(size.width*0.6875000,size.height*0.0142857);
    path_1.cubicTo(size.width*0.7300000,size.height*0.0664286,size.width*0.6904167,size.height*0.2410714,size.width*0.7200000,size.height*0.3228571);
    path_1.cubicTo(size.width*0.7650000,size.height*0.3885714,size.width*0.9575000,size.height*0.3146429,size.width*0.9783333,size.height*0.3885714);
    path_1.quadraticBezierTo(size.width*1.0095833,size.height*0.4075000,size.width,size.height*0.7157143);
    path_1.lineTo(size.width*1.0008333,size.height*1.0014286);
    path_1.lineTo(0,size.height);
    path_1.lineTo(size.width*0.0008333,size.height*0.0014286);
    path_1.lineTo(size.width*0.6033333,0);
    path_1.quadraticBezierTo(size.width*0.6654167,size.height*-0.0003571,size.width*0.6875000,size.height*0.0142857);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);


    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_1, paint_stroke_1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
