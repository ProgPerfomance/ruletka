import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcessCameraScreen extends StatefulWidget {
  const AcessCameraScreen({super.key});

  @override
  State<AcessCameraScreen> createState() => _AcessCameraScreenState();
}

class _AcessCameraScreenState extends State<AcessCameraScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 23,
            ),
            Center(
              child: Container(
                width: 143,
                height: 46,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: const Color(0xff00ff59)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: Row(
                    children: [
                      Image.asset('assets/cameramini.png'),
                      const SizedBox(
                        width: 2.3,
                      ),
                      Text(
                        "Measure",
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Image.asset('assets/bigcamera.png'),
            Text(
              'Access your camera',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 18,
            ),
            Text(
              'Access is required for\nour features to work',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.59)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: context.height /2.43,),
            Container(
              width: 299,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.5),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff00ff47), Color(0xff00ffb2)],
                ),
              ),
              child: Center(child: Text('Continue', style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w700,

              ),),),
            )
          ],
        ),
      ),
    );
  }
}
