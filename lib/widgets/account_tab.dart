import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class AccountTab extends StatefulWidget {
  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {

  Material tabItems(IconData icon,String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14,
      shadowColor: Colors.black38,
      borderRadius: BorderRadius.circular(24),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //text
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(heading,style: TextStyle(color: Colors.blue, //new Color(color)
                      fontSize: 20.0)),
                    ),
                  ),
                  //icon
                  Material(
                    color: Colors.blue, //new Color(color)
                    borderRadius: BorderRadius.circular(24),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Icon(icon,color: Colors.white,
                      size:30,)
                      ),
                  )
                ],
              ),
            ],
            ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        children: <Widget>[
          tabItems(Icons.graphic_eq,"Total Views",0000),
          tabItems(Icons.bookmark,"Bookmark",0000),
          tabItems(Icons.notifications,"Notifications",0000),
          tabItems(Icons.attach_email,"Email",0000),
          tabItems(Icons.settings,"Settings",0000),
          tabItems(Icons.message,"Messages",0000),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
          StaggeredTile.extent(1, 130),
        ],
      )
    );
  }
}