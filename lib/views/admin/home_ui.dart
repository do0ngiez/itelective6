import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:itelective6/views/mainDrawer.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:itelective6/models/items.dart';
import 'package:provider/provider.dart';
import 'package:itelective6/services/item_service.dart';
import 'package:itelective6/views/admin/itemview.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
            Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.person),
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ),
            ),
          ],
        iconTheme: IconThemeData(color: Colors.black54),
        title: InkWell(
          child: Image.asset(
            'assets/images/nike.png',
            width: 100,
          ),
          // onTap: (){
          // },
        ),
        backgroundColor: Colors.grey[300],
      ),
      // RIGHT PORTION DRAWER
      endDrawer: MainDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [ 
          Container(
            child:
            CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
              autoPlay: true,
              ),
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
        ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: StreamProvider<List<Item>>.value(
              value: ItemService().getItems(),
              builder: (context, snapshot) {
                List<Item> items = Provider.of<List<Item>>(context);
                return Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.horizontal,
                  children: items.map((item) {
                    return customCard(item);
                  }).toList(),
                );
              },
              initialData: [],
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
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ItemView(item)));
        },
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
                    image: NetworkImage(item.photoUrl),
                    fit: BoxFit.fill
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                item.name,
                style: TextStyle(fontSize: 18)
              ),
              SizedBox(
                height: 5
              ),
              // Text(
              //   item.description,
              //   style: TextStyle(
              //     fontSize: 14,
              //     color: Colors.black38
              //   ),
              // ),
              // SizedBox(
              //   height: 5
              // ),
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
      )
    );
  }
}

