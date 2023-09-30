import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlassButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  const GlassButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:BorderRadius.circular(50) ,
      child: SizedBox(
        height: height,
        width: width,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10,
                sigmaY: 10,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white.withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.withOpacity(0.1),
                      Colors.white.withOpacity(0.3),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  )),
            ),
            Container(
              child: SizedBox(
                  height: height,
                  width: width,
                  child: Center(
                      child: Text(
                    text,
                    style: GoogleFonts.poppins(color: Colors.white),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
