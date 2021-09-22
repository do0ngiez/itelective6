import 'dart:js';

import 'package:flutter/material.dart';

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
                          image: AssetImage('assets/images/user.jpg'),
                          fit: BoxFit.fill
                        ),
                      ),
                    ),
                    Text(
                      'Choi Yena', 
                      style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      ),
                    ),
                    Text(
                      'choiyena99@gmail.com', 
                      style: TextStyle(
                      // fontSize: 22,
                      color: Colors.white,
                      ),
                    ),
                    Text(
                      '+63 911 922 9992', 
                      style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                'Your Profile', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
             onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Settings', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text(
                'Logout', 
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: (){
                Navigator.pop(context);
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