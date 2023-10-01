import 'package:flutter/material.dart';
import 'package:img_generator/screens/main_screen.dart';
import 'package:img_generator/widgets/glass_box.dart';
import 'package:img_generator/widgets/glass_button.dart';

final textcontroller = TextEditingController();
String userName = '';

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: GlassBox(
                width: MediaQuery.of(context).size.width,
                height: 240,
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: textcontroller,
                  style:const  TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon:const  Icon(Icons.cancel_outlined),
                      onPressed: () {
                        textcontroller.clear();
                      },
                    ),
                    hintText: 'You gotta name? Say to me',
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        floatingActionButton: InkWell(
            onTap: () {
              userName = textcontroller.text;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ));
            },
            child: const GlassButton(
              height: 50,
              width: 120,
              text: 'Get Started',
            )));
  }
}
