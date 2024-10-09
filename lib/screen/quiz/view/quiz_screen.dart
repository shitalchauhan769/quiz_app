import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shital/screen/home/controller/home_controller.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff430A5D),
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   title: const Text(
      //     "QuizScreen",
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
              Obx(
                () {
                  return controller.resultList!.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(5),
                              height: 800,
                              width: MediaQuery.sizeOf(context).width,
                              decoration: const BoxDecoration(
                                color: Color(0xff3C0753),
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                    topRight: Radius.circular(50),
                                    topLeft: Radius.circular(50)),
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: const EdgeInsets.all(20),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.rectangle,
                                          color: Color(0xff430A5D),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "question ${controller.index.value + 1}/20",
                                              style: const TextStyle(
                                                  fontSize: 17,
                                                  color: Colors.white),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "${controller.resultList![controller.index.value].question}",
                                              style: const TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 17),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 100,
                                  ),
                                  Center(
                                    child: Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            controller.countData();
                                            // if (controller.index.value == 19) {
                                            //   Get.toNamed("/result");
                                            //   controller.index.value = 0;
                                            //
                                            // }
                                            if (controller.index.value !=
                                                controller.allData.length - 1) {
                                              controller.no.value = controller
                                                  .allData[controller.index.value]
                                                  .option![0];
                                              controller.countData();
                                              controller.index.value=controller.index.value +1;
                                            } else {
                                              Get.offAndToNamed("/result");
                                            }
                                          },
                                          child: Container(
                                            width:
                                                MediaQuery.sizeOf(context).width,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xff430A5D),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    const Text(
                                                      "A",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      "${controller.allData[controller.index.value].option![0]}",
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.countData();

                                            // if (controller.index.value == 19) {
                                            //   Get.toNamed("/result");
                                            //   controller.index.value = 0;
                                            //
                                            // }
                                            if (controller.index.value !=
                                                controller.allData.length - 1) {
                                              controller.no.value = controller
                                                  .allData[controller.index.value]
                                                  .option![1];
                                              controller.countData();
                                              controller.index.value=controller.index.value +1;
                                            } else {
                                              Get.offAndToNamed("/result");
                                            }
                                            // if (controller.index.value !=
                                            //     controller.quizList.length - 1) {
                                            //   controller.selected = controller
                                            //       .quizList[controller.index.value].option![1];
                                            //   controller.result();
                                            //   controller.time.value = 20;
                                            //   controller.index.value = controller.index.value + 1;
                                            // } else {
                                            //   Get.offAllNamed('result');
                                            // }
                                          },
                                          child: Container(
                                            width:
                                                MediaQuery.sizeOf(context).width,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xff430A5D),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    const Text(
                                                      "B",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      "${controller.allData[controller.index.value].option![1]}",
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.countData();
                                            // if (controller.index.value == 19) {
                                            //   Get.toNamed("/result");
                                            //   controller.index.value = 0;
                                            //
                                            // }
                                            if (controller.index.value !=
                                                controller.allData.length - 1) {
                                              controller.no.value = controller
                                                  .allData[controller.index.value]
                                                  .option![2];
                                              controller.countData();
                                              controller.index.value=controller.index.value +1;
                                            } else {
                                              Get.offAndToNamed("/result");
                                            }
                                          },
                                          child: Container(
                                            width:
                                                MediaQuery.sizeOf(context).width,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xff430A5D),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    const Text(
                                                      "C",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      "${controller.allData[controller.index.value].option![2]}",
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.countData();
                                            // if (controller.index.value == 19) {
                                            //   Get.toNamed("/result");
                                            //   controller.index.value = 0;
                                            // }
                                            if (controller.index.value !=
                                                controller.allData.length - 1) {
                                              controller.no.value = controller
                                                  .allData[controller.index.value]
                                                  .option![3];
                                              controller.countData();
                                              controller.index.value=controller.index.value +1;
                                            } else {
                                              Get.offAndToNamed("/result");
                                            }
                                          },
                                          child: Container(
                                            width:
                                                MediaQuery.sizeOf(context).width,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xff430A5D),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    const Text(
                                                      "D",
                                                      style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                      "${controller.allData[controller.index.value].option![3]}",
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
                        );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
