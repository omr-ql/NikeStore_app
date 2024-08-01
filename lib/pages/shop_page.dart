import 'package:flutter/material.dart';
import 'package:nike_store/models/cart.dart';
import 'package:nike_store/models/shoes.dart';
import 'package:nike_store/utilities/shoes_tile.dart';
import 'package:provider/provider.dart';
import 'package:lottie/lottie.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // DONE : Box Dialog With Animations
  void addShoeToCart(Shoes shoes) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoes);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.black26,
        title: const Text(
          'Successfully Added!',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        content: Container(  // Set a fixed size for the content
          width: double.minPositive,  // As wide as the content needs within the max screen width
          height: 200,  // Fixed height
          child: SingleChildScrollView(  // Allow scrolling within this fixed size
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Lottie.asset('assets/like_animation.json', repeat: false, width: 100),
                const Text(
                  'Check your cart',
                  style: TextStyle(
                      fontWeight: FontWeight.bold ,
                      color: Colors.white,
                      fontSize: 20
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                // DONE : Search Bar
                Container(
                  padding: const EdgeInsets.all(20.0),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Search'),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                // DONE : Massage
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    'Everyone Is Running ... Some Running Faster',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),

                // DONE : Hot Picks
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Hot Shoes 🔥',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                Expanded(
                  child: ListView.builder(
                    itemCount: 9,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoes shoes = value.getShopList()[index];
                      return ShoesTile(shoe: shoes, onTap: () => addShoeToCart(shoes),);
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
                  child: Divider(
                    color: Colors.grey[300],
                  ),
                )
              ],
            ));
  }
}
