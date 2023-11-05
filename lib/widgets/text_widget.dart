// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:finance_management_dashboard/utils/app_colors.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double height;
  final FontWeight fontWeight;
  final double letterSpacing;
  const AppText(
    this.text, {
    Key? key,
    this.color = AppColors.greyColor,
    this.letterSpacing = 1.3,
    this.height = 1.0,
    this.size = 13,
    this.fontWeight = FontWeight.w600,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      minFontSize: 10.0,
      maxLines: 1,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        letterSpacing: letterSpacing,
        height: height,
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

class FixedText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final double height;
  final FontWeight fontWeight;
  final double letterSpacing;
  const FixedText(
    this.text, {
    Key? key,
    this.color = Colors.black,
    this.letterSpacing = 1.2,
    this.height = 1.0,
    this.size = 11,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        letterSpacing: letterSpacing,
        height: height,
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

class PositiveText extends StatelessWidget {
  final String text;
  const PositiveText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppText(
      '+\$$text',
      color: AppColors.positiveNotificationCardForegroundColor,
      fontWeight: FontWeight.w600,
    );
  }
}

class NegativeText extends StatelessWidget {
  final String text;
  const NegativeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppText(
      '-\$$text',
      color: AppColors.negativeNotificationCardBackgroundColor,
      fontWeight: FontWeight.w600,
    );
  }
}
