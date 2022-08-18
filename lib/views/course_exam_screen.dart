import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class CourseExamScreen extends StatefulWidget{

  const CourseExamScreen({super.key});

  @override
  State<CourseExamScreen> createState() => _CourseExamScreenState();
}

class _CourseExamScreenState extends State<CourseExamScreen> {

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Course Exam',
          style : TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500
          )
        )
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right:36
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height:31),
            Row(
                textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children:  const [
                Text('Question',
                style: TextStyle(
                  color: Color(0xFF3A3A3A),
                  fontWeight: FontWeight.w500,
                  fontSize: 36
                ),),
                SizedBox(width:7),
                Text('1',
                  style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.w500,
                      fontSize: 36
                  ),
                ),
                Text('/10',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 14
                  ),)
              ]
            ),
            const SizedBox(height:40),
            const Text('What is the user experience?',
            style : TextStyle(
                color: Color(0xFF3A3A3A),
                fontWeight: FontWeight.w600,
                fontSize: 20
            )
            ),
            const SizedBox(height:49),
            GestureDetector(
              child: Container(
                  decoration : BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width:360,
                  height:55,
                  child: Row()
              ),
            ),
            const SizedBox(height:39),
            GestureDetector(
              child: Container(
                  decoration : BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width:360,
                  height:55,
                  child: Row()
              ),
            ),
            const SizedBox(height:40),
            GestureDetector(
              child: Container(
                  decoration : BoxDecoration(
                      border: Border.all(
                        color: Colors.greenAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  width:360,
                  height:55,
                  child: Row()
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[]
            )
          ],
        ),
      )
    );
  }
}