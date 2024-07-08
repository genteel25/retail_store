import 'package:dartz/dartz.dart';
import 'package:genteel_store/model/product.dart';
import 'package:genteel_store/services/api_service.dart';

class Repository {
  static final _apiService = ApiService();

  Future<Either<String, List<ProductData>>> fetchProducts() => _apiService.fetchProducts();
}
