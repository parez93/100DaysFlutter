import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';

class StorageInfoCard extends StatelessWidget {

  final String title, amountOfFiles;
  final IconData icon;
  final int numOfFiles;

  const StorageInfoCard({
    super.key, required this.title, required this.amountOfFiles, required this.icon, required this.numOfFiles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          border: Border.all(
              width: 2,
              color: primaryColor.withOpacity(.15)),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: Icon(icon),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '$numOfFiles Files',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              )),
          Text(amountOfFiles)
        ],
      ),
    );
  }
}
