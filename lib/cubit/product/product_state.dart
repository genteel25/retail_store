part of 'product_cubit.dart';

sealed class ProductState extends Equatable {}

final class ProductInitial extends ProductState {
  @override
  List<Object?> get props => [];
}

final class ProductLoading extends ProductState {
  @override
  List<Object?> get props => [];
}

final class ProductSuccess extends ProductState {
  final List<ProductData> response;
  ProductSuccess({required this.response});
  @override
  List<Object?> get props => [response];
}

final class ProductFailure extends ProductState {
  final String error;
  ProductFailure({required this.error});

  @override
  List<Object?> get props => [error];
}
