import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'game/bubble_game.dart';

void main() {
  runApp(
    GameWidget(
      game: BubbleGame(),
    ),
  );
}
