import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("Shabbir Rajput"),
              accountEmail: Text("sabbirrajput03@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://media.licdn.com/dms/image/C4D03AQHsGuxsef22nw/profile-displayphoto-shrink_800_800/0/1639582709119?e=1680134400&v=beta&t=wAEWeVW2NsQGkibyv7xWA4ueOozNO4uTv6HbzFsdjGM"),
              )),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("sabbirrajput03@gmail.com"),
            trailing: Icon(Icons.send),
          ),
        ],),
    );
  }
}
