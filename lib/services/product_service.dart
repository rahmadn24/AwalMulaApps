import 'dart:convert';
import 'package:awalmula/models/product_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  Future<List<ProductModel>> getProducts() async {
    Uri base_url = Uri.parse(
        'https://staging.awalmula.co.id/rest/default/V1/products?searchCriteria[pageSize]=10');
    print("masuk future");
    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(base_url, headers: headers);

    print(response.body);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['items'];
      List<ProductModel> products = [];
      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }
      return products;
    } else {
      throw Exception('Gagal Get Products!');
    }
  }
}
