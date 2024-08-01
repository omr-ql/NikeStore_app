import 'package:flutter/cupertino.dart';
import 'package:nike_store/models/shoes.dart';

class Cart with ChangeNotifier {
  // DONE : Shoes Category
  List<Shoes> shoesShop = [
    // DONE : Shoes 1
    Shoes(
        name: 'Nike Blazer',
        price: '2499',
        description:
            'Blazer',
        imagePath: 'images/photo1.jpeg'
    ),
    // DONE : Shoes 2
    Shoes(
        name: 'Air Jordan 4 ',
        price: '2799',
        description:
        'The Jordan 4 Shoes Best Quality Ever ',
        imagePath: 'images/photo2.jpeg'
    ),
    // DONE : Shoes 3
    Shoes(
        name: 'Air Force 1 White',
        price: '2499',
        description:
        'White Shoes With Modern Design',
        imagePath: 'images/photo3.jpeg'
    ),
    // DONE : Shoes 4
    Shoes(
        name: 'Eastside Golf Force',
        price: '2799',
        description:
        'Jordan 12 Golf With Dark Blue And Beige Design',
        imagePath: 'images/photo4.jpeg'
    ),
    // DONE : Shoes 5
    Shoes(
        name: 'Air Jordan 1 White Mid ',
        price: '2699',
        description:
        'White Sneakers With Comfortable Tie',
        imagePath: 'images/photo5.jpeg'
    ),
    // DONE : Shoes 6
    Shoes(
        name: 'Air Jordan 1 High Grey ',
        price: '2699',
        description:
        'Dark Gray Sneakers With Comfortable Tie',
        imagePath: 'images/photo6.jpeg'
    ),
    // DONE : Shoes 7
    Shoes(
        name: 'Air Jordan 1 Low Grey',
        price: '2799',
        description:
        'Air Jordan 1 Low Grey Suitable For Running And Hanging Out',
        imagePath: 'images/photo7.jpeg'
    ),
    // DONE : Shoes 8
    Shoes(
        name: 'Air Force 1 Black ',
        price: '2799',
        description:
        'Black Shoes With Modern Design',
        imagePath: 'images/photo8.jpeg'
    ),
    // DONE : Shoes 9
    Shoes(
        name: 'Air Force 1 Coffee ',
        price: '2399',
        description:
        'Very Creative Design For Cat Lovers And Coffee Addicted People',
        imagePath: 'images/photo9.jpeg'
    ),
  ];

  // DONE : Where I Save The Customer Shoes
  List <Shoes> _items = [] ;

  List<Shoes> get items => _items;

  // DONE : Get What Saved Inside The Shop List And User Cart
  List <Shoes> getShopList () {
    return shoesShop ;
  }
  List <Shoes> getUserCart () {
    return _items ;
  }

  // DONE : Add Item To The Cart
  void addItemToCart(Shoes shoe) {
    _items.add(shoe);
    notifyListeners();
  }

  // DONE : Delete Item To The Cart
  void removeItemToCart(Shoes shoe) {
    _items.remove(shoe);
    notifyListeners();
  }
}