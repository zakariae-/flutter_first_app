import 'package:flutter/material.dart';
import '../product_manager.dart';
import './products_admin.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function addProduct;
  final Function deleteProduct;

  ProductsPage(this.products, this.addProduct, this.deleteProduct);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Product'),
              onTap: () => Navigator.pushReplacementNamed(context, '/admin'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('First App'),
      ),
      body: ProductManager(products, addProduct, deleteProduct),
    );
  }
}
