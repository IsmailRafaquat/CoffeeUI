import 'package:flutter/material.dart';

class CoffeeTiles extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  const CoffeeTiles({super.key,
  required this.coffeeImagePath,
  required this.coffeeName,
  required this.coffeePrice
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
            padding:const EdgeInsets.all(12) ,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Coffee Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(coffeeImagePath),
                ),
                //Text
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Text(coffeeName,
                      style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(height: 4,),
                      Text('With Almond Milk',
                      style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text('\$ $coffeePrice'),
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(6)
                  
                        ),
                        child: const Icon(Icons.add))
                    ],
                  ),
                )   
              ],
            ),    
        ),
      );
  }
}