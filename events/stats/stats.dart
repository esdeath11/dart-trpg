import '../../char/char.dart';
import '../../char/jobs/warrior.dart';
import '../../char/profile/profile.dart';
import '../../char/race/human.dart';

class Stats {
  void calculateCreateChar() {
    Profile.name = Character.name;
    Profile.race = Character.race;
    Profile.jobs = Character.jobs;
    Profile.hp = Human.hp + Warrior.hp;
    Profile.maxHp = Human.hp + Warrior.hp;
    Profile.mana = Human.mana + Warrior.mana;
    Profile.maxMana = Human.mana + Warrior.mana;
    Profile.attack = Human.attack + Warrior.attack;
    Profile.magicAttack = Human.magicAttack + Warrior.magicAttack;
    Profile.defense = Human.defense + Warrior.defense;
    Profile.speed = Human.speed + Warrior.speed;
    Profile.level = 1;
    Profile.exp = 0;
    Profile.expCap = 25;
  }
}
