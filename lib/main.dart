import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:genteel_store/cubit/product/product_cubit.dart';
import 'package:genteel_store/utils/colors.dart';

import 'controller/product.dart';
import 'utils/size_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocProvider<ProductCubit>(
      create: (context) => ProductCubit(),
      child: MaterialApp(
        title: 'Genteel Store',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
          useMaterial3: true,
        ),
        home: const ProductScreen(),
      ),
    );
  }
}
