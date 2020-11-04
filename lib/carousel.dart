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
            AssetImage("lib/assets/images/unsplash1.jpg"),
            AssetImage("lib/assets/images/unsplash2.jpg"),
            AssetImage("lib/assets/images/unsplash3.jpg"),
          ],
          autoplay: false,
          animationCurve: Curves.fastLinearToSlowEaseIn,
        ),
      ),
    );
  }
}
