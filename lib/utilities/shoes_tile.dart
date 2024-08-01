import 'package:flutter/material.dart';
import 'package:nike_store/models/shoes.dart';

class ShoesTile extends StatelessWidget {
  Shoes shoe;
  void Function()? onTap;
  ShoesTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // DONE : Shoes Picture
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: SizedBox(
              height: 190,
              width: 190,
              child: Image.asset(
                shoe.imagePath,
                fit: BoxFit
                    .cover, // Optional: to ensure the image covers the box
              ),
            ),
          ),
          // DONE : Description
          Text(
            shoe.description,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 8,
            ),
            textAlign: TextAlign.center,
          ),
          // DONE : Price And Details
          Row(
            children: [
              Column(
                children: [
                  // DONE : Shoes Name
                  Text(
                    shoe.name,
                    style:  const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // DONE : Price
                  Padding(
                    padding:  EdgeInsets.only(top: 14),
                    child: Text(
                      '\EGP ${shoe.price}',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  // DONE : Plus Button With Directed Button :
                  GestureDetector(
                    onTap: onTap,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: Container(
                        padding: const EdgeInsets.all(13),
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            )),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
