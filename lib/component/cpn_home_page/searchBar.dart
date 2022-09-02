import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../config/themes/app_color.dart';
import '../../config/themes/text_style.dart';
import '../../constants/assets_path.dart';


class SearchBar extends StatefulWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: widget.size.height / 15,
        child: Row(children: [
          Expanded(
              child: Container(
            height: widget.size.height / 15,
            decoration: BoxDecoration(
              color: DarkTheme.darkBackground,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Row(children: [
              Padding(
                padding: EdgeInsets.only(left: 24, right: 12),
                // ignore: deprecated_member_use
                child: FaIcon(
                  FontAwesomeIcons.search,
                  color: Colors.white,
                ),
              ),
              Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Search Movie',
                          hintStyle: TxtStyle.heading3Medium,
                          border: InputBorder.none)))
            ]),
          )),
          Container(
            margin: EdgeInsets.only(left: 16),
            width: widget.size.height / 15,
            height: widget.size.height / 15,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  GradientPalette.blue1,
                  GradientPalette.blue2,
                ],
              ),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Image.asset(AssetPath.iconControl),
          )
        ]),
      ),
    );
  }
}