import 'package:flappy_bird_clone/game/assets.dart';
import 'package:flappy_bird_clone/game/flappy_bird_game.dart';
import 'package:flutter/material.dart';

class MainMenuScreen extends StatelessWidget {
  final FlappyBirdGame game;
  static const String id = 'mainMenu';

  const MainMenuScreen({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return GestureDetector(
      onTap: () {
        game.overlays.remove('mainMenu');
        game.resumeEngine();
      },
      child: Scaffold(
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.menu),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset(Assets.message),
        ),
      ),
    );
  }
}
