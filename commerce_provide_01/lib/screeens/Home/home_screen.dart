import 'package:commerce_provide_01/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: kcontentColor,
                        padding: const EdgeInsets.all(20),
                      ),
                      onPressed: () {},
                      icon: Image.asset(
                        "images/icon.png",
                        height: 20,
                      ),
                    ),
                    IconButton(
                      style: IconButton.styleFrom(
                        backgroundColor: kcontentColor,
                        padding: const EdgeInsets.all(20),
                      ),
                      onPressed: () {},
                      iconSize: 30,
                      icon: const Icon(Icons.notifications_outlined),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
