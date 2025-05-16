import 'package:finance_management_dashboard/utils/app_colors.dart';
import 'package:finance_management_dashboard/widgets/text_widget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraph extends StatelessWidget {
  const BarGraph({super.key});

  List<Color> get colorsList {
    List<Color> ans = [];
    for (int i = 0; i < 25; i++) {
      ans.add(AppColors.blueColor);
      ans.add(AppColors.blueColor);
      ans.add(AppColors.blueColor);
      ans.add(AppColors.lightBlueStripColor);
    }
    return ans;
  }

  Widget getBottomTitles(double value, TitleMeta meta) {
    String text = '';
    switch (value) {
      case 1:
        text = 'Jan';
        break;
      case 2:
        text = 'Feb';
        break;
      case 3:
        text = 'Mar';
        break;
      case 4:
        text = 'Apr';
        break;
      case 5:
        text = 'Mei';
        break;
      case 6:
        text = 'Jun';
        break;
      default:
        text = '';
    }
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AppText(
        text,
        size: 11,
      ),
    );
  }

  Widget getLeftTitles(double value, TitleMeta meta) {
    String text = '';
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 100:
        text = '100';
        break;
      case 200:
        text = '200';
        break;
      case 300:
        text = '300';
        break;
      case 400:
        text = '400';
        break;
      case 500:
        text = '500';
        break;
      case 600:
        text = '600';
        break;
      case 700:
        text = '700';
        break;
      case 800:
        text = '800';
        break;
      case 900:
        text = '900';
        break;
      case 1000:
        text = '1K';
        break;
      default:
        text = '';
    }
    return AppText(
      '\$$text',
      size: 11,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        maxY: 1001,
        minY: -1,
        borderData: FlBorderData(show: false),
        gridData: const FlGridData(
          drawVerticalLine: false,
        ),
        titlesData: FlTitlesData(
          show: true,
          topTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          rightTitles: const AxisTitles(
            sideTitles: SideTitles(showTitles: false),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getBottomTitles,
              reservedSize: 30,
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: getLeftTitles,
              interval: 200,
              reservedSize: 55,
            ),
          ),
        ),
        barTouchData: BarTouchData(
          handleBuiltInTouches: true,
          touchTooltipData: BarTouchTooltipData(
            tooltipPadding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            fitInsideHorizontally: true,
            tooltipBgColor: AppColors.toolTipBgColor,
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              var title = '';
              if (rodIndex == 0) {
                title = 'Earning';
              } else {
                title = 'Spending';
              }
              return BarTooltipItem(
                '$title\n\n',
                const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  height: 0.8,
                ),
                textAlign: TextAlign.left,
                children: [
                  TextSpan(
                    text: '\$${rod.toY.toStringAsFixed(1)}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      height: 0.8,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        alignment: BarChartAlignment.spaceBetween,
        barGroups: [
          BarChartGroupData(
            x: 1,
            // barsSpace: 10,
            barRods: [
              BarChartRodData(
                toY: 751.9,

                // color: AppColors.blueColor,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: colorsList,
                  transform: GradientRotation(-3.14/4),
                  stops: List.generate(100, (index) => 0.01 * index),
                  // tileMode: TileMode.repeated,
                ),
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
              BarChartRodData(
                toY: 372.2,
                color: AppColors.lightBlueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 847.6,
                color: AppColors.blueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
              BarChartRodData(
                toY: 583.3,
                color: AppColors.lightBlueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 405.7,
                color: AppColors.blueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
              BarChartRodData(
                toY: 174.1,
                color: AppColors.lightBlueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
            ],
          ),
          BarChartGroupData(
            x: 4,
            barRods: [
              BarChartRodData(
                toY: 736.4,
                color: AppColors.blueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
              BarChartRodData(
                toY: 389.9,
                color: AppColors.lightBlueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
            ],
          ),
          BarChartGroupData(
            x: 5,
            barRods: [
              BarChartRodData(
                toY: 977.2,
                color: AppColors.blueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
              BarChartRodData(
                toY: 690.0,
                color: AppColors.lightBlueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
            ],
          ),
          BarChartGroupData(
            x: 6,
            barRods: [
              BarChartRodData(
                toY: 820.5,
                color: AppColors.blueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
              BarChartRodData(
                toY: 711.1,
                color: AppColors.lightBlueColor,
                width: 30,
                borderRadius: BorderRadius.circular(7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
