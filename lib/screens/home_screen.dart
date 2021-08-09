
import 'package:elmutawakel/widget/appbar_widget.dart';
import 'package:elmutawakel/widget/post_item_widget.dart';
import 'package:elmutawakel/widget/profile_widget.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(),


      body: CustomScrollView(
        slivers: [
          AppBarWidget(scaffoldKey),
          SliverList(
            delegate: SliverChildListDelegate([
              ProfileWidget(),
              ListView.separated(
                padding: EdgeInsets.only(top: 5),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index)=>PostItemWidget(),
                  separatorBuilder:(context, index)=>SizedBox(height: 20,),
                  itemCount: 5),

            ]),
          )
        ],
      ),
    );
  }
}
