import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final _borderRadius = BorderRadius.circular(20);

class GlassBox extends StatelessWidget {
  final double width;
  final double height;

  const GlassBox({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: _borderRadius,
        child: SizedBox(
          width: width,
          height: height,
          child: Stack(
            alignment: AlignmentDirectional.topStart,
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
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                    borderRadius: _borderRadius,
                    gradient: LinearGradient(
                      colors: [
                        Colors.white.withOpacity(0.1),
                        Colors.grey.withOpacity(0.1),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText(
                            ' Welcome',
                            textStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 50,
                                color: Color.fromARGB(216, 255, 255, 255),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            colors: colorizeColors,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      child:
                          AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
                        TypewriterAnimatedText(
                            '    Generate images as you wish and bring\n    life to your imagination.',
                            textStyle: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(216, 255, 255, 255),
                                  fontWeight: FontWeight.w500),
                            ))
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const colorizeColors = [
  Colors.white,
  Color.fromARGB(255, 213, 143, 225),
  Color.fromARGB(255, 139, 190, 232),
  Color.fromARGB(255, 238, 227, 127),
  Color.fromARGB(255, 229, 142, 135),
  Colors.white,
];
