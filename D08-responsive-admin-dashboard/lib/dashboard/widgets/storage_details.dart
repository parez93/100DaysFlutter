import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/dashboard/widgets/chart.dart';
import 'package:responsive_admin_dashboard/dashboard/widgets/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
    required this.pieChartSelectionData,
  });

  final List<PieChartSectionData> pieChartSelectionData;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Storage details',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(pieChartSelectionData: pieChartSelectionData),
          StorageInfoCard(title: 'Documents Files',amountOfFiles: '1.3GB',icon: Icons.file_copy,numOfFiles: 1329),
          StorageInfoCard(title: 'Media Files',amountOfFiles: '15.3GB',icon: Icons.ondemand_video,numOfFiles: 1328),
          StorageInfoCard(title: 'Other Files',amountOfFiles: '1.3GB',icon: Icons.folder,numOfFiles: 1328),
          StorageInfoCard(title: 'Unknown',amountOfFiles: '1.3GB',icon: Icons.question_mark,numOfFiles: 140),
        ],
      ),
    );
  }
}
