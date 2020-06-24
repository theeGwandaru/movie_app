
import 'package:flutter/material.dart';
import 'package:movieapp/constants.dart';
import 'package:movieapp/models/movie.dart';
import 'package:movieapp/screens/details/components/backdrop_rating.dart';
import 'package:movieapp/screens/details/components/cast_and_crew.dart';
import 'package:movieapp/screens/details/components/genres.dart';
import 'package:movieapp/screens/details/components/title_duration_and_fav_btn.dart';

class Body extends StatelessWidget {
  final Movie movie;
  const Body({Key key, this.movie}):super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          BackdropAndRating(size: size, movie: movie),
          SizedBox(height: kDefaultPadding / 2),
          TitleDurationAndFabButton(movie: movie),
          Genres(movie: movie),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: kDefaultPadding / 2,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              "Plot Summary",
              style: Theme.of(context).textTheme.headline,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              movie.plot,
              style: TextStyle(
                color: Color(0xFF737599),
              ),
            ),
          ),
          CastAndCrew(casts: movie.cast),
        ],
      )
    );
  }
}
