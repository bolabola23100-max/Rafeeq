import 'package:rafeeq/core/styles/colors.dart';
import 'package:flutter/material.dart';

class AuthBackgroundDecoration extends StatelessWidget {
  const AuthBackgroundDecoration({
    super.key,
    this.paddingBottom = 0,
    this.paddingRight = 0,
    this.paddingTop = 0,
    this.paddingLeft = 0,
    this.borderRadiusBottomRight = 0,
    this.borderRadiusBottomLeft = 0,
    this.borderRadiusTopRight = 0,
    this.borderRadiusTopLeft = 0,
  });

  final double paddingBottom;
  final double paddingRight;
  final double paddingTop;
  final double paddingLeft;
  final double borderRadiusBottomRight;
  final double borderRadiusBottomLeft;
  final double borderRadiusTopRight;
  final double borderRadiusTopLeft;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: paddingBottom,
        right: paddingRight,
        top: paddingTop,
        left: paddingLeft,
      ),
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(borderRadiusBottomRight),
            bottomLeft: Radius.circular(borderRadiusBottomLeft),
            topRight: Radius.circular(borderRadiusTopRight),
            topLeft: Radius.circular(borderRadiusTopLeft),
          ),
          color: AppColors.primaryColor.withValues(alpha: 0.5),
        ),
      ),
    );
  }
}
