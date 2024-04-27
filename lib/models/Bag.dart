import 'package:flutter/material.dart';

class Bag{

String? title;
String? image;
double? price;
double? size;
String? descreption;
Color? color;

Bag(this.title,this.image,this.color,this.price,this.size,this.descreption);

static List<Bag>Bags=[

  Bag('Office hold','images/bag_1.png',const Color(0xFF3D82AE), 234, 12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Bag('Belt Bag','images/bag_2.png', const Color(0xFFD3A984), 235, 14, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Bag('Hang Top','images/bag_3.png', const Color(0xFF989493), 308, 12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Bag('Old Fashion','images/bag_4.png',  const Color(0xFFE6B398), 874, 16, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Bag('Office Code','images/bag_5.png', const Color(0xFFFB7883), 290, 22, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
  Bag('Office hold','images/bag_6.png', const Color(0xFFAEAEAE), 508, 17, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since. When an unknown printer took a galley.'),
   
];








}