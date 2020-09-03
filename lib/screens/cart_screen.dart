import 'package:flutter/material.dart';
import 'package:flutter_cart_ui/widgets/circle_add.dart';
import 'package:flutter_cart_ui/widgets/colorDot.dart';
import 'package:flutter_cart_ui/widgets/orderCard.dart';
import 'package:flutter_cart_ui/widgets/paymentCard.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Cart"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Deliver To",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(),
                  child: ListTile(
                    leading: ColorDot(),
                    title: Text(
                      "Currently Selected",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("10, Road-2, Uttara"),
                    trailing: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {},
                    ),
                  ),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAdd(),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Add new Address",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 2,
                    right: 250,
                    top: 20,
                    bottom: 5,
                  ),
                  child: Text(
                    "Payment method",
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Card(
                  child: PaymentCard(),
                ),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "By proceeding, you ensure that you have read and agreed to the terms & conditions on Shohoz Blog and Facebook page",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Your Order",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[800],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: FloatingActionButton(
                              onPressed: null,
                              shape: RoundedRectangleBorder(),
                              child: Icon(Icons.add),
                              backgroundColor: Colors.green,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Add more item",
                            style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Card(
                  child: OrderCard(),
                ),
                Card(
                  child: OrderCard(),
                ),
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.green,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Total : 333.40",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
