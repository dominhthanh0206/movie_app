import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie/config/themes/app_color.dart';
import 'package:movie/config/themes/text_style.dart';
import 'package:movie/constants/assets_path.dart';
import 'package:movie/selectCinema/select_seat.dart';
import 'package:movie/stateLess/classic_button.dart';
import 'package:movie/stf_widget/Day_button.dart';
import 'package:movie/widget/time_bar.dart';

import '../stf_widget/Next_button.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height / 10,
                  child: Center(
                    child: Text(
                      'Ralph Breaks the\nInternet',
                      style: TxtStyle.heading1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 16, top: 4),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: DarkTheme.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              height: size.height / 14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: DarkTheme.white),
              ),
              child: Row(children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Select Your Contry',
                    hintStyle: TxtStyle.heading4,
                    icon: ImageIcon(
                      AssetImage(AssetPath.iconLocation),
                      color: DarkTheme.white,
                    ),
                  ),
                )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: DarkTheme.white,
                  ),
                )
              ]),
            ),
            buildTitle("Choose Date"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateButton(
                      height: size.height,
                      width: size.width,
                      weekday: 'SAT',
                      day: '21',
                      ticketSates: TicketStates.Busy),
                  DateButton(
                      height: size.height,
                      width: size.width,
                      weekday: 'SAT',
                      day: '21',
                      ticketSates: TicketStates.Active),
                  DateButton(
                      height: size.height,
                      width: size.width,
                      weekday: 'SAT',
                      day: '21',
                      ticketSates: TicketStates.Idle),
                  DateButton(
                      height: size.height,
                      width: size.width,
                      weekday: 'SAT',
                      day: '21',
                      ticketSates: TicketStates.Busy),
                ],
              ),
            ),
            buildTitle("Central Park CGV"),
            SizedBox(
              height: 10,
            ),
            TimeBar(height: size.height, width: size.width),
            SizedBox(
              height: 15,
            ),
            buildTitle("FX Sudirman XXI"),
            SizedBox(
              height: 10,
            ),
            TimeBar(height: size.height, width: size.width),
            SizedBox(
              height: 15,
            ),
            buildTitle("Kelapa Gading IMAX"),
            SizedBox(
              height: 10,
            ),
            TimeBar(height: size.height, width: size.width),
            SizedBox(
              height: 15,
            ),
            NextButton(onTap: (() {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SelectSeatPage(),));
            }),
            )
          ],
        ),
      ),
    );
  }

  Container buildTitle(String content) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Text(
          content,
          style: TxtStyle.heading2,
        ));
  }
}

