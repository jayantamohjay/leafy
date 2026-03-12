import 'package:flutter/material.dart';

class ProductsCard extends StatefulWidget {
  const ProductsCard({super.key});

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYRk9-R7S6mI77jHnzKy_Ca0BY9Klv8R6luw&s',
              fit: BoxFit.fitWidth,
            ),
          ),
          SizedBox(height: 8),
          Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Echeveria',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$12.00',
                style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.favorite_border_outlined,
                size: 20,
                color: Colors.green[900],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
