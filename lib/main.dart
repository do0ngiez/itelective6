import 'package:flutter/material.dart';
import 'package:itelective6/views/secondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ITElective6',
      routes: {
        '/': (context) => MyHomePage(),
        '/acg-releases': (context) => SecondScreen(),
      },
    );
  }
}

///Page
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 1400) {
            return _buildWideContainers(context);
          } else {
            return _buildNormalContainer(context);
          }
        },
      ),
    );
  }
}

Widget _buildNormalContainer(context) {
  return Scaffold(
    body: ListView(
      children: <Widget>[
        /////LEFT PORTION
        Expanded(
            flex: 2,
            child: Container(
                color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 130, top: 20),
                      child: Image.network(
                        'assets/assets/images/nike.png',
                        width: 200,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      width: 210,
                      child: Text(
                        'Welcome',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 43,
                            fontFamily: 'FuturaBold'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      width: 240,
                      child: Text(
                        'to The Nike User Area',
                        style: const TextStyle(
                            fontSize: 43, fontFamily: 'FuturaBold'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      width: 190,
                      child: Text(
                        'To request an account, just call us',
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150, top: 40),
                      child: Text(
                        '+245 04 166 0355',
                        style: const TextStyle(
                            fontFamily: 'FuturaBold',
                            fontSize: 25,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      child: Text(
                        '+347 42 390 2456',
                        style: const TextStyle(
                            fontFamily: 'FuturaBold',
                            fontSize: 25,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 140, top: 15),
                        child: Row(children: [
                          Image.asset(
                            'images/fb.png',
                            width: 37,
                          ),
                          Image.asset(
                            'images/twitter.png',
                            width: 26,
                          ),
                          Image.asset(
                            'images/linkedin.png',
                            width: 50,
                          ),
                        ])),
                  ],
                ))),
        ////RIGHT PORTION
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nike_bg.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: const BorderRadius.all(const Radius.circular(10)),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(
                  // vertical: MediaQuery.of(context).size.height / 7,
                  horizontal: 160),
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                  // bottom: 10
                ),
                child: _formLogin(context),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildWideContainers(context) {
  return Scaffold(
    body: Row(
      children: <Widget>[
        /////LEFT PORTION
        Expanded(
            flex: 2,
            child: Container(
                color: Colors.grey[300],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 130, top: 20),
                      child: Image.asset(
                        'images/nike.png',
                        width: 200,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      width: 210,
                      child: Text(
                        'Welcome',
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 43,
                            fontFamily: 'FuturaBold'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      width: 240,
                      child: Text(
                        'to The Nike User Area',
                        style: const TextStyle(
                            fontSize: 43, fontFamily: 'FuturaBold'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      width: 190,
                      child: Text(
                        'To request an account, just call us',
                        style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150, top: 40),
                      child: Text(
                        '+245 04 166 0355',
                        style: const TextStyle(
                            fontFamily: 'FuturaBold',
                            fontSize: 25,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      child: Text(
                        '+347 42 390 2456',
                        style: const TextStyle(
                            fontFamily: 'FuturaBold',
                            fontSize: 25,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.red,
                            decorationThickness: 2),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 140, top: 15),
                        child: Row(children: [
                          Image.asset(
                            'images/fb.png',
                            width: 37,
                          ),
                          Image.asset(
                            'images/twitter.png',
                            width: 26,
                          ),
                          Image.asset(
                            'images/linkedin.png',
                            width: 50,
                          ),
                        ])),
                  ],
                ))),
        ////RIGHT PORTION
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nike_bg.png'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black12, BlendMode.darken),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: const BorderRadius.all(const Radius.circular(10)),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height / 7,
                  horizontal: 160),
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                  // bottom: 10
                ),
                child: _formLogin(context),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

///Login Form - Right Portion
Widget _formLogin(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text(
          'YOUR ACCOUNT',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w300,
            fontFamily: 'FuturaBold',
          ),
        ),
      ),
      Container(
        child: Text(
          'FOR EVERYTHING NIKE',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w300,
            fontFamily: 'FuturaBold',
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'Please enter your credentials first.',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5),
        child: Text(
          'Won\'t be shared publicly,',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5),
        child: Text(
          'won\'t be spammed',
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      SizedBox(height: 35),
      TextField(
        decoration: InputDecoration(
          hintText: 'Email address',
          filled: true,
          fillColor: Colors.blueGrey[50],
          labelStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(3),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
      ),
      SizedBox(height: 30),
      TextField(
        decoration: InputDecoration(
          hintText: 'Password',
          filled: true,
          fillColor: Colors.blueGrey[50],
          labelStyle: TextStyle(fontSize: 12),
          contentPadding: EdgeInsets.only(left: 30),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black12),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
      //SizedBox(height: 30),
      Container(
        margin: EdgeInsets.only(top: 30),
        child: ElevatedButton(
          child: Container(
              width: double.infinity,
              height: 50,
              child: Center(child: Text("Log In"))),
          onPressed: () {
            Navigator.pushNamed(context, '/acg-releases');
          },
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(3),
            ),
          ),
        ),
      ),
      SizedBox(height: 10),
      Center(
        child: TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: 16,
              //fontWeight: FontWeight.w600,
              //fontFamily: 'FuturaLight',
            ),
          ),
          onPressed: () {},
          child: const Text('Back to home page',
              style: const TextStyle(
                  color: Colors.red, decoration: TextDecoration.underline)),
        ),
      ),
    ],
  );
}

