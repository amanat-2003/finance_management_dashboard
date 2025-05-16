import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:finance_management_dashboard/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Function(double) d;
  const NavBar(
    this.d, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: d(20)),
      height: 90,
      color: AppColors.whiteCardColor,
      child: Row(
        children: [
          const Expanded(
            child: FixedText(
              'Dashboard',
              color: Colors.black,
              size: 23,
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: d(300),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                    prefixIcon: const Icon(Icons.search_rounded),
                    prefixIconColor: AppColors.greyColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(d(10.0)),
                      borderSide: BorderSide.none,
                    ),
                    hintText: 'Search here',
                    hintStyle: const TextStyle(color: AppColors.greyColor),
                    filled: true,
                    fillColor: AppColors.backgroundGreyColor,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: AppColors.backgroundGreyColor,
                  borderRadius: BorderRadius.circular(d(10)),
                ),
                child: const Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Positioned(
                        left: 25,
                        top: 15,
                        child: CircleAvatar(
                          radius: 6,
                          backgroundColor: AppColors.backgroundGreyColor,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 4,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
                width: 40,
                child: VerticalDivider(
                  width: 1,
                  color: AppColors.dividerColor,
                ),
              ),
              const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/person.jpg'),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: d(190),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Amanat Singh',
                      color: Colors.black,
                      size: 14,
                    ),
                    SizedBox(height: 8),
                    AppText(
                      'amanatsingh@anamihub.com',
                      letterSpacing: 0.8,
                      color: AppColors.greyColor,
                      size: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
