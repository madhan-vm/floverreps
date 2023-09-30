import 'package:flutter/material.dart';
import 'package:img_generator/screens/main_screen.dart';
import 'package:img_generator/widgets/glass_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/pxfuel.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: GlassBox(
          width: MediaQuery.of(context).size.width,
          height: 240,
        )),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MainScreen(),
            ));
          },
          child: const Text('Get Started')),
    );
  }
}
