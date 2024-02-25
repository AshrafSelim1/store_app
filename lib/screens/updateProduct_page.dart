import 'package:flutter/material.dart';
import 'package:store_app/widget/custom_button.dart';
import 'package:store_app/widget/custom_textField.dart';

class UpdateProdauctPage extends StatelessWidget {
  const UpdateProdauctPage({super.key});
  static String id = "updateProdauct";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Update Prodauct',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              hintText: 'Product name',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Description',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Price',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: 'Image',
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(text: 'Update')
          ],
        ),
      ),
    );
  }
}
