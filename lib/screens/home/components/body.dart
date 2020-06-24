import 'package:flutter/material.dart';
import 'package:flutter_svg/Svg.dart';

import 'package:movieapp/components/genre_card.dart';
import 'package:movieapp/models/movie.dart';
import 'package:movieapp/constants.dart';

import 'categories.dart';
import 'genres.dart';
import 'movie_card.dart';
import 'movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[CategoryList(), Genres(), SizedBox(height: kDefaultPadding), MovieCarousel()],
      )
    );
  }
}
