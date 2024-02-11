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
            DividerComponent(),
            DescriptionComponent(),
            DescriptionTextComponent(),
            SizeComponent(),
            CoffeeSizeComponent(),
            BuyComponent(),
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
      padding: const EdgeInsets.symmetric(
          horizontal: 13.0), // Adjust horizontal padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items evenly
        children: [
          IconButton(
            // Adjust the width of the IconButton
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
          IconButton(
            // Adjust the width of the IconButton
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
      padding: const EdgeInsets.only(bottom: 0.0),
      child: Image.asset(
        "assets/images/coffee_img.jpg",
        width: screenWidth * 2.5,
      ),
    );
  }
}

class NameComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [
          Text(
            "Cappuccino",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
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
      padding: const EdgeInsets.only(left: 30.0, top: 3.0),
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

class DividerComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 15,
      width: 350,
      child: Divider(
        color: Colors.grey[300],
      ),
    );
  }
}

class RatingComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
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
            children: [SizedBox(width: 160)],
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
      padding: const EdgeInsets.only(left: 30.0, top: 5.0),
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
    // Get the screen width
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: screenWidth * 0.8, // Set the width to 80% of the screen width
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
        ],
      ),
    );
  }
}


class SizeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 10.0, right: 30.0, bottom: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
              color: Colors.black,
              fontFamily: "Sora",
            ),
          )
        ],
      ),
    );
  }
}


class CoffeeSizeComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100.0,
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                style: BorderStyle.solid,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "S",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontSize: 14.0,
              ),
            ),
          ),
          Container(
            width: 100.0,
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: const Color.fromARGB(104, 210, 184, 174),
              border: Border.all(
                style: BorderStyle.solid,
                color: const Color.fromARGB(218, 144, 65, 36),
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "M",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontSize: 14.0,
                color: Color.fromARGB(218, 144, 65, 36),
              ),
            ),
          ),
          Container(
            width: 100.0,
            height: 40.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                style: BorderStyle.solid,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              "L",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class BuyComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, top: 25.0, right: 30.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: .5, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "\$ 4.53",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Sora",
                      color: Color.fromARGB(218, 144, 65, 36),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 190.0,
            height: 45.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(218, 144, 65, 36),
              border: Border.all(style: BorderStyle.none, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              "Buy Now",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Sora",
                fontSize: 14.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
