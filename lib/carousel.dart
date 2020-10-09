import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 375.0,
        height: 300.0,
        child: Carousel(
          images: [
            AssetImage("lib/assets/images/wing.png"),
            AssetImage("lib/assets/images/burger.png"),
            AssetImage("lib/assets/images/wrap.png"),
          ],
          autoplay: false,
          animationCurve: Curves.fastLinearToSlowEaseIn,
        ),
),
    );
  }
}
