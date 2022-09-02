import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie/component/cpn_movie_detail/background_detail.dart';
import 'package:movie/config/themes/app_color.dart';
import 'package:movie/config/themes/text_style.dart';
import 'package:movie/constants/app_constants.dart';
import 'package:movie/constants/assets_path.dart';
import 'package:movie/models/cast.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/stateLess/start.dart';

import '../component/cpn_movie_detail/arrow_back.dart';
import '../component/cpn_movie_detail/cast_bar.dart';
import '../component/cpn_movie_detail/trailer_bar.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
          // scrollDirection: Axis.vertical,
          child: Stack(
        children: [
          BackGroundWidget(size: size),
          Container(
            height: size.height / 3.5,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              GradientPalette.black1,
              GradientPalette.black2,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          const ArrowBack(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, top: size.height / 4.5),
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width / 2.5,
                      child:
                          Image.asset(AssetPath.posterRalph, fit: BoxFit.cover),
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 8, bottom: 8),
                          width: size.width,
                          child: Text(
                            'Ralph Break The Internet',
                            style: TxtStyle.heading3Medium,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, bottom: 8),
                          child: Row(
                            children: const [
                              StartComponent(),
                              StartComponent(),
                              StartComponent(),
                              StartComponent(),
                              StartComponent(),
                              Text(
                                '(5.0)',
                                style: TxtStyle.heading4,
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 8, bottom: 8),
                          width: size.width,
                          child: const Text(
                            'Action & adventure, Comedy',
                            style: TxtStyle.heading4Light,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 8, bottom: 8),
                          width: size.width,
                          child: Text(
                            '1h41min',
                            style: TxtStyle.heading4Light,
                          ),
                        )
                      ],
                    ))
                  ],
                ),
              ),
              SizedBox(
                height: size.height - 50,
                child: Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 16),
                    alignment: Alignment.center,
                    width: size.width,
                    child: TabBar(
                      tabs: [
                        Tab(text: 'About Movie'),
                        Tab(text: 'Review'),
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TxtStyle.heading3,
                      unselectedLabelStyle: TxtStyle.heading3,
                      indicatorColor: DarkTheme.white,
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          buildTitle('Spynopis'),
                          Padding(
                              padding: EdgeInsets.only(left: 24),
                              child: Text(
                                AppConstant.exampleContent,
                                style: TxtStyle.heading4Light,
                              )),
                          buildTitle('Cast & Crew'),
                          CastBar(size: size),
                          buildTitle('Trailer and Song'),
                          const TrailerBar()
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: const Text('Review Page'),
                      )
                    ],
                  ))
                ]),
              )
            ],
          ),
        ],
      )),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(content, style: TxtStyle.heading2),
    );
  }
}






