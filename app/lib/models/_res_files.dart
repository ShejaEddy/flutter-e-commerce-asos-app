import 'package:flutter/material.dart';
import 'Product.dart';
import '_payment_cart_model.dart';

class Res {
  static List<PayCard> getPaymentTypes() {
    List<PayCard> cards = [];
    cards.add(new PayCard(
        title: "Net Banking",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    cards.add(new PayCard(
        title: "Credit Card",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    cards.add(new PayCard(
        title: "Debit Card",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    cards.add(new PayCard(
        title: "Wallet pay",
        description: "Pay bill using card",
        image: "assets/images/paycard.png"));
    return cards;
  }
}
