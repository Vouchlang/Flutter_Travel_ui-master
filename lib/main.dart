import 'package:flutter/material.dart';
import 'widget/top_destination.dart';
import 'widget/exclusive_hotel.dart';
import 'screen/destination.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  IconData color;
  int color1 = 0;
  List<IconData> myTop = [
    Icons.airline_seat_flat,
    Icons.alarm,
    Icons.car_rental,
    Icons.motorcycle
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'What would you like to find?',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: myTop.map((index) {
              return FlatButton(
                  onPressed: () {
                    setState(() {
                      color = index;
                    });
                  },
                  child: Container(
                      alignment: Alignment.center,
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: color == index ? Colors.cyan[50] : Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(
                        index,
                        color: color == index
                            ? Colors.cyanAccent
                            : Colors.grey[700],
                      )));
            }).toList(),
          )),
          Container(
              margin: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Screen(),
                      ),
                    ),
                    child: Text(
                      'Top Destinations',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Screen(),
                      ),
                    ),
                    child: Text(
                      'See all',
                      style: TextStyle(fontSize: 20, color: Colors.cyan),
                    ),
                  ),
                ],
              )),
          TopDestination(),
          Container(
              margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclustive Hotels',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 20, color: Colors.cyan),
                  ),
                ],
              )),
          Exclusive(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: color1,
        onTap: (int value) {
          setState(() {
            color1 = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
              size: 30,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://media.comicbook.com/2020/01/boruto-1201755-1280x0.jpeg'),
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
