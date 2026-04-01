import 'package:flame/components.dart';
import 'bubble.dart';
import 'dart:math';

class Shooter extends PositionComponent {
  double angle = -pi / 2;
  Bubble? currentBubble;

  @override
  Future<void> onLoad() async {
    position = Vector2(200, 600);
    spawnBubble();
  }

  void aim(Vector2 target) {
    angle = atan2(target.y - position.y, target.x - position.x);
  }

  void shoot() {
    if (currentBubble == null) return;

    currentBubble!.shoot(angle);
    parent?.add(currentBubble!);
    spawnBubble();
  }

  void spawnBubble() {
    currentBubble = Bubble(position.clone());
  }
}
