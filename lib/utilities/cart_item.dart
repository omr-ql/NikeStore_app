import 'package:flutter/material.dart';
import 'package:nike_store/models/cart.dart';
import 'package:nike_store/models/shoes.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoes shoes;
  CartItem({
    super.key,
    required this.shoes,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItem() {
    Provider.of<Cart>(context, listen: false).removeItemToCart(widget.shoes);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.only(bottom: 10),
          child: ListTile(
            leading: Image.asset(widget.shoes.imagePath),
            title: Text(widget.shoes.name),
            subtitle: Text(widget.shoes.price.toString()), // Ensure price is a string
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: removeItem, // Call the removeItem function
            ),
          ),
        ),
      ],
    );
  }
}
