import 'package:exemplosdeteste/pages/chat_app.dart';
import 'package:exemplosdeteste/pages/credit_card.dart';
import 'package:exemplosdeteste/pages/dash_board.dart';
import 'package:exemplosdeteste/pages/login_app.dart';
import 'package:exemplosdeteste/pages/login_page.dart';
import 'package:exemplosdeteste/pages/travel_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //home: LoginPage(),
    //home: TravelApp(),
    //home: ChatApp(),
    home: CreditCard(),
  ));
}

