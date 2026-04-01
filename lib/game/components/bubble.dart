import 'package:flame/components.dart';
import 'dart:math';
import 'package:flutter/material.dart';

class Bubble extends CircleComponent {
  Vector2 velocity = Vector2.zero();
  bool isMoving = false;

  Bubble(Vector2 position)
      : super(
          radius: 12,
          position: position,
          paint: Paint()..color = Colors.primaries[Random().nextInt(Colors.primaries.length)],
        );

  void shoot(double angle) {
    velocity = Vector2(cos(angle), sin(angle)) * 300;
    isMoving = true;
  }

  @override
  void update(double dt) {
    super.update(dt);

    if (!isMoving) return;

    position += velocity * dt;

    if (position.x <= 0 || position.x >= 400) {
      velocity.x *= -1;
    }

    if (position.y <= 0) {
      isMoving = false;
    }
  }
}
