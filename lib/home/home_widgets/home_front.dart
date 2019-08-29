import 'package:flutter/material.dart';
import 'package:flutter_devfest/config/index.dart';
import 'package:flutter_devfest/universal/image_card.dart';
import 'package:flutter_devfest/utils/devfest.dart';

class HomeFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(
                img: ConfigBloc().darkModeOn
                    ? Devfest.banner_dark
                    : Devfest.banner_light),
          ],
        ),
      ),
    );
  }
}
