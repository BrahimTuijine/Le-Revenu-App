import 'package:flutter/material.dart';

import '../../../../core/extensions/context.dart';
import '../../../../core/extensions/num.dart';

class SwipeHint extends StatefulWidget {
  const SwipeHint({super.key});

  @override
  State<SwipeHint> createState() => _SwipeHintState();
}

class _SwipeHintState extends State<SwipeHint>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 1300),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              final t = Curves.easeOut.transform(_controller.value);
              return Opacity(
                opacity: 1 - t,
                child: Transform.translate(
                    offset: Offset(0, -18 * t), child: child),
              );
            },
            child: const Icon(
              Icons.keyboard_double_arrow_up_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
          2.fh.bh,
          Text(
            'Glissez pour changer de vidéo',
            style: context.h7.copyWith(
              fontSize: 12,
              color: Colors.white.withValues(alpha: .85),
            ),
          ),
        ],
      );
}
