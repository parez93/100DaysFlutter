import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/dashboard/models/recent_file.model.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                horizontalMargin: 0,
                columnSpacing: defaultPadding,
                columns: [
                  DataColumn(label: Text('File name')),
                  DataColumn(label: Text('Date')),
                  DataColumn(label: Text('Size')),
                ],
                rows: List.generate(
                    demoRecentFiles.length,
                        (index) => recentFileDataRow(
                        demoRecentFiles[index]))),
          )
        ],
      ),
    );
  }

  DataRow recentFileDataRow(RecentFile recentFile) {
    return DataRow(
      cells: [
        DataCell(Row(
          children: [
            Container(
              padding: EdgeInsets.all(defaultPadding / 5),
              child: Icon(recentFile.icon, size: 18),
              decoration: BoxDecoration(
                  color: recentFile.color,
                  borderRadius: BorderRadius.circular(3)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text('${recentFile.title}'),
            ),
          ],
        )),
        DataCell(Text('${recentFile.date}')),
        DataCell(Text('${recentFile.size}')),
      ],
    );
  }

}
