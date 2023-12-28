
import 'package:flutter/material.dart';

class CustomContainer extends CustomPainter{
  final Color bgcolor;

  CustomContainer({required this.bgcolor});


  @override
  void paint(Canvas canvas, Size size,) {
    Paint paint_fill_0 = Paint()

      ..color = bgcolor
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;





    Path path_0 = Path();
    path_0.moveTo(size.width*0.2725000,size.height*0.0085714);
    path_0.lineTo(size.width*0.5916667,size.height*0.0071429);
    path_0.lineTo(size.width*0.6191667,size.height*0.0071429);
    path_0.lineTo(size.width*0.6400000,size.height*0.0085714);
    path_0.lineTo(size.width*0.6541667,size.height*0.0185714);
    path_0.lineTo(size.width*0.6625000,size.height*0.0300000);
    path_0.lineTo(size.width*0.6666667,size.height*0.0442857);
    path_0.lineTo(size.width*0.6708333,size.height*0.0657143);
    path_0.lineTo(size.width*0.6758333,size.height*0.0971429);
    path_0.lineTo(size.width*0.6800000,size.height*0.1300000);
    path_0.lineTo(size.width*0.6850000,size.height*0.1614286);
    path_0.lineTo(size.width*0.6933333,size.height*0.1857143);
    path_0.lineTo(size.width*0.7083333,size.height*0.2200000);
    path_0.lineTo(size.width*0.7325000,size.height*0.2400000);
    path_0.lineTo(size.width*0.7541667,size.height*0.2471429);
    path_0.lineTo(size.width*0.7750000,size.height*0.2514286);
    path_0.lineTo(size.width*0.8125000,size.height*0.2514286);
    path_0.lineTo(size.width*0.8933333,size.height*0.2514286);
    path_0.lineTo(size.width*0.9308333,size.height*0.2514286);
    path_0.lineTo(size.width*0.9533333,size.height*0.2514286);
    path_0.lineTo(size.width*0.9733333,size.height*0.2600000);
    path_0.lineTo(size.width*0.9850000,size.height*0.2800000);
    path_0.lineTo(size.width*0.9925000,size.height*0.2985714);
    path_0.lineTo(size.width*0.9975000,size.height*0.3200000);
    path_0.lineTo(size.width,size.height*0.9128571);
    path_0.lineTo(size.width*0.9950000,size.height*0.9357143);
    path_0.lineTo(size.width*0.9891667,size.height*0.9528571);
    path_0.lineTo(size.width*0.9825000,size.height*0.9685714);
    path_0.lineTo(size.width*0.9708333,size.height*0.9842857);
    path_0.lineTo(size.width*0.9508333,size.height*0.9928571);
    path_0.lineTo(size.width*0.0541667,size.height*0.9928571);
    path_0.lineTo(size.width*0.0366667,size.height*0.9828571);
    path_0.lineTo(size.width*0.0250000,size.height*0.9742857);
    path_0.lineTo(size.width*0.0175000,size.height*0.9642857);
    path_0.lineTo(size.width*0.0083333,size.height*0.9471429);
    path_0.lineTo(size.width*-0.0008333,size.height*0.9185714);
    path_0.lineTo(size.width*0.0016667,size.height*0.0828571);
    path_0.lineTo(size.width*0.0083333,size.height*0.0571429);
    path_0.lineTo(size.width*0.0150000,size.height*0.0385714);
    path_0.lineTo(size.width*0.0208333,size.height*0.0314286);
    path_0.lineTo(size.width*0.0291667,size.height*0.0171429);
    path_0.lineTo(size.width*0.0433333,size.height*0.0057143);
    path_0.lineTo(size.width*0.0800000,size.height*0.0057143);


    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1
    Paint paint_stroke_0 = Paint()
    // ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
