import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genteel_store/cubit/product/product_cubit.dart';

import '../view/product.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  ProductController createState() => ProductController();
}

class ProductController extends State<ProductScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) => ProductView(this);

  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().fetchProducts();
  }
}
