import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie/home/movie_detail_page.dart';

import '../../config/themes/app_color.dart';
import '../../config/themes/text_style.dart';
import '../../models/movie.dart';
import '../../stateLess/start.dart';


class SliderBar extends StatelessWidget {
  const SliderBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: movies
            .map((e) => Builder(builder: (context) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MovieDetailPage()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: size.width,
                          padding:
                              const EdgeInsets.only(left: 10, bottom: 24),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(e.backgroundImg))),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                GradientPalette.black1,
                                GradientPalette.black2
                              ])),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                            Container(
                              width: size.width,
                              padding:
                                  const EdgeInsets.only(bottom: 8, left: 8),
                              child: Text(
                                e.title,
                                style: TxtStyle.heading2,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 8, bottom: 8),
                              child: Row(children: [
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                StartComponent(),
                                Text('(5.0)', style: TxtStyle.heading4,)
                              ]),
                            )
                          ]),
                        ),
                      ],
                    ),
                  );
                }))
            .toList(),
        options: CarouselOptions(autoPlay: true, enlargeCenterPage: true));
  }
}