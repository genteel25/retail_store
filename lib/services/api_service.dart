import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:genteel_store/model/product.dart';
import 'package:genteel_store/utils/string_constants.dart';

class ApiService {
  late Dio _dio;
  ApiService() {
    _dio = Dio(
      BaseOptions(baseUrl: StringConstants.baseUrl, queryParameters: {
        "Apikey": StringConstants.apiKey,
        "organization_id": StringConstants.organizationId,
        "Appid": StringConstants.appId,
      }),
    )
      ..options.connectTimeout = const Duration(seconds: 60)
      ..options.receiveTimeout = const Duration(seconds: 60)
      ..options.sendTimeout = const Duration(seconds: 60);
  }

  Future<Either<String, List<ProductData>>> fetchProducts() async {
    try {
      final response = await _dio.get("/products");
      final List<ProductData> products = [];
      for (var product in response.data['items']) {
        products.add(ProductData.fromJson(product));
      }
      return right(products);
    } on DioException catch (e) {
      return left(e.response?.data['detail'] ??
          "Something went wrong, pls check back later");
    } catch (e) {
      return left(e.toString());
    }
  }
}
