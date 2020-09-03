import 'package:flutter/material.dart';
import 'package:flutter_cart_ui/widgets/colorDot.dart';
import 'package:flutter_cart_ui/widgets/unselectedColorDot.dart';

class PaymentCard extends StatefulWidget {
  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ColorDot(),
          title: Text(
            "Cash on Delivery",
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: UnSelectedColorDot(),
          title: Text(
            "bKash",
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: UnSelectedColorDot(),
          title: Text(
            "Card",
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
