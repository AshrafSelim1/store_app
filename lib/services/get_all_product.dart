import 'dart:developer';

import 'package:store_app/helper/api.dart';
import '../models/product_model.dart';

class GetAllProduct {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products", token: '');
    List<ProductModel> productList = [];
    for (int i = 0; i < data.length; i++) {

      productList.add(
        ProductModel.fromJson(data[i]),
      );

    }
    log('return data');
    return productList;
  }
}
