/// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shop_flutter_app/components/cart/cart_item.dart';
import 'package:shop_flutter_app/database/models/hive_cart_product.dart';
import 'package:shop_flutter_app/database/models/hive_product.dart';
import 'package:shop_flutter_app/database/models/hive_tag.dart';
import 'package:shop_flutter_app/database/init_hive.dart';
import 'package:shop_flutter_app/models/cart_product.dart';
import 'package:shop_flutter_app/models/product.dart';
import 'package:shop_flutter_app/screens/main/cart_tab.dart';

import '../dependencies.dart';


void main() async {
  await Dependencies.init();
  HiveBuilder builder = await HiveBuilder.build();
  final box = builder.cartBox;
  // Hive.registerAdapter(HiveCartProductAdapter());
  //final box = await Hive.openBox<HiveCartProduct>('items');
  // HiveBuilder box = await HiveBuilder.build();
  //Hive.registerAdapter(HiveCartProductAdapter());
  // final box = await Hive.openBox<HiveCartProduct>('items');
  await box.put('1', HiveCartProduct(amount: 1, product: HiveProduct(title: "Пирожки",
    tags: [HiveTag(title: "dfdd", id: "ds")],
    imageUrl:
    "https://image.freepik.com/free-photo/baking-ingredients-on-black-background_88281-3772.jpg",
    price: 98,
    id: '',)));
  final kek = box.get('1');
  log(kek!.amount.toString());
  log(kek.product.title.toString());
  // dynamic g = box.cartBox.get('1');
  // print(g);
  // runApp(const MyApp());
}
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return StoreProvider(
//       store: Dependencies.instance.store,
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           // This is the theme of your application.
//           //
//           // Try running your application with "flutter run". You'll see the
//           // application has a blue toolbar. Then, without quitting the app, try
//           // changing the primarySwatch below to Colors.green and then invoke
//           // "hot reload" (press "r" in the console where you ran "flutter run",
//           // or simply save your changes to "hot reload" in a Flutter IDE).
//           // Notice that the counter didn't reset back to zero; the application
//           // is not restarted.
//           primarySwatch: Colors.blue,
//         ),
//         home: const MyApp2(),
//       ),
//     );
//   }
//
// // @override
// // Widget build(BuildContext context) {
// //   return const MaterialApp( //use MaterialApp() widget like this
// //       home: MyApp2() //create new widget class for this 'home' to
// //     // escape 'No MediaQuery widget found' error
// //   );
// // }
// }
//
// /// This is the main application widget.
// ///
// ///
// class MyApp2 extends StatefulWidget {
//   const MyApp2({Key? key}) : super(key: key);
//
//   @override
//   _MyAppState createState() => _MyAppState();
//
//
// }
//
// class _MyAppState extends State<MyApp2> {
//   int _counter = 22;
//
//   void _increaseCounter() {
//     setState(() {
//       ++_counter;
//       log('Круассан');
//     });
//   }
//
//   void _decreaseCounter() {
//     setState(() {
//       --_counter;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   body: CartItem(
//     //     amount: _counter,
//     //     description: 'Круассан с вишней',
//     //     tag: 'Круасссаны | 500г',
//     //     imageUrl: 'https://thumbs.dreamstime.com/b/%D0%BA%D1%80%D1%83%D0%B0%D1%81%D1%81%D0%B0%D0%BD-%D0%BD%D0%B0-%D1%87%D0%B5%D1%80%D0%BD%D0%BE%D0%BC-%D1%84%D0%BE%D0%BD%D0%B5-%D1%81-%D1%81%D0%B0%D1%85%D0%B0%D1%80%D0%BE%D0%BC-159283320.jpg',
//     //     price: 1,
//     //     onAmountIncreased: _increaseCounter,
//     //     onAmountDecreased: _decreaseCounter,
//     //   ),
//     // );
//     return const Scaffold(body: CartTab());
//   }
// }

