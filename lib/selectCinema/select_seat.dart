import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie/config/themes/app_color.dart';
import 'package:movie/config/themes/text_style.dart';
import 'package:movie/constants/assets_path.dart';
import 'package:movie/stateLess/classic_button.dart';

import '../config/routes/routes.dart';
import '../stateLess/arrow_back_button.dart';
import '../stateLess/movie_title.dart';
import '../stf_widget/toggle_button.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<String> seatRow = ['A', 'B', 'C', 'D', 'E'];
    final List<String> seatNumber = ['1', '2', '3', '4', '5', '6'];

    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ArrowBackButton(),
          MovieTitle(),
          //seat status bar
          Padding(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildSeatStatus(
                    color: DarkTheme.darkBackground, content: 'Available'),
                buildSeatStatus(
                    color: DarkTheme.greyBackground, content: 'Booked'),
                buildSeatStatus(
                    color: DarkTheme.blueMain, content: 'Your Seat'),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: seatRow
                  .map((row) => Builder(builder: (context) {
                        return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: seatNumber.map((number) {
                              return Container(
                                margin: EdgeInsets.all(4),
                                width: 48,
                                height: 48,
                                child: ToggleButton(
                                    child: Center(
                                  child: Text(
                                    row + number,
                                    style: TxtStyle.heading3Medium,
                                  ),
                                )),
                              );
                            }).toList());
                      }))
                  .toList(),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: size.width,
            child: Text(
              'Screen',
              style: TxtStyle.heading3Medium,
            ),
          ),
          Image.asset(AssetPath.screenx2),
          Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TxtStyle.heading4,
                      ),
                      Text(
                        'VND 150.000',
                        style: TxtStyle.heading3Medium,
                      )
                    ],
                  ),
                  GradientButton(
                    gradientColor1: GradientPalette.blue1,
                    gradientColor2: GradientPalette.blue2,
                    width: size.width/3,
                    height: size.height/16,
                    child: Text('Book Ticket',style: TxtStyle.heading4,),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.checkOutMoviePage);
                    },
                  )
                ]),
          ),
        ]),
      ),
    );
  }

  Row buildSeatStatus({required Color color, required String content}) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            content,
            style: TxtStyle.heading4,
          ),
        ),
      ],
    );
  }
}
