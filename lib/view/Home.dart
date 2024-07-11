import 'package:coffee_desgin/utils/coffeetiles.dart';
import 'package:coffee_desgin/utils/coffeetype.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List CoffeeTypeList = [
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Tea', false]
  ];

  void CoffeeTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < CoffeeTypeList.length; i++) {
        CoffeeTypeList[i][1] = false;
      }
      CoffeeTypeList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          ),
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
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Find the best Coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 60),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CoffeeTypeList.length,
              itemBuilder: (context, index) {
                return CoffeeType(
                  coffeeType: CoffeeTypeList[index][0],
                  isSelected: CoffeeTypeList[index][1],
                  onTap: () {
                    CoffeeTypeSelected(index);
                  },
                );
              },
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTiles(
                  coffeeImagePath: 'assets/images/Coffee.png',
                  coffeeName: 'Cappucino',
                  coffeePrice: '4.20',
                ),
                CoffeeTiles(
                  coffeeImagePath: 'assets/images/coffee2.png',
                  coffeeName: 'Latte',
                  coffeePrice: '5.00',
                ),
                CoffeeTiles(
                  coffeeImagePath: 'assets/images/coffee3.png',
                  coffeeName: 'Black',
                  coffeePrice: '6.20',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
