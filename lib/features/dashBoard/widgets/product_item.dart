import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Container(
            height: 280,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white, 
            ),
            padding: EdgeInsets.all(15),
            //  margin: EdgeInsetsDirectional.all(20),
            margin: EdgeInsets.all(15),
            //  color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect( 
                  borderRadius: BorderRadius.circular(
                    12,
                  ), // change radius as needed
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR05Uvc2_cuEj7VpWLT0OclBolefGyKQBjTiQ&s',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 25),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Monstera Deliciosa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '\$45.00',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green[900],
                      ),
                    ),
                    SizedBox(width: 99),
                    CircleAvatar(
                      minRadius: 10,
                      backgroundColor: Colors.green[900],
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
