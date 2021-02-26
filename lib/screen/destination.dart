import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../model/top_destinaion_model.dart';
import '../widget/new_screen.dart';

class Screen extends StatefulWidget {
  final Lv1 lv1;
  Screen({this.lv1});

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 1),
                    blurRadius: 5,
                  ),
                ],
              ),
              // child: Hero(
              //   tag: widget.lv1.image,
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(30),
              //     child: Image(
              //       image: AssetImage(widget.lv1.image),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.search,
                          size: 30,
                          color: Colors.black,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.menu,
                          size: 30,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 300, left: 20),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     children: [
            //       Text(
            //         widget.lv1.city,
            //         style: TextStyle(fontSize: 40, color: Colors.black),
            //       ),
            //       Row(
            //         children: [
            //           Icon(
            //             widget.lv1.icon,
            //             size: 25,
            //           ),
            //           Row(
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text(
            //                 widget.lv1.country,
            //                 style: TextStyle(fontSize: 30, color: Colors.black),
            //               ),
            //             ],
            //           ),
            //           Icon(
            //             Icons.location_on,
            //             size: 25,
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
          ],
        ),
        NewScreen(),
      ],
    );
  }
}
