import 'package:flutter/material.dart';

class OrderCard extends StatefulWidget {
  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10,bottom: 20,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Chicken Pizza (6\" Pizza)",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "+(No Addon)",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: FloatingActionButton(
                        onPressed: null,
                        shape: RoundedRectangleBorder(),
                        child: Icon(Icons.remove),
                        backgroundColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 30,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text(
                          "1",
                        ),
                      ),
                    ),
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
                      width: 6,
                    ),
                    Text(
                      "X",
                      style: TextStyle(fontSize: 10),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Text(
                            "499.00",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 2.85,
                            ),
                          ),
                          Text(
                            "149.70",
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "499.00",
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 2.85,
                ),
              ),
              Text("149.70"),
            ],
          )
        ],
      ),
    );
  }
}
