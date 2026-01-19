import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const Screen1());
// }
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

     int currentMovieIndex=0;
  List<String> CuroselImageList=[
      "https://thumbs.dreamstime.com/b/hand-drawn-flat-design-delivery-concept-vector-illustration-234961913.jpg",
      "https://www.shutterstock.com/image-vector/italian-pizza-courier-riding-motorbike-260nw-1383023465.jpg",
      "https://img.freepik.com/premium-vector/delivery-man-is-riding-illustration_990473-1341.jpg",
      // "https://thecolourmoon.com/assets/images/food-delivery-business-model-1.png",
      // "https://thecolourmoon.com/assets/images/food-delivery-business-model-1.png",
      // "https://thecolourmoon.com/assets/images/food-delivery-business-model-1.png",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
                 CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(CuroselImageList[0]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
          
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(CuroselImageList[1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
          
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: NetworkImage(CuroselImageList[2]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
          
                  ],
                  options: CarouselOptions(
                    aspectRatio: 8/8,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 0.6,
                    onPageChanged: (index, reason)
                      {
                        currentMovieIndex=index;
                        setState(() {});
                      }
                  ),
                ),
                 SizedBox(height: 10,),
                 
                 DotsIndicator(
                  dotsCount: CuroselImageList.length,
                  position: currentMovieIndex.toDouble(),
              ),
        ],
      ),
    
    );
  }
}