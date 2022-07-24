import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math' as math;
import 'package:movies/controllers/Categories.dart';
import 'MoviesCard.dart';

class MovieCarousel extends StatefulWidget {
  MovieCarousel({Key? key}) : super(key: key);

  @override
  State<MovieCarousel> createState() => _MovieCarouselState();
}

class _MovieCarouselState extends State<MovieCarousel> {
  final movieController = Get.put(MoviesController());
  PageController? _pageController;
  int initialPage = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
      initialPage: initialPage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetX<MoviesController>(builder: (controller) {
      return AspectRatio(
        aspectRatio: 0.92,
        child: PageView.builder(
          physics: const ClampingScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              initialPage = value;
            });
          },
          controller: _pageController,
          itemCount: controller.movies.length,
          itemBuilder: (context, index) => buildMoviesSlider(controller, index),
        ),
      );
    });
  }

  Widget buildMoviesSlider(MoviesController controller, int index) =>
      AnimatedBuilder(
        animation: _pageController!,
        builder: (context, child) {
          double value = 0;
          if (_pageController!.position.haveDimensions) {
            value = index - _pageController!.page!.toDouble();
            value = (value * 0.038).clamp(-1, 1);
          }
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 350),
            opacity: index == initialPage ? 1 : 0.5,
            child: Transform.rotate(
                angle: math.pi * value,
                child: MovieCard(movie: controller.movies[index])),
          );
        },
      );
}
