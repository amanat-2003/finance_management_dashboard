import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:finance_management_dashboard/widgets/drawer_card.dart';
import 'package:finance_management_dashboard/widgets/text_widget.dart';
import 'package:flutter/material.dart';


class LeftDrawer extends StatelessWidget {
  final Function(double) d;
  const LeftDrawer(this.d, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: d(15),
      ),
      decoration: const BoxDecoration(
        color: AppColors.whiteCardColor,
      ),

      // or Could have used combination of LayoutBuilder, SingleChildScrollView, ConstrainedBox, IntrinsicHeight as follows:
      // LayoutBuilder(
      //   builder: (context, constraint) {
      //     return SingleChildScrollView(
      //       child: ConstrainedBox(
      //         constraints: BoxConstraints(minHeight: constraint.maxHeight),
      //         child: IntrinsicHeight(
      //           child: Column(
      //             children: [...],
      //           ),
      //         ),
      //       ),
      //     );
      //   },
      // )

      child: CustomScrollView(slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Image.asset(
                  'assets/logo.png',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const FixedText('MENU'),
              const SizedBox(height: 10),
              const DrawerCard(
                backgroundColor: AppColors.blueColor,
                foregroundColor: AppColors.whiteCardColor,
                iconData: Icons.space_dashboard_rounded,
                text: 'Overview',
              ),
              const DrawerCard(
                text: 'Statistics',
                iconData: Icons.assessment_rounded,
              ),
              const DrawerCard(
                text: 'Savings',
                iconData: Icons.account_balance_wallet_rounded,
              ),
              const DrawerCard(
                text: 'Portfolios',
                iconData: Icons.pie_chart_rounded,
                isExpandable: true,
              ),
              const DrawerCard(
                text: 'Messages',
                iconData: Icons.mail_rounded,
                notificationCount: 13,
              ),
              const DrawerCard(
                text: 'Transactions',
                iconData: Icons.article_rounded,
              ),
              const SizedBox(
                height: 20,
              ),
              // const BlackText('GENERAL'),
              const FixedText('GENERAL'),
              const SizedBox(height: 10),
              const DrawerCard(
                text: 'Settings',
                iconData: Icons.settings_rounded,
              ),
              const DrawerCard(
                text: 'Appearances',
                iconData: Icons.image_rounded,
              ),
              const DrawerCard(
                text: 'Need Help?',
                iconData: Icons.info_rounded,
              ),
              const Spacer(),
              const DrawerCard(
                text: 'Log Out',
                foregroundColor: Colors.black,
                iconData: Icons.logout_rounded,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ]),
    );
  }
}
