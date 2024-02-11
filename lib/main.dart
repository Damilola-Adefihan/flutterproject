import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: DetailsScreen()),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderComponent(),
            CoffeeImageComponent(),
          ],
        ),
      ),
    );
  }
}

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class HeaderComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0), // Adjust horizontal padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items evenly
        children: [
          IconButton( // Adjust the width of the IconButton
            onPressed: () {},
            icon: Image.asset("assets/images/arrow_left.jpg"),
          ),
          Text(
            "Detail",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              fontFamily: "Sora",
            ),
          ),
          IconButton( // Adjust the width of the IconButton
            onPressed: () {},
            icon: Image.asset("assets/images/heart.jpg"),
          ),
        ],
      ),
    );
  }
}

class CoffeeImageComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;
    
    return Padding(
      padding: const EdgeInsets.only(bottom: 13.0),
      child: Image.asset(
        "assets/images/coffee_img.jpg",
        width: screenWidth * 2.0,
      ),
    );
  }
}

