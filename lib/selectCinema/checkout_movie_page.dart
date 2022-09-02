import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie/config/themes/app_color.dart';
import 'package:movie/config/themes/text_style.dart';

class CheckOutMoviePage extends StatelessWidget {
  final String content;
  final double height;
  const CheckOutMoviePage(
      {Key? key, required this.content, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [TopBarCard(height: 48, content: 'Checkout Movie'),],
        ),
      ),
    );
  }
}

class TopBarCard extends StatelessWidget {
  const TopBarCard({
    Key? key,
    required this.height,
    required this.content,
  }) : super(key: key);

  final double height;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: height,
          child: Center(
            child: Text(
              content,
              textAlign: TextAlign.center,
              style: TxtStyle.heading2,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: DarkTheme.white,
            ),
          ),
        )
      ],
    );
  }
}
