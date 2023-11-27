import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    super.key,
    required this.pieChartSelectionData,
  });

  final List<PieChartSectionData> pieChartSelectionData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(children: [
        PieChart(
          PieChartData(
              sections: pieChartSelectionData,
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 70),
        ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: defaultPadding,),
              Text(
                '29.1',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'of 128GB',
              ),
            ],
          ),
        )
      ]),
    );
  }
}
