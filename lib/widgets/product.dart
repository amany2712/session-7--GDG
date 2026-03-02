import 'package:flutter/material.dart';

class AppProduct extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final String image;
  AppProduct({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(image, width: 180),
              Positioned(
                top: 200,
                left: 140,
                right: 0,
                bottom: 0,
                child: Icon(Icons.favorite_border, color: Colors.red, size: 25),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),

          Text(
            '\$ ${price}',
            style: TextStyle(color: Colors.red, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
