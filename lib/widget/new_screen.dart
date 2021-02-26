import 'package:flutter/material.dart';
import '../model/new_screen_model.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  Text stars(int rating) {
    String star = '';
    for (int i = 0; i < rating; i++) {
      star += '⭐';
    }
    star.trim();
    return Text(star);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.only(right: 10),
      color: Colors.white,
      height: 257,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: mylv.length,
        itemBuilder: (context, index) {
          final Lv myLv = mylv[index];
          return Container(
            height: 160,
            margin: EdgeInsets.only(left: 10),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Positioned(
                  left: 20,
                  child: Container(
                    height: 145,
                    width: 370,
                    padding: EdgeInsets.fromLTRB(80, 15, 10, 0),
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1, 1),
                            blurRadius: 5,
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(-1, -1),
                            blurRadius: 5,
                          ),
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 150,
                                child: Text(
                                  myLv.t1,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                myLv.t2,
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                              // stars(myLv.rating),
                              Text(
                                '${stars(myLv.rating)}',
                                style: TextStyle(fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    margin: EdgeInsets.only(right: 5, top: 10),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.cyanAccent,
                                    ),
                                    child: Text(
                                      myLv.t3,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    margin: EdgeInsets.only(right: 10, top: 10),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.cyanAccent,
                                    ),
                                    child: Text(
                                      myLv.t4,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$${myLv.t5}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Text(
                              myLv.t6,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Stack(alignment: Alignment.topLeft, children: [
                      Image(
                        width: 100,
                        height: 135,
                        image: AssetImage(myLv.image),
                        fit: BoxFit.cover,
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
