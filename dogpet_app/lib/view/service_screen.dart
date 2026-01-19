import 'package:dogpet_app/view/doctor_details_screen.dart';
import 'package:dogpet_app/widgets/category_service_options.dart';
import 'package:dogpet_app/widgets/custom_card.dart';
import 'package:dogpet_app/widgets/custom_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  Text(
                    'London, UK',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.5,
                      color: Color.fromRGBO(167, 168, 172, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomCard(
                color: Color.fromRGBO(245, 146, 69, 1),
                title: 'Lets Find Specialist\nDoctor for Your Pet!',
                subtitle: '',
                trailing: 'assets/images/service_card.jpg',
                textColor: Colors.white,
                subtitleColor: Color.fromRGBO(245, 146, 69, 1),
              ),
              const SizedBox(height: 20),
              CustomTextfeild(
                text: 'search',
                suffix: Icon(
                  Icons.search,
                  size: 30,
                  color: Color.fromRGBO(245, 146, 69, 1),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Our Services',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      height: 1,
                      letterSpacing: 0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'See All',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                      color: Color.fromRGBO(182, 183, 188, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryServiceOptions(
                    image: 'assets/images/service1.png',
                    text: 'Vaccinations',
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  CategoryServiceOptions(
                    image: 'assets/images/service2.png',
                    text: 'Operations',
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  CategoryServiceOptions(
                    image: 'assets/images/service3.png',
                    text: 'Behaviorals',
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                  CategoryServiceOptions(
                    image: 'assets/images/service4.png',
                    text: 'Dentistry',
                    color: Color.fromRGBO(245, 146, 69, 1),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Best Specialists Nearby',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    height: 1,
                    letterSpacing: 0,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return DoctorDetailsScreen(
                          image: 'assets/images/doctor1.jpg',
                          text: 'Dr. Anna Johanson',
                          subText: 'Veterinary Behavioral',
                          distance: '1 km',
                        );
                      },
                    ),
                  );
                },
                child: doctorCard(
                  image: 'assets/images/doctor1.jpg',
                  text: 'Dr. Anna Johanson',
                  subText: 'Veterinary Behavioral',
                  distance: '1 km',
                  rating: '4.8',
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return DoctorDetailsScreen(
                          image: 'assets/images/doctor2.jpg',
                          text: 'Dr. Vernon Chwe',
                          subText: 'Veterinary Surgery',
                          distance: '1.5 km',
                        );
                      },
                    ),
                  );
                },
                child: doctorCard(
                  image: 'assets/images/doctor2.jpg',
                  text: 'Dr. Vernon Chwe',
                  subText: 'Veterinary Surgery',
                  distance: '1.5 km',
                  rating: '4.9',
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return DoctorDetailsScreen(
                          image: 'assets/images/doctor3.jpg',
                          text: 'Dr. Maria Nai',
                          subText: 'Veterinary Dentist',
                          distance: '2.5 km',
                        );
                      },
                    ),
                  );
                },
                child: doctorCard(
                  image: 'assets/images/doctor3.jpg',
                  text: 'Dr. Maria Nai',
                  subText: 'Veterinary Dentist',
                  distance: '2.5 km',
                  rating: '4.9',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget doctorCard({
    required String image,
    required String text,
    required String subText,
    required String rating,
    required String distance,
  }) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(height: 90, width: 90, image, fit: BoxFit.cover),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.5,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subText,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color.fromRGBO(163, 163, 165, 1),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      size: 20,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.5,
                        color: Color.fromRGBO(167, 168, 172, 1),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: Color.fromRGBO(245, 146, 69, 1),
                    ),
                    Text(
                      distance,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.5,
                        color: Color.fromRGBO(167, 168, 172, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
