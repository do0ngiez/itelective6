import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:itelective6/services/firebase_authentication.dart';
import 'package:itelective6/views/signin/login_ui.dart';
import 'package:itelective6/views/admin/createitem.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget> [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              color: Colors.black54,
              child: Center(
                child: Column(
                  children: <Widget> [
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30, bottom: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(Firebase_Authentication().getCurrentUser(context).photoUrl),
                          fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text(
                      Firebase_Authentication().getCurrentUser(context).displayName,
                      style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      ),
                    ),
                    Text(
                      Firebase_Authentication().getCurrentUser(context).email,
                      style: TextStyle(
                      // fontSize: 22,
                      color: Colors.white,
                      ),
                    ),
                    // Text(
                    //   '+63 911 922 9992', 
                    //   style: TextStyle(
                    //   fontSize: 12,
                    //   color: Colors.white,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.solidUser),
              title: Text(
                'Profile', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
             onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.shoppingBag),
              title: Text(
                'Orders', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
             onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.solidHeart),
              title: Text(
                'Favorites', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
             onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.inbox),
              title: Text(
                'Inbox', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
             onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.pen),
              title: Text(
                'Register an Item', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
             onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateItem()));
              },
            ),
            Divider(),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.userCog),
              title: Text(
                'Account Settings', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.signOutAlt, color: Colors.red,),
              title: Text(
                'Sign out', 
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
              onTap: () async {
                // Navigator.pop(context);
                Firebase_Authentication().logOut(context).whenComplete(() {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (dcontext) => const LoginView()
                    ), (route) => false
                  );
                });
              },
            ),
          ],
        )
        // ListView(  
        //   padding: EdgeInsets.zero,
        //   children: [
        //     const DrawerHeader(
        //       decoration: BoxDecoration(
        //         color: Colors.black45,
        //       ),
        //       child: Text('Drawer Header'),
        //     ),
        //     ListTile(
        //       title: const Text('Item 1'),
        //       onTap: () {
        //         // Update the state of the app.
        //         // ...
        //       Navigator.pop(context);
        //       },
        //     ),
        //     ListTile(
        //       title: const Text('Item 2'),
        //       onTap: () {
        //         // Update the state of the app.
        //         // ...
        //         Navigator.pop(context);
        //       },
        //     ),
        //   ],
        // ),
      );
  }
}