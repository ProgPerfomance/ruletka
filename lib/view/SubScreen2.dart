import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubScreen2 extends StatefulWidget {
  const SubScreen2({super.key});

  @override
  State<SubScreen2> createState() => _SubScreen2State();
}

class _SubScreen2State extends State<SubScreen2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xff0B0909),
      body: SafeArea(child:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                const Image(image: AssetImage('assets/x.png')),
              ],
            ),
          ),
          13.heightBox,
          Image.asset('assets/picture.png'),
          27.heightBox,
          Text(
            'Activate all features',
            style: GoogleFonts.montserrat(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          9.heightBox,
          Text('The most completed ruler solutions\nfor your phone!',
          )
        ],
      )),
    );
  }
}
