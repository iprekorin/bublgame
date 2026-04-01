import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'components/shooter.dart';
import 'components/grid.dart';

class BubbleGame extends FlameGame with TapDetector, PanDetector {
  late Shooter shooter;
  late BubbleGrid grid;

  @override
  Future<void> onLoad() async {
    shooter = Shooter();
    grid = BubbleGrid();

    add(grid);
    add(shooter);
  }

  @override
  void onPanUpdate(DragUpdateInfo info) {
    shooter.aim(info.eventPosition.global);
  }

  @override
  void onTapDown(TapDownInfo info) {
    shooter.shoot();
  }
}
