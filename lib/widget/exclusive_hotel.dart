import 'package:flutter/material.dart';
import '../model/exclusive_hotel_model.dart';

class Exclusive extends StatefulWidget {
  @override
  _ExclusiveState createState() => _ExclusiveState();
}

class _ExclusiveState extends State<Exclusive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 300,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myLv2.length,
                itemBuilder: (context, index) {
                  final Lv2 myLV2 = myLv2[index];
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 300,
                          height: 290,
                          color: Colors.white,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Positioned(
                              bottom: 5,
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 130),
                                width: 280,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(1, 1),
                                      blurRadius: 3,
                                    ),
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(-1, -1),
                                      blurRadius: 3,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 25,
                                      child: Text(
                                        myLV2.text1,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                    Text(
                                      myLV2.text2,
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.grey),
                                    ),
                                    Text(
                                      '\$${myLV2.text3}',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Image(
                                        width: 250,
                                        height: 200,
                                        image: AssetImage(myLV2.image),
                                        fit: BoxFit.cover,
                                      ),
                                    ]),
                              ),
                            ),
                          ]),
                        ),
                      ]);
                }),
          ),
        ],
      ),
    );
  }
}
