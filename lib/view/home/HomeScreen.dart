import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies/MoviesApi.dart';
import 'package:movies/constants.dart';
import 'package:movies/controllers/Categories.dart';
import 'package:movies/loading_widget.dart';
import 'package:movies/view/home/widgets/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/menu.svg"),
          padding: const EdgeInsets.only(left: kDefaultPadding),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            padding: const EdgeInsets.only(right: kDefaultPadding),
            onPressed: () {},
          ),
        ]);
  }
}
