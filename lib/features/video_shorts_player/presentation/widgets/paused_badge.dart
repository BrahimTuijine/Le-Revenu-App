import 'package:flutter/material.dart';

class PausedBadge extends StatelessWidget {
  const PausedBadge({super.key});

  @override
  Widget build(BuildContext context) => Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: .9),
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.play_arrow_rounded, size: 40, color: Colors.black87),
      );
}
