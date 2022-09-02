import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../config/themes/app_color.dart';

class StartComponent extends StatelessWidget {
  const StartComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4),
      child: FaIcon(
        FontAwesomeIcons.solidStar,
        color: DarkTheme.yellow,
        size: 10,
      ),
    );
  }
}