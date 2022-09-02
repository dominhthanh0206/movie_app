import 'package:flutter/material.dart';

import '../../config/themes/text_style.dart';
import '../../constants/assets_path.dart';


class HomeHeader extends StatefulWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<HomeHeader> createState() => _HomeHeaderState();
}

class _HomeHeaderState extends State<HomeHeader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 64, left: 24, right: 24),
      child: SizedBox(
        height: widget.size.height / 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Find Your Best\nMovie', style: TxtStyle.heading1SemiBold,),
            CircleAvatar(
              radius: widget.size.height/24,
              backgroundImage: AssetImage(AssetPath.iconProfile),

            ),
          ]),
      ),
    );
  }
}