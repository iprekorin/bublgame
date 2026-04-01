import 'package:flame/components.dart';
import 'bubble.dart';

class BubbleGrid extends Component {
  final List<Bubble> bubbles = [];

  @override
  Future<void> onLoad() async {
    generateInitialGrid();
  }

  void generateInitialGrid() {
    for (int row = 0; row < 5; row++) {
      for (int col = 0; col < 8; col++) {
        final bubble = Bubble(
          Vector2(40 + col * 40, 40 + row * 40),
        );
        bubbles.add(bubble);
        parent?.add(bubble);
      }
    }
  }
