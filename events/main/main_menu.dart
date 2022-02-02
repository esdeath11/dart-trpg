import '../../char/profile/profile.dart';

class MainMenu {
  void menu() {
    print("<================[Status]================>");
    print("welcome ${Profile.name}");
    print("hp : ${Profile.hp} / ${Profile.maxHp}");
    print("mana : ${Profile.mana} / ${Profile.maxMana}");
    print("exp : ${Profile.exp} / ${Profile.expCap}");

    print("<================[Menu]================>");
    print("1. Adventure\n2. shop\n3. profile");
  }
}
