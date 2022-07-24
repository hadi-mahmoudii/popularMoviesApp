import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:movies/controllers/Categories.dart';
import 'package:movies/loading_widget.dart';
import 'package:movies/view/home/widgets/Categories.dart';
import 'Genres_Card.dart';
import 'MoviesCard.dart';
import 'Movies_Carousel.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CategoryList(),
          const Genres(),
           MovieCarousel(),
        ],
      ),
    );
  }
}

