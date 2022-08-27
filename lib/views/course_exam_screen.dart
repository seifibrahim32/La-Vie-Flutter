import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/questions_model.dart';
import 'package:flutter_hackathon/views/web_views/welcome_web_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


class CourseExamScreen extends StatefulWidget{

  const CourseExamScreen({super.key});

  @override
  State<CourseExamScreen> createState() => _CourseExamScreenState();
}

class _CourseExamScreenState extends State<CourseExamScreen> {

  int questionIndex = 1;

  QuestionsChoice _questionsChoice = QuestionsChoice.two;


  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.widthConstraints().biggest
            .width >= 1366){
          return Scaffold(
              body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset('assets/web/home_screen_asset.png',
                      scale: 1.4) ,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.only(left:84.0,
                                right:118,
                                top:32,
                                bottom : 10
                            ),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/splashscreen.png',
                                  width: 121, height: 27,
                                ),
                                const SizedBox(width:133),
                                const Text('Home',
                                    style:TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                const Spacer(),
                                const Text('Shop',
                                    style:TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                const Spacer(),
                                const Text('Blog',
                                    style:TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                const Spacer(),
                                const Text('About',
                                    style:TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                const  Spacer(),
                                const Text('Community',
                                    style:TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                const Spacer(),
                                Image.asset('assets/cart_icon.png',
                                  color: Colors.black,),
                                const SizedBox(width: 28),
                                const Icon(Icons.notifications_outlined,
                                ),
                                const SizedBox(width: 23),
                                const CircleAvatar(
                                  radius:13,
                                  backgroundColor: Colors.black,
                                  backgroundImage: NetworkImage(
                                      'https://www.nme.com/wp-content/'
                                          'uploads/2022/02/rihanna-2000x1270-1.jpg'
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height:31),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 382.0),
                          child: Column(
                            children : [
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
                                child: Text('\u2022 What is the user experience?',
                                    style : TextStyle(
                                        color: Color(0xFF3A3A3A),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20
                                    )
                                ),
                              ),
                              const SizedBox(height:49),
                              Column(
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
                                                          'A. To move them into shade areas',
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
                                                        value: QuestionsChoice.one, groupValue: _questionsChoice,
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
                                                          'B. To add more sunlight',

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
                                                          'C. To let them exposed to fresh air',
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
                                                          'D. To reduce watering',
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
                              const SizedBox(height:48),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children:[
                                    questionIndex!=1?
                                    MaterialButton(
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
                                    ):SizedBox(
                                      width:172,
                                      height:43,
                                    ),
                                    SizedBox(width:16),
                                    MaterialButton(
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
                                          });
                                        }
                                        else {
                                          Navigator.pushAndRemoveUntil(
                                              context,
                                              MaterialPageRoute(builder:
                                                  (BuildContext context) =>
                                                        WelcomeWebScreen('True')),
                                              ModalRoute.withName('/')
                                          );
                                        }
                                      },
                                      child: SizedBox(
                                        child:  Text(questionIndex==10?'Finish':'Next',
                                            style:const TextStyle(
                                                fontSize: 16
                                            )),
                                      ),)

                                  ]
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                    Align(
                      heightFactor: 2,
                      alignment: Alignment.bottomLeft,
                      child: Image.asset('assets/web/background_left_questions.png',
                          scale: 1.4) ,
                    ),
                  ],
                ),
              )
          );
        }
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
                    Column(
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
      },
    );
  }
}