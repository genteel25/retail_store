import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:genteel_store/repository/repository.dart';

import '../../model/product.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final Repository _repository = Repository();
  ProductCubit() : super(ProductInitial());

  fetchProducts() async {
    emit(ProductLoading());
    try {
      final response = await _repository.fetchProducts();
      response.fold((error) => emit(ProductFailure(error: error)),
          (apiResponse) => emit(ProductSuccess(response: apiResponse)));
    } catch (e) {
      emit(ProductFailure(error: e.toString()));
    }
  }
}
