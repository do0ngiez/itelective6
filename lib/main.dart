import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:itelective6/models/reg_users.dart';
import 'package:itelective6/services/firebase_authentication.dart';
import 'package:itelective6/views/admin/home_ui.dart';
import 'package:itelective6/views/signin/login_ui.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        Provider(
          create: (_) => Firebase_Authentication(),
        ),
        StreamProvider(
          initialData: RegUsers(),
          create: (context) => context.read<Firebase_Authentication>().getUser,
        )
      ],
      child: const MyApp(), 
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITElective6',
      home: Consumer<RegUsers>(
        builder: (context, user, __) {
          if (user.uid == "") {
            return const LoginView();
          } else {
            return const Home();
          }
        }
      ),
    );
  }
}

///Page
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           if (constraints.maxWidth > 1400) {
//             return _buildWideContainers(context);
//           } else {
//             return _buildNormalContainer(context);
//           }
//         },
//       ),
//     );
//   }
// }

// Widget _buildNormalContainer(context) {
//   return Scaffold(
//     body: ListView(
//       children: <Widget>[
//         /////LEFT PORTION
//         Expanded(
//             flex: 2,
//             child: Container(
//                 color: Colors.grey[300],
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 130, top: 20),
//                       child: Image.network(
//                         'assets/assets/images/nike.png',
//                         width: 200,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       width: 210,
//                       child: Text(
//                         'Welcome',
//                         style: const TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 43,
//                             fontFamily: 'FuturaBold'),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       width: 240,
//                       child: Text(
//                         'to The Nike User Area',
//                         style: const TextStyle(
//                             fontSize: 43, fontFamily: 'FuturaBold'),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       width: 190,
//                       child: Text(
//                         'To request an account, just call us',
//                         style: const TextStyle(
//                             color: Colors.black54,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 150, top: 40),
//                       child: Text(
//                         '+245 04 166 0355',
//                         style: const TextStyle(
//                             fontFamily: 'FuturaBold',
//                             fontSize: 25,
//                             decoration: TextDecoration.underline,
//                             decorationColor: Colors.red,
//                             decorationThickness: 2),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       child: Text(
//                         '+347 42 390 2456',
//                         style: const TextStyle(
//                             fontFamily: 'FuturaBold',
//                             fontSize: 25,
//                             decoration: TextDecoration.underline,
//                             decorationColor: Colors.red,
//                             decorationThickness: 2),
//                       ),
//                     ),
//                     Container(
//                         margin: EdgeInsets.only(left: 140, top: 15),
//                         child: Row(children: [
//                           Image.asset(
//                             'images/fb.png',
//                             width: 37,
//                           ),
//                           Image.asset(
//                             'images/twitter.png',
//                             width: 26,
//                           ),
//                           Image.asset(
//                             'images/linkedin.png',
//                             width: 50,
//                           ),
//                         ])),
//                   ],
//                 ))),
//         ////RIGHT PORTION
//         Expanded(
//           flex: 3,
//           child: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('images/nike_bg.png'),
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
//               ),
//             ),
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(width: 1, color: Colors.white),
//                 borderRadius: const BorderRadius.all(const Radius.circular(10)),
//                 color: Colors.white,
//               ),
//               margin: EdgeInsets.symmetric(
//                   // vertical: MediaQuery.of(context).size.height / 7,
//                   horizontal: 160),
//               child: Container(
//                 margin: EdgeInsets.only(
//                   top: 30,
//                   left: 30,
//                   right: 30,
//                   // bottom: 10
//                 ),
//                 child: _formLogin(context),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget _buildWideContainers(context) {
//   return Scaffold(
//     body: Row(
//       children: <Widget>[
//         /////LEFT PORTION
//         Expanded(
//             flex: 2,
//             child: Container(
//                 color: Colors.grey[300],
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 130, top: 20),
//                       child: Image.network(
//                         'assets/assets/images/nike.png',
//                         width: 200,
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       width: 210,
//                       child: Text(
//                         'Welcome',
//                         style: const TextStyle(
//                             fontWeight: FontWeight.w500,
//                             fontSize: 43,
//                             fontFamily: 'FuturaBold'),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       width: 240,
//                       child: Text(
//                         'to The Nike User Area',
//                         style: const TextStyle(
//                             fontSize: 43, fontFamily: 'FuturaBold'),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       width: 190,
//                       child: Text(
//                         'To request an account, just call us',
//                         style: const TextStyle(
//                             color: Colors.black54,
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.only(left: 150, top: 40),
//                       child: Text(
//                         '+245 04 166 0355',
//                         style: const TextStyle(
//                             fontFamily: 'FuturaBold',
//                             fontSize: 25,
//                             decoration: TextDecoration.underline,
//                             decorationColor: Colors.red,
//                             decorationThickness: 2),
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Container(
//                       margin: EdgeInsets.only(left: 150),
//                       child: Text(
//                         '+347 42 390 2456',
//                         style: const TextStyle(
//                             fontFamily: 'FuturaBold',
//                             fontSize: 25,
//                             decoration: TextDecoration.underline,
//                             decorationColor: Colors.red,
//                             decorationThickness: 2),
//                       ),
//                     ),
//                     Container(
//                         margin: EdgeInsets.only(left: 140, top: 15),
//                         child: Row(children: [
//                           Image.asset(
//                             'assets/images/fb.png',
//                             width: 37,
//                           ),
//                           Image.asset(
//                             'assets/images/twitter.png',
//                             width: 26,
//                           ),
//                           Image.asset(
//                             'assets/images/linkedin.png',
//                             width: 50,
//                           ),
//                         ])),
//                   ],
//                 ))),
//         ////RIGHT PORTION
//         Expanded(
//           flex: 3,
//           child: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/nike_bg.png'),
//                 fit: BoxFit.cover,
//                 colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
//               ),
//             ),
//             child: Container(
//               decoration: BoxDecoration(
//                 border: Border.all(width: 1, color: Colors.white),
//                 borderRadius: const BorderRadius.all(const Radius.circular(10)),
//                 color: Colors.white,
//               ),
//               margin: EdgeInsets.symmetric(
//                   vertical: MediaQuery.of(context).size.height / 7,
//                   horizontal: 160),
//               child: Container(
//                 margin: EdgeInsets.only(
//                   top: 30,
//                   left: 30,
//                   right: 30,
//                   // bottom: 10
//                 ),
//                 child: _formLogin(context),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
