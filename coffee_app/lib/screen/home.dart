import 'package:coffee_app/screen/order.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1551610290-e153ec567dd8?'
                  'ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=913&q=80',
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(.7),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '"Great Day With Coffee"'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.yellow[300],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Coffee',
                  style: TextStyle(
                    fontSize: 47,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                    'https://www.pikpng.com/pngl/b/48-480317_free-coffee-cup-png-images-coffee-cup-top.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 45),
                GestureDetector(
                  onTap:()=> Navigator.push(context, MaterialPageRoute(builder: (_)=> Order())),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.yellow[400],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
