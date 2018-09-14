import 'package:flutter/material.dart';

import './product_edite.dart';

class ProductListPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;
  final Function updateProduct;
  final Function deleteProduct;

  ProductListPage(this.products, this.updateProduct, this.deleteProduct);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          key: Key(index.toString()),
          background: Container(
            color: Colors.red,
          ),
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.endToStart) {
              deleteProduct(index);
            }
          },
          child: Column(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    products[index]['image'],
                  ),
                ),
                title: Text(products[index]['title']),
                subtitle: Text('\$${products[index]['price'].toString()}'),
                trailing: IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return ProductEditePage(
                            product: products[index],
                            updateProduct: updateProduct,
                            productIndex: index,
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
              )
            ],
          ),
        );
      },
      itemCount: products.length,
    );
  }
}
