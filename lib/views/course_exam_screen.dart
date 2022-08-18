import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/questions_model.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


class CourseExamScreen extends StatefulWidget{

  const CourseExamScreen({super.key});

  @override
  State<CourseExamScreen> createState() => _CourseExamScreenState();
}

class _CourseExamScreenState extends State<CourseExamScreen> with SingleTickerProviderStateMixin {

  int questionIndex = 1;

  QuestionsChoice _questionsChoice = QuestionsChoice.two;

  late AnimationController controller;
  late Animation<Offset> offset;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    offset =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0.0, 1.0))
            .animate(controller);
  }
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right:36
          ),
          child: Column(
            children: [
              const SizedBox(height:31),
              Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children:    [
                    const Text('Question',
                      style: TextStyle(
                          color: Color(0xFF3A3A3A),
                          fontWeight: FontWeight.w500,
                          fontSize: 36
                      ),),
                    const SizedBox(
                        width:7
                    ),
                    Text(questionIndex.toString(),
                      style: const TextStyle(
                          color: Colors.greenAccent,
                          fontWeight: FontWeight.w500,
                          fontSize: 36
                      ),
                    ),
                    const Text('/10',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14
                      ),)
                  ]
              ),
              const SizedBox(height:40),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('What is the user experience?',
                style : TextStyle(
                    color: Color(0xFF3A3A3A),
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                )
                ),
              ),
              const SizedBox(height:49),
              SlideTransition(
                
                position: offset,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    GestureDetector(
                      onTap :(){
                        setState(() {
                          _questionsChoice  = QuestionsChoice.one;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 10
                            ,bottom: 9),
                          decoration : BoxDecoration(
                              border: Border.all(
                                color: Colors.greenAccent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left:14.92,right:14
                              ),
                              child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 2,
                                      child: Text(
                                          'The user experience is how the developer '
                                              'feels about a user.',
                                          style :TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500
                                          )),
                                    ),
                                    Transform.scale(
                                      scale: 1.2,
                                      child: Radio(
                                        activeColor: Colors.greenAccent,
                                        groupValue : _questionsChoice,
                                        onChanged: (value) {
                                          setState(() {
                                            _questionsChoice  = value!;
                                          });
                                        },
                                        value: QuestionsChoice.one,
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height:39),
                    GestureDetector(
                      onTap :(){
                        setState(() {
                          _questionsChoice  = QuestionsChoice.two;
                        });
                      },
                      child: Container(
                          decoration : BoxDecoration(
                              border: Border.all(
                                color: Colors.greenAccent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left:14.92,top: 10
                                  ,bottom: 10,right:14
                              ),
                              child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 4,
                                      child: Text(
                                          'The user experience is how the user '
                                              'feels about interacting with or '
                                              'experiencing a product.',

                                          style :TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500
                                          )),
                                    ),
                                    Transform.scale(
                                      scale: 1.2,
                                      child: Radio(
                                        activeColor: Colors.greenAccent,
                                        onChanged: (value) {
                                          setState(() {
                                            _questionsChoice  = value!;
                                          });
                                        },
                                        value: QuestionsChoice.two, groupValue: _questionsChoice,
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height:40),
                    GestureDetector(
                      onTap :(){
                        setState(() {
                          _questionsChoice  = QuestionsChoice.three;
                        });
                      },
                      child: Container(
                          decoration : BoxDecoration(
                              border: Border.all(
                                color: Colors.greenAccent,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left:14.92,top: 10
                                  ,bottom: 9,right:14
                              ),
                              child: Row(
                                  children: [
                                    const Expanded(
                                      flex: 4,
                                      child: Text(
                                          'The user experience is the '
                                              'attitude the UX designer '
                                              'has about a product.',
                                          style : TextStyle(
                                              color: Colors.black,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500
                                          )),
                                    ),
                                    Transform.scale(
                                      scale: 1.2,
                                      child: Radio(
                                        activeColor: Colors.greenAccent,
                                        onChanged: (value) {
                                          setState(() {
                                            _questionsChoice  = value!;
                                          });
                                        },
                                        value: QuestionsChoice.three, groupValue: _questionsChoice,
                                      ),
                                    )
                                  ]
                              ),
                            ),
                          )
                      ),
                    ),
                  ]
                ),
              ),
              const SizedBox(height:91),
              Row(
                children:[
                  questionIndex!=1?
                  Expanded(
                    flex:2,
                    child: MaterialButton(
                      height: 43,
                      minWidth: 172,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color: Color(0xFF1ABC00)
                        ),
                          borderRadius:
                          BorderRadius.all(
                              Radius.circular(5.0)
                          )
                      ),
                      textColor: const Color(0xFF1ABC00),
                      elevation: 0,
                      color: Colors.white,
                      onPressed: () {
                        if(questionIndex > 1){
                          setState((){
                            questionIndex--;
                          });
                        }
                      },
                      child: const SizedBox(
                        child: Text('Back',
                            style:TextStyle(
                                fontSize: 16
                            )),
                      ),
                    ),
                  ):const Expanded(
                    child: SizedBox(
                      width:172,
                      height:43,
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex:2,
                    child: MaterialButton(
                      height: 43,
                      minWidth: 172,
                      shape: const RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.all(Radius.circular(5.0))
                      ),
                      textColor:Colors.white,
                      elevation: 0,
                      color: const Color(0xFF1ABC00),
                      onPressed: () {
                        if(questionIndex != 10) {
                          setState(() {
                            questionIndex++;
                            switch (controller.status) {
                              case AnimationStatus.completed:
                                controller.forward();
                                break;
                              case AnimationStatus.dismissed:
                                controller.reverse();
                                break;
                              default:
                            }
                          });
                        }
                      },
                      child: SizedBox(
                        child:  Text(questionIndex==10?'Finish':'Next',
                            style:const TextStyle(
                                fontSize: 16
                            )),
                      ),),
                  )

                ]
              )
            ],
          ),
        ),
      )
    );
  }
}