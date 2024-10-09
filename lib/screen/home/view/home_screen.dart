import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
              color: Color(0xff430A5D),
            ),
          ),
          Container(
            height: 500,
            width: MediaQuery.sizeOf(context).width,
            decoration: const BoxDecoration(
                color: Color(0xff3C0753),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100),),),
            child: const Center(
              child: Image(
                image: AssetImage("assets/image/quiz1.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap:() {
                  controller.getQuizAPI();
                  Get.toNamed("/quiz");
                } ,
                child: Container(
                    height: 60,
                    width: 200,
                    decoration:  const BoxDecoration(
                      color: Color(0xff3C0753),
                      borderRadius: BorderRadius.all(Radius.circular(20),),
                    ),
                  child: const Center(child: Text("START",style: TextStyle(fontSize: 20,color: Colors.white,),),),

                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
