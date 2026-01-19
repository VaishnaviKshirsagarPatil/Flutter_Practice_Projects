import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 247, 1),
      body: Column(
        children: [
          // 🔥 HEADER
          Container(
            height: 215,
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 146, 69, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Profile',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    height: 1,
                    letterSpacing: 0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      height: 80,
                      width: 80,
                      'assets/images/sarah.png',
                      fit: BoxFit.cover,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Sarah\n',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: 'PetGuardian@gmail.com\n',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: '+1 654 785 4462',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset('assets/svg/edit.svg'),
                  ],
                ),
              ],
            ),
          ),

          // 🔥 BODY
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            color: Colors.white,
            child: Column(
              children: [
                profileOptions(
                  text: 'My Order',
                  leading: 'assets/svg/order.svg',
                ),
                Divider(color: Color.fromRGBO(205, 204, 204, 1)),
                profileOptions(
                  text: 'Payment Methods',
                  leading: 'assets/svg/payment.svg',
                ),
                Divider(color: Color.fromRGBO(205, 204, 204, 1)),
                profileOptions(
                  text: 'Invite Friends',
                  leading: 'assets/svg/invite_frd.svg',
                ),
                Divider(color: Color.fromRGBO(205, 204, 204, 1)),
                profileOptions(
                  text: 'Quick Login',
                  leading: 'assets/svg/qr.svg',
                  trailing: Transform.scale(
                    scale: 0.65,
                    child: Switch(
                      value: true,
                      activeColor: Colors.white,
                      activeTrackColor: const Color.fromRGBO(245, 146, 69, 1),
                      onChanged: (value) {},
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            color: Colors.white,
            child: profileOptions(
              text: 'Settings',
              leading: 'assets/svg/setting.svg',
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            color: Colors.white,
            child: profileOptions(
              text: 'Log Out',
              leading: 'assets/svg/logout.svg',
            ),
          ),
        ],
      ),
    );
  }

  Widget profileOptions({
    required String text,
    required String leading,
    Widget trailing = const Icon(
      Icons.arrow_forward_ios,
      color: Color.fromRGBO(165, 170, 169, 1),
      size: 20,
    ),
  }) {
    return ListTile(
      contentPadding: EdgeInsetsDirectional.zero,
      leading: SvgPicture.asset(
        leading,
        height: 22,
        colorFilter: ColorFilter.mode(
          const Color.fromRGBO(245, 146, 69, 1),
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        text,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.black,
        ),
      ),
      trailing: trailing,
    );
  }
}
