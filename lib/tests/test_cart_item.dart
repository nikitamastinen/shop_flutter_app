/// Flutter code sample for Card

// This sample shows creation of a [Card] widget that shows album information
// and two actions.

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shop_flutter_app/components/cart/cart_item.dart';
import 'package:shop_flutter_app/components/cart/cart_items_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( //use MaterialApp() widget like this
        home: MyApp2() //create new widget class for this 'home' to
      // escape 'No MediaQuery widget found' error
    );
  }
}

/// This is the main application widget.
///
///
class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();


}

class _MyAppState extends State<MyApp2> {
  int _counter = 22;

  void _increaseCounter() {
    setState(() {
      ++_counter;
      log('Круассан');
    });
  }

  void _decreaseCounter() {
    setState(() {
      --_counter;
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: CartItem(
    //     amount: _counter,
    //     description: 'Круассан с вишней',
    //     tag: 'Круасссаны | 500г',
    //     imageUrl: 'https://thumbs.dreamstime.com/b/%D0%BA%D1%80%D1%83%D0%B0%D1%81%D1%81%D0%B0%D0%BD-%D0%BD%D0%B0-%D1%87%D0%B5%D1%80%D0%BD%D0%BE%D0%BC-%D1%84%D0%BE%D0%BD%D0%B5-%D1%81-%D1%81%D0%B0%D1%85%D0%B0%D1%80%D0%BE%D0%BC-159283320.jpg',
    //     price: 1,
    //     onAmountIncreased: _increaseCounter,
    //     onAmountDecreased: _decreaseCounter,
    //   ),
    // );
    return const Scaffold(body: CartItemList(height: 478,));
  }
}
