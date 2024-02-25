import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct{
  Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> data =
        Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'description': desc,
      'image': image,
      'category': category,
      'price': price,
    });
    return ProductModel.fromJson(data);
  }
}