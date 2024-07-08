import 'package:flutter/material.dart';
import 'package:genteel_store/model/product.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'product_item.dart';

class ProductLoader extends StatefulWidget {
  const ProductLoader({super.key});

  @override
  State<ProductLoader> createState() => _ProductLoaderState();
}

class _ProductLoaderState extends State<ProductLoader> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) => Skeletonizer(
        child: ProductItemWidget(
          product: ProductData(name: "name", image: "image", price: 2000),
        ),
      ),
      itemCount: 10,
    );
  }
}
