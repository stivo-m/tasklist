import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasklist/app/domain/core/objects/assets.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 15),
            SvgPicture.asset(
              AppAssets.noDataSVGImage,
              height: MediaQuery.of(context).size.height * 0.45,
            ),
            const SizedBox(height: 10),
            Text(
              AppStrings.noTasksYetTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              AppStrings.noTasksYetDescription,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
