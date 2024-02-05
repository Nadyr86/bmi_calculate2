import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.child,
    required this.bgColor,
    super.key,
  });

  final Widget child;
  final Color bgColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(Radius.circular(18)),
        ),
        child: child,
      ),
    );
  }
}
