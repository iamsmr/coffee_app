import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int price = 30;
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.all(20),
          height: height * 0.45,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://images.indianexpress.com/2019/05/coffee-759.jpg',
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.pop(context)
              ),
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: height * 0.4),
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Coffee',
                  style: TextStyle(fontSize: 22, letterSpacing: 1),
                ),
                Text(
                  'Cappueeino',
                  style: TextStyle(
                      fontSize: 40,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),
                SizedBox(height: 13),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and "
                  "typesetting industry. Lorem Ipsum has been the industry's"
                  " standard dummy text ever since the 1500s, when an unknown"
                  " printer took a galley of type and scrambled it to make a type",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 13),
                Text(
                  '\$ ${price.toString()}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      child: Text('+'),
                      onPressed: () => setState(() => quantity++),
                    ),
                    Text(quantity.toString()),
                    FlatButton(
                      child: Text('-'),
                      onPressed: () => setState(() => quantity--),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.brown[900],
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Order Now',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
