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
      appBar: AppBar(
        backgroundColor: const Color(0xff430A5D),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "QuizScreen",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(color: Color(0xff430A5D)),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () {
                    return controller.resultList!.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  child: Container(
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(10),
                                    margin: const EdgeInsets.all(5),
                                    height: 750,
                                    width: MediaQuery.sizeOf(context).width,
                                    decoration: const BoxDecoration(
                                      // color: Color(0xff3C0753),
                                      borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(50),
                                          bottomLeft: Radius.circular(50),
                                          topRight: Radius.circular(50),
                                          topLeft: Radius.circular(50)),
                                    ),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width:
                                              MediaQuery.sizeOf(context).width,
                                          padding: const EdgeInsets.all(12),
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Color(0xff430A5D),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(30),
                                            ),
                                          ),
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
                                        const SizedBox(
                                          height: 100,
                                        ),
                                        Center(
                                          child: Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  controller.countData();

                                                  if (controller.index.value !=
                                                      controller
                                                              .allData.length -
                                                          1) {
                                                    controller.no.value =
                                                        controller
                                                            .allData[controller
                                                                .index.value]
                                                            .option![0];
                                                    controller.countData();
                                                    controller.index.value =
                                                        controller.index.value +
                                                            1;
                                                  } else {
                                                    Get.offAndToNamed(
                                                        "/result");
                                                  }
                                                },
                                                child: Card(
                                                  child: Container(
                                                    height: 60,
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            const Text(
                                                              "A",
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 15,
                                                            ),
                                                            Text(
                                                              "${controller.allData[controller.index.value].option![0]}",
                                                              overflow: TextOverflow.ellipsis,

                                                              style: const TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
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
                                                  if (controller.index.value !=
                                                      controller
                                                              .allData.length -
                                                          1) {
                                                    controller.no.value =
                                                        controller
                                                            .allData[controller
                                                                .index.value]
                                                            .option![1];
                                                    controller.countData();
                                                    controller.index.value =
                                                        controller.index.value +
                                                            1;
                                                  } else {
                                                    Get.offAndToNamed(
                                                        "/result");
                                                  }
                                                },
                                                child: Card(
                                                  child: Container(
                                                    height: 60,
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            const Text(
                                                              "B",
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 15,
                                                            ),
                                                            Text(
                                                              "${controller.allData[controller.index.value].option![1]}",

                                                              overflow: TextOverflow.ellipsis,

                                                              style: const TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
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
                                                  if (controller.index.value !=
                                                      controller
                                                              .allData.length -
                                                          1) {
                                                    controller.no.value =
                                                        controller
                                                            .allData[controller
                                                                .index.value]
                                                            .option![2];
                                                    controller.countData();
                                                    controller.index.value =
                                                        controller.index.value +
                                                            1;
                                                  } else {
                                                    Get.offAndToNamed(
                                                        "/result");
                                                  }
                                                },
                                                child: Card(
                                                  child: Container(
                                                    height: 60,
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            const Text(
                                                              "C",
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 15,
                                                            ),
                                                            Text(
                                                              "${controller.allData[controller.index.value].option![2]}",
                                                              overflow: TextOverflow.ellipsis,

                                                              style:
                                                                  const TextStyle(
                                                                color:
                                                                    Colors.black,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
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

                                                  if (controller.index.value !=
                                                      controller
                                                              .allData.length -
                                                          1) {
                                                    controller.no.value =
                                                        controller
                                                            .allData[controller
                                                                .index.value]
                                                            .option![3];
                                                    controller.countData();
                                                    controller.index.value =
                                                        controller.index.value +
                                                            1;
                                                  } else {
                                                    Get.offAndToNamed(
                                                        "/result");
                                                  }
                                                },
                                                child: Card(
                                                  child: Container(
                                                    height: 60,
                                                    child: Center(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets.all(
                                                                8.0),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            const Text(
                                                              "D",
                                                              style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight: FontWeight.bold,
                                                                color: Colors.black,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 15,
                                                            ),
                                                            Text(
                                                              "${controller.allData[controller.index.value].option![3]}",
                                                              overflow: TextOverflow.ellipsis,
                                                              style:
                                                                  const TextStyle(
                                                                color:
                                                                    Colors.black,
                                                                fontSize: 15,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
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
                                ),
                              ),
                            ],
                          );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
