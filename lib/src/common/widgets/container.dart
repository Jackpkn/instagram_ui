// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class GlobalContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double borderRadius;
  final BoxShape boxShape;
  final Widget child;
  final Color borderColor;
  final double borderWidth;
  const GlobalContainer({
    Key? key,
    this.height,
    this.width,
    required this.borderRadius,
    required this.boxShape,
    required this.child,
    required this.borderColor,
    required this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: borderWidth),
        borderRadius: BorderRadius.circular(borderRadius),
        shape: boxShape,
      ),
      child: child,
    );
  }
}
