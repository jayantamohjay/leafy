import 'package:flutter/material.dart';
import '../../../../core/themes/colors.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = '/cart';

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List cartItems = [
    {
      "title": "Monstera Deliciosa",
      "subtitle": "Tropical Plant",
      "price": 24.0,
      "image": "assets/images/image1.jpg",
      "qty": 1,
    },
    {
      "title": "Snake Plant",
      "subtitle": "Air Purifier",
      "price": 15.0,
      "image": "assets/images/image2.jpg",
      "qty": 1,
    },
    {
      "title": "Fiddle Leaf Fig",
      "subtitle": "Indoor Tree",
      "price": 45.0,
      "image": "assets/images/image3.jpg",
      "qty": 1,
    },
  ];

  void increment(int index) {
    setState(() {
      cartItems[index]["qty"]++;
    });
  }

  void decrement(int index) {
    setState(() {
      if (cartItems[index]["qty"] > 1) {
        cartItems[index]["qty"]--;
      }
    });
  }

  Widget cartItem(int index) {
    var item = cartItems[index];

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Appcolors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Appcolors.lightGrey,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(item["image"], fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item["title"],
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Appcolors.black,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  item["subtitle"],
                  style: const TextStyle(fontSize: 13, color: Appcolors.grey),
                ),
                const SizedBox(height: 6),
                Text(
                  "\$${item["price"]}",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Appcolors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Icon(Icons.delete_outline, size: 18, color: Appcolors.grey),
              const SizedBox(height: 10),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => decrement(index),
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Appcolors.lightGrey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.remove, size: 16),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    item["qty"].toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => increment(index),
                    child: Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: Appcolors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 16,
                        color: Appcolors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightBackgroundColor,
      appBar: AppBar(
        backgroundColor: Appcolors.lightBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Your Basket",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Appcolors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: cartItems.length,
                  itemBuilder: (context, index) {
                    return cartItem(index);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
