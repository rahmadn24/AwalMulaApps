import 'package:awalmula/models/product_model.dart';
import 'package:awalmula/services/product_service.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> _products = [];

  List<ProductModel> get products => _products;

  init() {
    getProducts();
  }

  set products(List<ProductModel> products) {
    _products = products;
    notifyListeners();
  }

  Future<void> getProducts() async {
    print("masuk provider");
    try {
      List<ProductModel> products = await ProductService().getProducts();
      print(products);
      _products = products;
    } catch (e) {
      print(e);
    }
  }
}
