import 'dart:io';

import '../char/char.dart';

class GameStart {
  List races = ["human"];
  List Jobs = ["warrior"];
  bool nameIsEmpety = false;
  bool raceIsEmpety = false;
  bool jobIsEmpety = false;
  startGame() {
    while (nameIsEmpety == false) {
      print("<================[Name]================>");
      print("please enter your name");
      String? name = stdin.readLineSync();

      if (name == null || name == "") {
        print("name is empty");
      } else {
        Character.name = name;
        nameIsEmpety = !nameIsEmpety;
      }
    }

    while (raceIsEmpety == false) {
      print("<================[Race]================>");
      print("1. human");
      print("please enter your race");
      String? race = stdin.readLineSync();
      if (race == null || race == "" || !races.contains(race)) {
        print("race is empty or race is unindentified");
      } else {
        Character.race = race;
        raceIsEmpety = !raceIsEmpety;
      }
    }

    while (jobIsEmpety == false) {
      print("<================[Job]================>");
      print("1. Warrior");
      print("please enter your jobs");
      String? job = stdin.readLineSync();
      if (job == null || job == "" || !Jobs.contains(job)) {
        print("sorry this job is unidentified");
      } else {
        Character.jobs = job;
        print(
            "hello ${Character.name}\nso you are ${Character.race}\nand your jobs is ${Character.jobs}");
        print("welcome to Barnia i hope your adventure will be awesome");
        jobIsEmpety = !jobIsEmpety;
      }
    }
  }
}
