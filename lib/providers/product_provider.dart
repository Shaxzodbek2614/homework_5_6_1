import 'package:flutter/cupertino.dart';
import 'package:omework_5_6_1/models/product.dart';

import '../l10n/l10n.dart';

class ProductProvider extends ChangeNotifier{
  BuildContext context;
  ProductProvider(this.context);
   final List<Product> products = [
    Product(id: 1, image: "assets/images/img_1.png", color: Color(0xffd3f1fd), soni: 1,price: 887.00),
    Product(id: 1, image: "assets/images/img_2.png", color: Color(0xfff9e6bb), soni: 1,price: 2800.00),
    Product(id: 1, image: "assets/images/img_3.png", color: Color(0xffe5f6f5), soni: 1,price: 150.00),
    Product(id: 1, image: "assets/images/img_4.png", color: Color(0xffd3f1fd), soni: 1,price: 887.00),
  ];

  Product? _selectedProduct;

  Product? get selectedProduct => _selectedProduct;

  void selectProduct(Product product) {
    _selectedProduct = product;
    notifyListeners();
  }
}
