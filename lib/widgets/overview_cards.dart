import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:finance_management_dashboard/widgets/notification_card.dart';
import 'package:finance_management_dashboard/widgets/text_widget.dart';
import 'package:flutter/material.dart';

enum CardType {
  positive,
  negative,
}

class OverviewCards extends StatelessWidget {
  const OverviewCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OverviewCard(
          iconData: Icons.monetization_on_outlined,
          title: 'Earnings',
          val1: '928.41',
          val2: '12.8',
          val3: '118.8',
          cardType: CardType.positive,
        ),
        SizedBox(width: 20),
        OverviewCard(
          iconData: Icons.shopping_cart_outlined,
          title: 'Spendings',
          val1: '169.43',
          val2: '3.1',
          val3: '5.2',
          cardType: CardType.negative,
        ),
        SizedBox(width: 20),
        OverviewCard(
          iconData: Icons.savings_outlined,
          title: 'Savings',
          val1: '406.27',
          val2: '8.2',
          val3: '33.3',
          cardType: CardType.positive,
        ),
        SizedBox(width: 20),
        OverviewCard(
          iconData: Icons.analytics_outlined,
          title: 'Investment',
          val1: '1854.08',
          val2: '9.2',
          val3: '78.5',
          cardType: CardType.positive,
        ),
      ],
    );
  }
}

class OverviewCard extends StatelessWidget {
  final String title;
  final IconData iconData;
  final String val1;
  final String val2;
  final String val3;
  final CardType cardType;
  const OverviewCard({
    Key? key,
    required this.title,
    required this.iconData,
    required this.val1,
    required this.val2,
    required this.val3,
    required this.cardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 140,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.whiteCardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                iconData,
                color: AppColors.greyColor,
              ),
              const SizedBox(width: 10),
              AppText(title),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              AppText(
                '\$$val1',
                size: 25,
                color: Colors.black,
              ),
              const SizedBox(width: 10),
              cardType == CardType.positive
                  ? PositiveNotificationCard(val2)
                  : NegativeNotificationCard(val2),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              cardType == CardType.positive
                  ? PositiveText(text: val3)
                  : NegativeText(text: val3),
              const AppText(' than last month'),
            ],
          ),
        ],
      ),
    );
  }
}
