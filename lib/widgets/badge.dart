import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MyBadge extends StatelessWidget {
  const MyBadge({
    super.key,
    required this.value,
    required this.child,
  });

  final String value;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeContent: Text(
        value,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 11),
      ),
      position: badges.BadgePosition.topEnd(
        top: 8,
        end: 8,
      ),
      badgeAnimation: const badges.BadgeAnimation.slide(
        toAnimate: false,
      ),
      badgeStyle: badges.BadgeStyle(
        badgeColor: Theme.of(context).colorScheme.secondary,
        padding: const EdgeInsets.all(3.0),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: child,
    );
  }
}