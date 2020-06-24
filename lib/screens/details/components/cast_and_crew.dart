import 'package:flutter/material.dart';
import 'package:movieapp/constants.dart';
import 'package:movieapp/models/movie.dart';

import 'cast_card.dart';

class CastAndCrew extends StatelessWidget {
  final List casts;

  CastAndCrew({Key key, @required this.casts}): super(key:key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Cast & Crew",
            style: Theme.of(context).textTheme.headline,
          ),
          SizedBox(height: kDefaultPadding),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) => CastCard(cast: casts[index]),
            ),
          )
        ],
      ),
    );
  }
}
