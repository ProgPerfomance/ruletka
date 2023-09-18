import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubScreen1 extends StatefulWidget {
  const SubScreen1({super.key});

  @override
  State<SubScreen1> createState() => _SubScreen1State();
}

class _SubScreen1State extends State<SubScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B0909),
      body: SafeArea(
        child: Column(
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
            32.heightBox,
            Row(
              //1
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.39,
                ),
                Image.asset('assets/galka.png'),
                18.widthBox,
                const Text(
                  '3 day free trial',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            19.heightBox,
            Row(
              //2
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.39,
                ),
                Image.asset('assets/galka.png'),
                18.widthBox,
                const Text(
                  'Measure Hight',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            19.heightBox,
            Row(
              //3
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.39,
                ),
                Image.asset('assets/galka.png'),
                18.widthBox,
                const Text(
                  'Square',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            19.heightBox,
            Row(
              //4
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3.39,
                ),
                Image.asset('assets/galka.png'),
                18.widthBox,
                const Text(
                  'Using ruler',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            27.heightBox,
            const Center(
                child: Text(
              '3 day free trial, then \$9.99 / year',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            )),
            27.heightBox,
            Container(
              width: context.width - 76,
              height: 55,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26.5),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff00ff47), Color(0xff00ffb2)],
                  )),
              child: const Center(
                child: Text(
                  'TRY FREE',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            27.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Privacy',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.47)),
                ),
                Text(
                  'Restore',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.47)),
                ),
                Text(
                  'Terms',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.47)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
