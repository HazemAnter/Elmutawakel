import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const AppBarWidget(this.scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 8,
        ),
        child: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
            size: 35,
          ),
        ),
      ),
      expandedHeight: 90,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 3),
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Colors.white,
                width: .1,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 70, right: 30),
                  child: Row(
                    children: [
                      Image(
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://image.freepik.com/free-psd/creative-smoke-text-effect_23-2148998519.jpg',
                        ),
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 25,
                          )),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          border: Border.all(
                            color: Colors.white,
                            width: .2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 4,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                size: 15,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: Colors.amber,
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'CART = 600.00\$',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'OUR CUSTOMERSERVICES',
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
