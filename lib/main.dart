import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/screens/updateProduct_page.dart';
// import 'package:store_app/screens/splash_screen.dart';

void main(){

  // WidgetsFlutterBinding.ensureInitialized();

  // FlutterNativeSpalsh.removeAfter(initialization)

  runApp(const StoreApp());
}

// Future initialization(BuildContext? context) async {
//   await Future.delayed(Duration(seconds: 3));
// }

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.id : (context)=> HomeScreen(),
        UpdateProdauctPage.id : (context)=> UpdateProdauctPage(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
