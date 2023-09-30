import 'package:flutter/material.dart';
import 'package:img_generator/screens/home_screen.dart';
import 'package:img_generator/widgets/glass_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 220,
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Colors.deepPurple,
            ),
            title: Text('Hi ${(userName.isNotEmpty) ? userName : 'Sweety'}'),
            centerTitle: true,
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 113, 57, 217),
        ),
        SliverToBoxAdapter(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/pxfuel.jpg'),
                fit: BoxFit.cover,
                
              ),
            ),
          ),
        )
      ]),
      floatingActionButton:
          GlassButton(height: 50, width: 120, text: 'Generate'),
    );
  }
}
