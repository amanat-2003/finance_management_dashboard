// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:finance_management_dashboard/widgets/notification_card.dart';
import 'package:flutter/material.dart';

import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:finance_management_dashboard/widgets/text_widget.dart';

class DrawerCard extends StatelessWidget {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final String text;
  final IconData iconData;
  final bool isExpandable;
  final int notificationCount;

  const DrawerCard({
    Key? key,
    this.backgroundColor,
    this.foregroundColor,
    required this.text,
    required this.iconData,
    this.isExpandable = false,
    this.notificationCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor ?? AppColors.whiteCardColor,
      ),
      child: Row(
        children: [
          const SizedBox(width: 10),
          Icon(
            iconData,
            color: foregroundColor ?? AppColors.greyColor,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: AppText(
              text,
              color: foregroundColor ?? AppColors.greyColor,
            ),
          ),
          if (notificationCount != 0) const SizedBox(width: 10),
          if (notificationCount != 0)
            NotificationCard(text: notificationCount.toString()),
          if (isExpandable) const Spacer(),
          if (isExpandable)
            Icon(
              Icons.expand_more_rounded,
              color: foregroundColor ?? AppColors.greyColor,
            ),
          if (isExpandable) const SizedBox(width: 10),
        ],
      ),
    );
  }
}

