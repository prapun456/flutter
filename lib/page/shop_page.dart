import 'package:flutter/material.dart';

void main() {
  runApp(Usershop());
}

class Usershop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shop Page'),
        ),
        body: ShopPage(),
      ),
    );
  }
}

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with the actual number of products.
      itemBuilder: (context, index) {
        // Replace with your product data.
        final productName = 'Product ${index + 1}';
        final productPrice = '\$${(index + 1) * 10}';

        return ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text(productName),
          subtitle: Text('Price: $productPrice'),
          trailing: ElevatedButton(
            onPressed: () {
              // Add functionality to view product details or add to cart.
            },
            child: Text('View'),
          ),
        );
      },
    );
  }
}
