import 'package:flutter/material.dart';

import '../../config/themes/app_color.dart';
import '../../constants/assets_path.dart';
import '../../models/movie.dart';

class TrailerBar extends StatelessWidget {
  const TrailerBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0]
            .trailers
            .map((e) => Builder(builder: ((context) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 12, right: 12),
                    child: Stack(
                      children: [
                        Container(
                          height: 160,
                          width: 260,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(e),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 160,
                          width: 260,
                          decoration: BoxDecoration(
                              color: Colors.black12),
                        ),
                        GestureDetector(
                          onTap: (){
                            //play something
                          },
                          child: SizedBox(
                            height: 160,
                            width: 260,
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 56),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      DarkTheme.blueMain),
                              child: const ImageIcon(
                                AssetImage(
                                    AssetPath.iconPlay),
                                color: DarkTheme.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                })))
            .toList(),
      ),
    );
  }
}