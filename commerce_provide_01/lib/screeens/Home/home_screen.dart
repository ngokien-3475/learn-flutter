import 'package:commerce_provide_01/screeens/Home/Widget/category.dart';
import 'package:commerce_provide_01/screeens/Home/Widget/image_slider.dart';
import 'package:commerce_provide_01/screeens/Home/Widget/search_bar.dart';
import 'package:flutter/material.dart';
import 'Widget/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              // for custom AppBar
              CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              // for search bar
              MySearchBar(),
              const SizedBox(
                height: 20,
              ),
              ImageSlider(
                currentSlider: currentSlider,
                onChange: (value) {
                  setState(
                    () {
                      currentSlider = value;
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
              // for category selection
              Categories(),
            ],
          ),
        ),
      ),
    );
  }
}
