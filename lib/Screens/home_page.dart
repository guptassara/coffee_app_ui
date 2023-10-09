import 'package:coffee_app_ui/Screens/Utilities/CoffeeTiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Utilities/CoffeeTypes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

// void coffeeTypeSelected(int index) {
//   setState() {
//     coffeeType[index][1] = true;
//   }
// }

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          // Padding(
          //   padding: EdgeInsets.only(right: 20.0),
          //   child: Icon(Icons.person),
          // )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: '',
          // ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best coffee for you.",
              style: GoogleFonts.bebasNeue(
                fontSize: 56,
              ),
            ),
          ),

          const SizedBox(height: 25),
          //find the best coffee for you

          //Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: 'Find your coffee.',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(
            height: 25,
          ),
          //horizontal listview for coffee types
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                typeMethod('Cappucino', true),
                typeMethod('Latte', false),
                typeMethod('Black', false),
              ],
            ),
          ),

          //List of coffee tiles-horizontally tiles
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  tileMethod("assets/images/latte1.jpg", "Latte",
                      "With Almond Milk", "\$4.00"),
                  tileMethod(
                      "assets/images/latte2.jpg", "Latte", "Latte", "\$4.00"),
                  tileMethod(
                      "assets/images/latte3.jpg", "Latte", "Latte", "\$4.00"),
                  tileMethod(
                      "assets/images/latte4.jpg", "Latte", "Latte", "\$4.00"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
