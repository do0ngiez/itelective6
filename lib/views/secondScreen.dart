import 'package:flutter/material.dart';
import 'package:itelective6/views/mainDrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/items.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({ Key? key }) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<Item> items = [
    new Item(
      id: "1",
      shortdesc: "NIKE ACG KARST",
      description: "Its tough design features plenty of room for your outdoor supplies.",
      price: 5005,
      imageLocation: "assets/images/items/bag1.png"
    ),
    new Item(
      id: "2",
      shortdesc: "NIKE ACG KARST SMALL",
      description: "Zippered compartments secure your essentials, while an adjustable hip belt helps you personalize the fit.",
      price: 3503,
      imageLocation: "assets/images/items/bag2.png"
    ),
    new Item(
      id: "3",
      shortdesc: "NIKE DRI-FIT ACG \"HAPPY ARACHNID\" TOP",
      description: "It's lightweight and smooth, with bug-repellent fabric and a hood that zips over your face for total protection from mosquitoes.",
      price: 6507,
      imageLocation: "assets/images/items/men1.png"
    ),
    new Item(
      id: "4",
      shortdesc: "NIKE DRI-FIT ACG \"HAPPY ARACHNID\" PANTS",
      description: "Have natural bug repellent to help keep the mosquitoes at bay",
      price: 4504,
      imageLocation: "assets/images/items/men2.png"
    ),
    new Item(
      id: "5",
      shortdesc: "NIKE ACG \"ROPE DE DOPE\"",
      description: "The vest offers water-repellent comfort with extra warmth around the collar and a slightly cropped hem.",
      price: 4254,
      imageLocation: "assets/images/items/women1.png"
    ),
    new Item(
      id: "6",
      shortdesc: "NIKE ACG DRI-FIT \"NEW SANDS\"",
      description: "Enjoy lightweight coverage that makes your outdoor trek feel like a breeze.",
      price: 4504,
      imageLocation: "assets/images/items/women2.png"
    ),
    new Item(
      id: "7",
      shortdesc: "ULTAMID 2 HALF INSERT",
      description: "The one-person room inside the UltaMid 2 shelter for protection agains bugs and moisture.",
      price: 15266,
      imageLocation: "assets/images/items/tent2.jpg"
    ),
    new Item(
      id: "8",
      shortdesc: "ULTAMID 2 INSERT WITH DCF11 FLOOR",
      description: "The bug and moisture barrier companion to our UltaMid 2 shelter.",
      price: 20272,
      imageLocation: "assets/images/items/tent3.jpg"
    ),
    new Item(
      id: "9",
      shortdesc: "ULTAMID 2 – ULTRALIGHT PYRAMID TENT",
      description: "Our legendary four-season, two-person ultralight pyramid shelter.",
      price: 36790,
      imageLocation: "assets/images/items/tent1.jpg"
    ),
    new Item(
      id: "10",
      shortdesc: "THE FLAT MICRO D CARABINER",
      description: "Connect your UltaMid 2 or 4 Insert to the inside of your shelter when your suspend it from an overhead source.",
      price: 150,
      imageLocation: "assets/images/items/a0.jpg"
    ),
    new Item(
      id: "11",
      shortdesc: "VICTORINOX SWISS ARMY CLASSIC SD",
      description: "A true backpacker's companion, this tool is ready to solve problems.",
      price: 850,
      imageLocation: "assets/images/items/a1.jpg"
    ),
    new Item(
      id: "12",
      shortdesc: "NITECORE NU25 HEADLAMP",
      description: "When it comes to camping after sunset, this is gear you'd be lost without.",
      price: 1852,
      imageLocation: "assets/images/items/a2.jpg"
    ),
    new Item(
      id: "13",
      shortdesc: "ULTRALIGHT STAKE KIT",
      description: "Tough and light stakes for our tents and shelters that can take on rugged environments.",
      price: 1501,
      imageLocation: "assets/images/items/a3.jpg"
    ),
    new Item(
      id: "14",
      shortdesc: "ULTAMID POLE STRAPS",
      description: "Lash your trekking poles together to create the centerpole for our UltaMid Shelters.",
      price: 750,
      imageLocation: "assets/images/items/a4.jpg"
    ),
    new Item(
      id: "15",
      shortdesc: "THERM-A-REST NEOAIR XLITE SLEEPING PAD",
      description: "Advanced fabrics and a tapered design make this the lightest three-season backpacking air mattresses available.",
      price: 9510,
      imageLocation: "assets/images/items/a5.jpg"
    ),
    new Item(
      id: "16",
      shortdesc: "ULTAMID CARBON FIBER TENT POLE",
      description: "The UltaMid 2 option for adventurers that don't use trekking poles.",
      price: 5005,
      imageLocation: "assets/images/items/a6.jpg"
    ),
    new Item(
      id: "17",
      shortdesc: "JETBOIL STASH",
      description: "The Jetboil stash is all about speed, light weight, and stow ability.",
      price: 6507,
      imageLocation: "assets/images/items/a7.jpg"
    ),
    new Item(
      id: "18",
      shortdesc: "PLATYPUS HOSER 2.0L RESERVOIR",
      description: "Stay hydrated while moving along the trail.",
      price: 1301,
      imageLocation: "assets/images/items/a8.jpg"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    List<Material> cards = [];
    for (int i = 0; i < items.length; i++)
    {
      cards.add(customCard(items[i]));
    }

    return Scaffold(
      appBar: AppBar(
        // leading: Padding(
        //   padding:const EdgeInsets.all(8.0),
        //   child: FaIcon(FontAwesomeIcons.horse), 
        // ),
        title: InkWell(
          child: Image.asset(
            'assets/images/nike.png',
            width: 100,
          ),
          onTap: (){
             Navigator.pushNamed(context, '/');
          },
        ),
        backgroundColor: Colors.grey[300],
      ),
      // RIGHT PORTION DRAWER
      endDrawer: MainDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 400.0),
            items: [
              Image.asset('assets/images/carousel/c0.jpeg'),
              Image.asset('assets/images/carousel/c1.jpg'),
              Image.asset('assets/images/carousel/c2.jpg'),
              Image.asset('assets/images/carousel/c3.jpg'),
              Image.asset('assets/images/carousel/c4.jpg'),
              Image.asset('assets/images/carousel/c5.jpg'),
              Image.asset('assets/images/carousel/c6.jpg'),
            ]
          ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              direction: Axis.horizontal,
              children: cards,
            )
          )
        ],
      )
    );
  }

  Material customCard(Item item) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        color: Colors.white,
        width: 400,
        height: 400,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset(item.imageLocation),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.imageLocation),
                  fit: BoxFit.fill
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              item.shortdesc,
              style: TextStyle(fontSize: 18)
            ),
            SizedBox(
              height: 5
            ),
            Text(
              item.description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black38
              ),
            ),
            SizedBox(
              height: 5
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "₱   " + item.price.toString(),
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(
                  width: 15,
                )
              ],
            )
          ]
        )
      )
    );
  }
}

