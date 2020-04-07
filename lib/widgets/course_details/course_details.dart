import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({Key key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'ZiPi Internet Of Things',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 40, height: 1.9,color: Colors.white),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'This is the project of developing multi-platform Internet of Things connection management application to improve the experience performance, good solutions for smart cities, smart homes, smart products, etc.',
            style: TextStyle(fontSize: 21, height: 1.7,color: Colors.white),
          ),
        ],
      ),
    );
  }
}