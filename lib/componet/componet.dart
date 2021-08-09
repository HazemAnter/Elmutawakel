import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

Container buildButton(
    String text,
    ) {
  return Container(
width: 67,
    height: 25,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
    ),
    child: MaterialButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    ),
  );
}
RatingBar buildRatingBar() {
  return RatingBar.builder(
    itemSize: 11,
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
    itemBuilder: (context, _) => Icon(
      Icons.star,
      color: Colors.amber,
    ),
    onRatingUpdate: (rating) {
      print(rating);
    },
  );
}