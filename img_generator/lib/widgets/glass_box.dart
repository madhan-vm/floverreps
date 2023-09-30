import 'dart:ui';

import 'package:flutter/material.dart';

final _borderRadius = BorderRadius.circular(20);

class GlassBox extends StatelessWidget {
  final width;
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
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' Welcome!',
                    style: TextStyle(
                        fontSize: 60,
                        color: Color.fromARGB(224, 255, 255, 255),
                        fontWeight: FontWeight.w600),
                  ),
                  Text('    Generate images as you wish and bring\n    life to your imagination.',style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(216, 255, 255, 255),
                          fontWeight: FontWeight.w500),)
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
