import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Appcolors.white,
      ),
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR05Uvc2_cuEj7VpWLT0OclBolefGyKQBjTiQ&s',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
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
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$45.00',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green[900],
                ),
              ),
              CircleAvatar(
                minRadius: 14,
                backgroundColor: Colors.green[900],
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
