import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int cartCount = 0;
  void addToCart() {
    setState(() {
      cartCount ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade100,
        title: Text("Cart: $cartCount"),
      ),
      body: Column(
        children: [
          ProductItem(
            name: "Shoes",
            onAdd: addToCart,
          ),
          ProductItem(
            name: "Shirt",
            onAdd: addToCart,
          ),
        ],
      ),
    );
  }
}
class ProductItem extends StatelessWidget {
  final String name;
  final VoidCallback onAdd;

  ProductItem({required this.name, required this.onAdd});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: const Color.fromARGB(237, 255, 252, 252)),
        onPressed: onAdd,
        child: Text("Add to Cart"),
      ),
    );
  }
}
