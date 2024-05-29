part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}

class ProductDataLoaded extends ProductEvent {
  final int id;

  ProductDataLoaded({required this.id});
}
