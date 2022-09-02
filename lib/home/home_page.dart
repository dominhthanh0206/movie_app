import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie/component/cpn_home_page/categoryBar.dart';
import 'package:movie/component/cpn_home_page/comingsoon.dart';
import 'package:movie/component/cpn_home_page/slider.dart';

import 'package:movie/config/themes/app_color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie/config/themes/text_style.dart';
import 'package:movie/constants/assets_path.dart';
import 'package:movie/models/movie.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../component/cpn_home_page/header.dart';
import '../component/cpn_home_page/promo.dart';
import '../component/cpn_home_page/searchBar.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          HomeHeader(size: size),
          //search bar
          SearchBar(size: size),
          //category bar
          CategoryBar(size: size),
          //tilte
          buildTilte('Now Playing'),
          //slider
          SliderBar(size: size),
          buildTilte('Coming Soon'),
          ComingSoon(),
          buildTilte('Promo'),
          Promo(size: size)
        ]),
      ),
    );
  }

  Padding buildTilte(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}

