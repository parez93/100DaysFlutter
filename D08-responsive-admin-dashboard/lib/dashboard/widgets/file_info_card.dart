
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/dashboard/models/my_file.model.dart';

class FileInfoCard extends StatelessWidget {
  final CloudStorageInfo info;

  const FileInfoCard({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: info.color?.withOpacity(.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  info.svgSrc,
                  color: info.color,
                  size: defaultPadding,
                ),
              ),
              Icon(
                Icons.more_vert,
                color: Colors.white54,
              )
            ],
          ),
          Text('${info.title}', maxLines: 1, overflow: TextOverflow.ellipsis),
          LinearProgressIndicator(
            minHeight: 5,
            valueColor: AlwaysStoppedAnimation<Color>((info.color)!),
            color: info.color?.withOpacity(.1),
            value: info.percentage!.toDouble() / 100,
            borderRadius: BorderRadius.circular(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${info.numOfFiles} Files',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white70),
              ),
              Text(
                '${info.totalStorage}',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }
}
