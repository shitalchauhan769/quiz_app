import 'package:flutter/material.dart';
import 'package:shital/screen/quiz/view/quiz_screen.dart';
import 'package:shital/screen/result/view/result_screen.dart';
import 'package:shital/screen/splash/view/splash_screen.dart';
import '../screen/home/view/home_screen.dart';

Map<String,WidgetBuilder>app_routes={
  "/":(c1)=>const SplashScreen(),
  "/home":(c1)=>const HomeScreen(),
  "/quiz":(c1)=>const QuizScreen(),
  "/result":(c1)=>const ResultScreen(),
};