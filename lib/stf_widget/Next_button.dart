import 'package:flutter/material.dart';
import 'package:movie/constants/assets_path.dart';

import '../config/themes/app_color.dart';

class NextButton extends StatelessWidget {
  VoidCallback onTap;
  NextButton({
    Key? key,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ElevatedButton(
        onPressed: onTap,
        child: const ImageIcon(
          AssetImage(
            AssetPath.iconNext,
          ),
          color: DarkTheme.white,
          size: 30,
        ),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          padding: EdgeInsets.all(12),
          primary: GradientPalette.blue1
        ),
      ),
    );
  }
}
