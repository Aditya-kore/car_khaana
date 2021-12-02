import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



class AccountTab extends StatelessWidget {

  Material tabItems(IconData icon,String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Colors.black38,
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
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
                      child: Text(heading,style: TextStyle(color: Colors.blue.shade700,
                      fontSize: 20.0)),
                    ),
                  ),
                  //icon
                  Material(
                    color: Colors.blue.shade700,
                    borderRadius: BorderRadius.circular(24.0),
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
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
    var dWidth = MediaQuery.of(context).size.width;
    var dHeight = MediaQuery.of(context).size.height;

    var dPadding = MediaQuery.of(context).padding;
    var dSafeHeight = dHeight - dPadding.top - dPadding.bottom;

    return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: StaggeredGridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 20.0,
                padding: EdgeInsets.symmetric(horizontal: 16,vertical: 8),
                children: <Widget>[
                  tabItems(Icons.favorite,"Favourite",0000),
                  tabItems(Icons.bookmark,"Bookmark",0000),
                  tabItems(Icons.notifications,"Notifications",0000),
                  tabItems(Icons.attach_email,"Email",0000),
                  tabItems(Icons.settings,"Settings",0000),
                  tabItems(Icons.message,"Messages",0000),
                ],
                staggeredTiles: [
                  StaggeredTile.extent(1, dHeight*0.22),
                  StaggeredTile.extent(1, dHeight*0.22),
                  StaggeredTile.extent(1, dHeight*0.22),
                  StaggeredTile.extent(1, dHeight*0.22),
                  StaggeredTile.extent(1, dHeight*0.22),
                  StaggeredTile.extent(1, dHeight*0.22),
                ],
              ),
            ),
          ],
        ),
    );
  }
}