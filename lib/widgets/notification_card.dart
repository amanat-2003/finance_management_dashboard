import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:finance_management_dashboard/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final double scaleFactor;
  final IconData? iconData;
  const NotificationCard({
    Key? key,
    this.backgroundColor = Colors.red,
    this.foregroundColor = Colors.white,
    this.scaleFactor = 1,
    this.iconData,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15 * scaleFactor),
        color: backgroundColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 6 * scaleFactor,
        vertical: 4 * scaleFactor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (iconData != null)
            Icon(
              iconData,
              color: foregroundColor,
              size: 13,
            ),
          AppText(
            text,
            color: foregroundColor,
            size: 10 * scaleFactor,
          ),
        ],
      ),
    );
  }
}

class PositiveNotificationCard extends StatelessWidget {
  final String text;
  const PositiveNotificationCard(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationCard(
      text: '$text%',
      iconData: Icons.arrow_upward_rounded,
      foregroundColor: AppColors.positiveNotificationCardForegroundColor,
      backgroundColor: AppColors.positiveNotificationCardBackgroundColor,
    );
  }
}

class NegativeNotificationCard extends StatelessWidget {
  final String text;
  const NegativeNotificationCard(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NotificationCard(
      text: '$text%',
      iconData: Icons.arrow_downward_rounded,
      foregroundColor: AppColors.negativeNotificationCardForegroundColor,
      backgroundColor: AppColors.negativeNotificationCardBackgroundColor,
    );
  }
}
