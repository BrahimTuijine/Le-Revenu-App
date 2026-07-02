import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.icon,
    required this.tooltip,
    required this.onTap,
    super.key,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Tooltip(
        message: tooltip,
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: .35),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 21, color: Colors.white),
          ),
        ),
      );
}
