import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ScoreController extends GetxController {
  Map<String, int> grades = {
    "average": 0,
    "arab": 0,
    "french": 0,
    "english": 0,
    "math": 0,
    "science": 0,
    "physics": 0,
    "technology": 0,
    "algorithms": 0,
    "tic": 0,
    "db": 0,
    "sti": 0,
    "his/geo": 0,
    "philosophy": 0,
    "economics": 0,
    "management": 0,
    "sport": 0,
    "sport-specialty": 0,
  };

  RxDouble score = 0.0.obs;

//check these
  void calculateScore({required String section}) {
    switch (section) {
      case 'info':
        score.value = grades["average"]! * 4 + grades["math"]! * 1.5 + grades["algorithms"]! * 1.5 + grades["physics"]! * 0.5 + grades["sti"]! * 0.5 + grades["french"]! + grades["english"]!;
        break;
      case 'info-old':
        score.value = grades["average"]! * 4 + grades["math"]! * 1.5 + grades["algorithms"]! * 1.5 + grades["physics"]! * 0.5 + (grades["tic"]! + grades['db']!) * 0.25 + grades["french"]! + grades["english"]!;
        break;
      case 'science':
        score.value = grades["average"]! * 4 + grades["math"]! + grades["physics"]! * 1.5 + grades["science"]! * 1.5 + grades["french"]! + grades["english"]!;
        break;
      case 'technology':
        score.value = grades["average"]! * 4 + grades["technology"]! * 1.5 + grades["math"]! * 1.5 + grades["physics"]! + grades["french"]! + grades["english"]!;
        break;
      case 'math':
        score.value = grades["average"]! * 4 + grades["math"]! * 2 + grades["physics"]! * 1.5 + grades["science"]! * 0.5 + grades["french"]! + grades["english"]!;
        break;
      case 'lettres':
        score.value = grades["average"]! * 4 + grades["arab"]! * 1.5 + grades["philosophy"]! * 1.5 + grades["his/geo"]! + grades["french"]! + grades["english"]!;
        break;
      case 'ecogest':
        score.value = grades["average"]! * 4 + grades["economy"]! * 1.5 + grades["management"]! * 1.5 + grades["math"]! * 0.5 + grades["his/geo"]! * 0.5 + grades["french"]! + grades["english"]!;
        break;
      case 'sport':
        score.value = grades["average"]! * 4 + grades["science"]! * 1.5 + grades["sport-specialty"]! + grades["sport"]! * 0.5 + grades["physics"]! * 0.5 + grades["philosophy"]! * 0.5 + grades["french"]! + grades["english"]!;
        break;
      default:
        score.value = 0.0;
        break;
    }
  }
}
