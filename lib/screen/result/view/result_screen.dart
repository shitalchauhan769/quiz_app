import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home/controller/home_controller.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff430A5D),
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   title: const Text(
      //     "QuizResultScreen",
      //     style: TextStyle(color: Colors.white),
      //   ),
      // ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(color: Color(0xff430A5D)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(5),
                      height: 600,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: const BoxDecoration(
                        color: Color(0xff3C0753),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(image: AssetImage("assets/image/img.png"),height: 100,width: 100,fit: BoxFit.cover,),
                            const SizedBox(height: 20,),
                            Center(
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Color(0xff430A5D),
                                  shape: BoxShape.circle,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "${controller.point.value}/${controller.allData.length}",
                                    style: const TextStyle(
                                        fontSize: 17, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            const Center(
                              child: Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Text(
                                  "Congratulation, you've Completed quiz!",
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 17),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20,),
                            Container(child:TextButton(
                              onPressed: () {
                                controller.point.value=0;
                                controller.index.value=0;
                                controller.allData.value=[];
                                Get.offAllNamed('/home');
                            }, child: const Text("Explore more"),),)
                          ],
                        ),
                      ),
                    ),
                  ),

                  // const Spacer(),
                  // InkWell(
                  //   onTap: () {
                  //     controller.countData();
                  //     controller.optionChange(controller.index.value);
                  //     if (controller.index.value == 19) {
                  //       Get.toNamed("/result");
                  //       controller.index.value = 0;
                  //     }
                  //   },
                  //   child: Align(
                  //     alignment: Alignment.bottomCenter,
                  //     child: Container(
                  //       height: 70,
                  //       width: MediaQuery.sizeOf(context).width,
                  //       decoration: const BoxDecoration(
                  //         color: Color(0xff3C0753),
                  //       ),
                  //       child: const Center(
                  //           child: Text(
                  //         "Next",
                  //         style: TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 20,
                  //             fontWeight: FontWeight.bold),
                  //       ),),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//  Center(
//             child: Text("${controller.point.value}/${controller.quizList.length}",style: const TextStyle(
//               color: Colors.black,
//               fontSize: 40
//             ),),
//           ),
//           const Text("Your Score ......!!!!!!!!!",style: TextStyle(
//             color: Colors.black, fontSize: 20),),
//           const SizedBox(height: 180,),
//           InkWell(
//             onTap: () {
//               controller.point.value=0;
//               controller.index.value=0;
//               controller.quizList.value =[];
//               Get.offAllNamed('home');
//             },
//               child: Image.asset("assets/image/replay.png",height: 100,width: 100,fit: BoxFit.cover,))
