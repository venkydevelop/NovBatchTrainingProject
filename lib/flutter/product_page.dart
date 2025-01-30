import 'package:flutter/material.dart';
import 'package:nov_training_session/flutter/services/sql_service.dart';

import 'dataModel/user_data_model.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  List<ProductDataModel> _products = [];
  int? productId;

  void loadProducts() async {
    final products = await SqlService.db.getAllProducts();
    setState(() {
      _products = products;
    });
  }

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SQL DataBase",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black)),
              const SizedBox(height: 20),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    hintText: "Product Name", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                    hintText: "Product Description",
                    border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: priceController,
                decoration: const InputDecoration(
                    hintText: "Product Price", border: OutlineInputBorder()),
              ),
              const SizedBox(height: 20),
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        insertProduct();
                      },
                      child: Text(productId == null ? "Insert" : "Update"))),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                    itemCount: _products.length,
                    itemBuilder: (context, index) {
                      final product = _products[index];
                      return ListTile(
                        title: Text(product.name ?? ""),
                        subtitle: Row(
                          children: [
                            Text(product.description ?? ""),
                            const SizedBox(width: 20),
                            Text("\$${product.price}"),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  updateProduct(product);
                                },
                                icon: const Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {
                                  deleteProduct(product.id ?? 0);
                                },
                                icon: const Icon(Icons.delete))
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  void insertProduct() async {
    if (nameController.text.isEmpty ||
        descriptionController.text.isEmpty ||
        priceController.text.isEmpty) {
      return;
    }
    final product = ProductDataModel(
        id: productId,
        name: nameController.text,
        description: descriptionController.text,
        price: int.parse(priceController.text));
    if (productId == null) {
      await SqlService.db.insert(product);
    } else {
      await SqlService.db.update(product);
    }
    resetData();
    loadProducts();
  }

  void updateProduct(ProductDataModel product) async {
    setState(() {
      productId = product.id;
      nameController.text = product.name ?? "No Name";
      descriptionController.text = product.description ?? "No Description";
      priceController.text = product.price.toString();
    });
  }

  void deleteProduct(int id) async {
    await SqlService.db.delete(id);
    loadProducts();
  }

  void resetData() {
    nameController.clear();
    descriptionController.clear();
    priceController.clear();
    productId = null;
  }
}
