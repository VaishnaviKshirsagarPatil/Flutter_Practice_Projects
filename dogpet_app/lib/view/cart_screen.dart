import 'package:dogpet_app/widgets/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final List<Map<String, dynamic>> shoppingList = const [
    {
      'title': 'Pets',
      'image': 'assets/images/shop_category1.jpg',
      'height': 190.0,
    },
    {
      'title': 'Foods',
      'image': 'assets/images/shop_category2.jpg',
      'height': 170.0,
    },
    {
      'title': 'Toys',
      'image': 'assets/images/shop_category4.jpg',
      'height': 210.0,
    },
    {
      'title': 'Healthy',
      'image': 'assets/images/shop_category3.jpg',
      'height': 180.0,
    },
    {
      'title': 'Cloths',
      'image': 'assets/images/shop_category6.jpg',
      'height': 170.0,
    },
    {
      'title': 'Accessories',
      'image': 'assets/images/shop_category5.jpg',
      'height': 160.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Column(
        children: [
          // 🔥 HEADER
          Stack(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 245, 247, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(245, 146, 69, 1),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 30,
                top: 55,
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Hello, Sarah\n',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1,
                          letterSpacing: 0,
                          color: Colors.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Find your lovable Pets',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 30,
                height: 140,
                child: SvgPicture.asset('assets/svg/cart.svg'),
              ),
              Positioned(
                left: 40,
                top: 130,
                child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: const Color.fromRGBO(245, 146, 69, 1),
                    ),
                  ),
                  child: CustomTextfeild(
                    text: 'search',
                    suffix: Icon(
                      Icons.search,
                      color: const Color.fromRGBO(245, 146, 69, 1),
                      size: 28,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // 🔥 SCROLLABLE GRID
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                itemCount: shoppingList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return shoppingCard(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget shoppingCard(int index) {
    return Container(
      height: (shoppingList[index]['height'] as num).toDouble(),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(245, 146, 69, 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            bottom: 8,
            left: 8,
            right: 8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                shoppingList[index]['image'],
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                shoppingList[index]['title'],
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1,
                  letterSpacing: 0,
                  color: const Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
