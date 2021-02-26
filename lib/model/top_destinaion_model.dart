import 'package:flutter/material.dart';

class Lv1 {
  String image;
  String city;
  String country;
  IconData icon;
  String text1;
  String text2;
  String text3;
  Lv1(
      {this.image,
      this.city,
      this.country,
      this.icon,
      this.text1,
      this.text2,
      this.text3});
}

List<Lv1> myLv1 = [
  Lv1(
      image: 'assets/pic-1.jpeg',
      city: 'Milan',
      country: 'Italy',
      icon: Icons.near_me,
      text1: '125 Activities',
      text2: 'Enjoy best trips from top',
      text3: 'travel agencies for best price'),
  Lv1(
      image: 'assets/pic-2.jpg',
      city: 'Paris',
      country: 'France',
      icon: Icons.near_me,
      text1: '100 Activities',
      text2: 'Enjoy best trips from top',
      text3: 'travel agencies for best price'),
  Lv1(
      image: 'assets/pic-3.jpg',
      city: 'Barcelona',
      country: 'Spain',
      icon: Icons.near_me,
      text1: '85 Activities',
      text2: 'Enjoy best trips from top',
      text3: 'travel agencies for best price'),
  Lv1(
      image: 'assets/pic-4.jpg',
      city: 'New York',
      country: 'USA',
      icon: Icons.near_me,
      text1: '55 Activities',
      text2: 'Enjoy best trips from top',
      text3: 'travel agencies for best price'),
  Lv1(
      image: 'assets/pic-5.jpg',
      city: 'Tokyo',
      country: 'Japan',
      icon: Icons.near_me,
      text1: '25 Activities',
      text2: 'Enjoy best trips from top',
      text3: 'travel agencies for best price'),
];
