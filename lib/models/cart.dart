import 'package:flutter/cupertino.dart';

import 'shoe.dart';
import 'package:flutter/foundation.dart';
class Cart extends ChangeNotifier{
  List<Shoe>shoeShop = [
    Shoe(name: 'BlueHeels',
      price: '236',
      description: 'The forward thinking of fashion',
      imagePath: 'lib/images/blueheels.jpeg',
    ),
    Shoe(name: 'BlackHeels',
      price: '220',
      description: 'Enhance your fashion',
      imagePath: 'lib/images/blackheels.jpeg',
    ),
    Shoe(name: 'SilverHeels',
      price: '290',
      description: 'Secured fashion',
      imagePath: 'lib/images/silverheels.jpeg',
    ),
  ];
  List<Shoe>userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe){


  userCart.add(shoe);
  notifyListeners();
}
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();
}
}