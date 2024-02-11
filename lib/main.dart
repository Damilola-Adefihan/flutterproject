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
            NameComponent(),
            NameDescriptionComponent(),
            RatingComponent(),
            DescriptionComponent(),
            DescriptionTextComponent(),
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

class NameComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Row(
        children: [
          Text(
            "Cappuccino",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              fontFamily: "Sora",
            ),
          )
        ],
      ),
    );
  }
}

class NameDescriptionComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, top: 3.0),
      child: Row(
        children: [
          Text(
            "with Chocolate",
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 10.0,
              color: Colors.grey,
              fontFamily: "Sora",
            ),
          )
        ],
      ),
    );
  }
}

class RatingComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 19.0,
                    color: Color.fromARGB(255, 212, 186, 14),
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                      fontFamily: "Sora",
                    ),
                  ),
                  Text(
                    " (230)",
                    style: TextStyle(
                      fontSize: 11.0,
                      fontFamily: "Sora",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [SizedBox(width: 60)],
          ),
          Container(
            width: 43.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset("assets/images/bean.jpg", width: 8.0),
          ),
          SizedBox(width: 18.0),
          Container(
            width: 43.0,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset("assets/images/milk.jpg", width: 8.0),
          ),
        ],
      ),
    );
  }
}





class DescriptionComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, top: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Description",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class DescriptionTextComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 250.0,
            child: Expanded(
              child: RichText(
                textAlign: TextAlign.justify,
                softWrap: true,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 11.8,
                    color: Colors.grey,
                    fontFamily: "Sora",
                  ),
                  children: [
                    TextSpan(
                      text:
                          "A cappuccino is an approximately 150ml (5 oz) beverage, with 25ml of espresso coffee and 85ml of fresh milk. The fo...",
                    ),
                    TextSpan(
                      text: "Read More",
                      style: TextStyle(
                        color: Color.fromARGB(218, 144, 65, 36),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}