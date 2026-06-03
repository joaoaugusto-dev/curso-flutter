import 'package:flutter/material.dart';

class ThemeToggleButton extends StatelessWidget {
  final bool isDark;
  final VoidCallback onToggle;

  const ThemeToggleButton({super.key, required this.isDark, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: isDark ? Colors.grey[800] : Colors.amber[600],
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))],
        ),
        child: Center(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 500),
            transitionBuilder: (child, anim) {
              final rotate = Tween(begin: 0.75, end: 1.0).animate(anim);
              return RotationTransition(turns: rotate, child: ScaleTransition(scale: anim, child: child));
            },
            child: isDark
                ? Icon(Icons.nights_stay, key: ValueKey('moon'), color: Colors.white)
                : Icon(Icons.wb_sunny, key: ValueKey('sun'), color: Colors.white),
          ),
        ),
      ),
    );
  }
}
