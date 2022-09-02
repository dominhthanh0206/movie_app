import 'package:flutter/material.dart';
import 'package:movie/config/themes/app_color.dart';
import 'package:movie/config/themes/text_style.dart';

enum TicketStates { Idle, Busy, Active }

class DateButton extends StatefulWidget {
  final double height;
  final double width;
  final String weekday;
  final String day;
  final TicketStates ticketSates;
  const DateButton(
      {Key? key,
      required this.height,
      required this.width,
      required this.weekday,
      required this.day,
      required this.ticketSates})
      : super(key: key);

  @override
  State<DateButton> createState() => _DateButtonState();
}

class _DateButtonState extends State<DateButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: widget.height / 7.5,
        width: widget.width / 5,
        decoration: widget.ticketSates == TicketStates.Active
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                gradient: LinearGradient(
                    colors: [GradientPalette.blue1, GradientPalette.blue2]),
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: widget.ticketSates == TicketStates.Idle
                    ? DarkTheme.greyBackground
                    : DarkTheme.darkBackground),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.weekday,
              style: TxtStyle.heading3Medium,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.day,
              style: TxtStyle.heading3Medium,
            )
          ],
        ),
      ),
    );
  }
}
