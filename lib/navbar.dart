import 'package:flutter/material.dart';

class  NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(accountName: Text('Username'), accountEmail: Text('myemail@g.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.network(
                'https://alrigh.com/wp-content/uploads/2020/06/10-Midoriya-Izuku-profile-picture-1024x1018.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ))
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: NetworkImage('https://cdn.shopify.com/s/files/1/1056/3342/products/mountain-mural-wallpaper-4.jpg?v=1560882775'),
                fit: BoxFit.cover,
              )
            ),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favourites'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Order Requests'),
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '7',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ))
                ),
                ),
            ),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Privacy Policy'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => null,
          ),
        ],
      )
    );
  }
}