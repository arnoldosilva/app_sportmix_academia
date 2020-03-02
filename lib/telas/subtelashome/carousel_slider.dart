import 'package:flutter/material.dart';
import 'package:academia_sport_mix/constantes/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'peso.dart';
import 'medidas.dart';

CarouselSlider resumoSlider = CarouselSlider.builder(
  height: 165,
  aspectRatio: 16 / 9,
  viewportFraction: 0.8,
  initialPage: 0,
  enableInfiniteScroll: true,
  reverse: false,
  autoPlay: true,
  autoPlayInterval: Duration(seconds: 3),
  autoPlayAnimationDuration: Duration(milliseconds: 800),
  autoPlayCurve: Curves.fastOutSlowIn,
  pauseAutoPlayOnTouch: Duration(seconds: 10),
  enlargeCenterPage: true,
  onPageChanged: (value) {},
  scrollDirection: Axis.horizontal,
  itemCount: carousel.length,
  itemBuilder: (BuildContext context, int itemIndex) => Container(
    padding: EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.symmetric(horizontal: 5.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)), color: c5),
    child: carousel[itemIndex],
  ),
);

List<Widget> carousel = [returnpeso(), returnmedidas()];
