import 'char/profile/profile.dart';
import 'events/game_start.dart';
import 'events/main/main_menu.dart';

void main() async {
  GameStart().startGame();
  MainMenu().menu();
}
