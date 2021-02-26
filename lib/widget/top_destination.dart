import 'package:flutter/material.dart';
import '../model/top_destinaion_model.dart';
import '../screen/destination.dart';

class TopDestination extends StatefulWidget {
  @override
  _TopDestinationState createState() => _TopDestinationState();
}

class _TopDestinationState extends State<TopDestination> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myLv1.length,
                itemBuilder: (context, index) {
                  final Lv1 myLV1 = myLv1[index];
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Screen(),
                      ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 250,
                            height: 290,
                            color: Colors.white,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Positioned(
                                    bottom: 5,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(top: 135, left: 15),
                                      width: 230,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 30,
                                            child: Text(
                                              myLV1.text1,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          Text(
                                            myLV1.text2,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            myLV1.text3,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey),
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
                                            Hero(
                                              tag: myLV1.image,
                                              child: Image(
                                                width: 200,
                                                height: 200,
                                                image: AssetImage(myLV1.image),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              bottom: 5,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    myLV1.city,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25),
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                            right: 5, top: 3),
                                                        child: Icon(
                                                          myLV1.icon,
                                                          size: 13,
                                                          color:
                                                              Colors.grey[300],
                                                        ),
                                                      ),
                                                      Text(
                                                        myLV1.country,
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors
                                                                .grey[300]),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ]),
                                    ),
                                  ),
                                ]),
                          ),
                        ]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
