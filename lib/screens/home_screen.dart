import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/get_all_product.dart';
import 'package:store_app/widget/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = "HomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.cartPlus,
              color: Colors.black,
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'New Trend',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 65,
        ),
        child: FutureBuilder<List<ProductModel>>(
            future: GetAllProduct().getAllProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<ProductModel> products = snapshot.data!;
                return GridView.builder(
                  itemCount: products.length,
                  clipBehavior: Clip.none,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 80,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.5,
                  ),
                  itemBuilder: (context, index) {
                    return  CustomWidget(product: products[index]);
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     http.Response response = await http
      //         .post(Uri.parse("https://fakestoreapi.com/products"), body: {
      //       "title": "test product",
      //       "price": "13.5",
      //       "description": "lorem ipsum set",
      //       "image": "https://i.pravatar.cc",
      //       "category": "electronic",
      //     }, headers: {
      //       'Accept': 'application/json',
      //       'Content-Type': 'application/x-www-form-urlencoded',
      //       'Authorization': 'Bearer ',
      //     });
      //     print(response.body);
      //   },
      //   tooltip: "Incremenet",
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
