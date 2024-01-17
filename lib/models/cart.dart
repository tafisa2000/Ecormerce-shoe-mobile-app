import 'package:flutter/widgets.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes in sales
  List<Shoe> shoeShop = [
    Shoe(
        name: 'air max',
        price: '60000',
        imagePath: 'images/airmax.jpg',
        description: 'fimbo'),
    Shoe(
        name: 'jordan 1',
        price: '70000',
        imagePath: 'images/jordan1.jpg',
        description: 'unyama mwing'),
    Shoe(
        name: 'air force',
        price: '50000',
        imagePath: 'images/airforce.jpg',
        description: 'ya moto'),
    Shoe(
        name: 'jordan 4',
        price: '70000',
        imagePath: 'images/jordan4.jpg',
        description: 'kiboko')
  ];

  //list ofitems in user cart
  List<Shoe> useCart = [];

  //get cart
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    useCart.add(shoe);
    notifyListeners();
  }

  //remove item to cart
  void removeItemFromCart(Shoe shoe) {
    useCart.remove(shoe);
    notifyListeners();
  }

  List<Shoe> getUserCart() {
    return useCart;
  }
}
