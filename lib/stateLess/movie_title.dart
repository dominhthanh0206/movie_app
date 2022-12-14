import 'package:flutter/material.dart';

import '../config/themes/text_style.dart';

class MovieTitle extends StatelessWidget {
  const MovieTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 8, left: 24),
          child: const Text('Ralph Breaks the Internet', style: TxtStyle.heading2,),
        ),
        Container(
          margin: const EdgeInsets.only(top: 4, left: 24),
          child: const Text('FX Sudirman XXI', style: TxtStyle.heading3Light,),
        ),
      ],
    );
  }
}
