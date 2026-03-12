import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';

import '../widgets/product_item.dart';
import '../widgets/products_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actionsPadding: const EdgeInsets.only(right: 20),
        leadingWidth: MediaQuery.sizeOf(context).width * 0.5,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: TextStyle(fontSize: 14, color: Appcolors.grey),
              ),
              const SizedBox(height: 2),
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Appcolors.primaryColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              //border: Border.all(color: const Color(0xFF2A3A31), width: 1),
              color: Colors.white,
            ),
            child: const Icon(
              Icons.person_2_outlined,
              color: Appcolors.primaryColor,
              size: 20,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Appcolors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Appcolors.lightGrey,
                  ),
                  hintText: 'Search for your next plant...',
                  hintStyle: const TextStyle(color: Appcolors.lightGrey),
                ),
              ),
            ),
            SizedBox(height: 2),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ChoiceChip(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text("All Plants"),
                    selected: false,
                    backgroundColor: Appcolors.primaryColor,
                    labelStyle: TextStyle(color: Appcolors.white),
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 10),
                  ChoiceChip(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text(
                      "Indoor",
                      style: TextStyle(color: Appcolors.primaryColor),
                    ),
                    selected: false,
                    backgroundColor: Appcolors.lightGrey,
                    labelStyle: TextStyle(color: Appcolors.black),
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 10),
                  ChoiceChip(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: const Text(
                      "Outdoor",
                      style: TextStyle(color: Appcolors.primaryColor),
                    ),
                    selected: false,
                    backgroundColor: Appcolors.lightGrey,
                    labelStyle: const TextStyle(color: Appcolors.black),
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 10),
                  ChoiceChip(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    label: Text(
                      "Succulents",
                      style: TextStyle(color: Appcolors.primaryColor),
                    ),
                    selected: false,
                    backgroundColor: Appcolors.lightGrey,
                    labelStyle: TextStyle(color: Appcolors.black),
                    onSelected: (value) {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Appcolors.primaryColor,
                    ),
                  ),
                  Text(
                    'view all',
                    style: TextStyle(color: Appcolors.primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ProductItem();
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrivals',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Appcolors.primaryColor,
                    ),
                  ),
                  Text(
                    'See more',
                    style: TextStyle(color: Appcolors.primaryColor),
                  ),
                ],
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 20,
              physics:
                  const NeverScrollableScrollPhysics(), 
              shrinkWrap: true, 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.65,
              ),
              itemBuilder: (context, index) {
                return const ProductsCard();
              },
            ),
          ],
        ),
      ),
    );
  }
}
