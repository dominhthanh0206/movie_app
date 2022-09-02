import 'package:flutter/material.dart';

import '../../config/themes/app_color.dart';
import '../../constants/assets_path.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: size.height / 3.5,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(AssetPath.teaserRalph)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    GradientPalette.black1,
                    GradientPalette.black2,
                  ])),
        ),
        Container(
          height: 200,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                GradientPalette.black2,
                GradientPalette.black1,
              ])),
        )
      ],
    );
  }
}