import 'package:elmutawakel/componet/componet.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 180,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 140,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://image.freepik.com/free-photo/emotional-bearded-male-has-surprised-facial-expression-astonished-look-dressed-white-shirt-with-red-braces-points-with-index-finger-upper-right-corner_273609-16001.jpg'),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 43,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              'https://image.freepik.com/free-photo/photo-astounded-bearded-male-with-stylish-haircut-keeps-hands-both-cheeks-looks-surprisingly-with-shock-opens-mouth-widely-dressed-denim-shirt-poses-against-pink-wall_273609-15876.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 13,
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            buildButton('HOME'),
                            SizedBox(
                              width: 9,
                            ),
                            buildButton('ABOUT'),
                            SizedBox(
                              width: 9,
                            ),
                            buildButton('CALL US')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 15, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  'ELMUTAWAKEL',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 18,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "AT CAIRO EGYPT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white54),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
