import 'package:elmutawakel/componet/componet.dart';
import 'package:flutter/material.dart';

class PostItemWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Card(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://image.freepik.com/free-photo/generic-black-suv_2227-851.jpg',
                      )),
                  height: 200,
                  width: double.infinity,
                ),
                Positioned(
                  right: 7,
                  top: 7,
                  child: Container(
                    padding: EdgeInsets.all(5),
                    color: Colors.black54,
                    child: Text(
                      '5 MAR 2020',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      Text(
                        '22',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text('5 COMMENTS'),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: buildRatingBar(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
