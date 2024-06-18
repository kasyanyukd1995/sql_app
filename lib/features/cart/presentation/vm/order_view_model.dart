import 'package:sql_app/src/domain/entities/index.dart';

class CartItemViewModel {
  final String imageUrl;
  final String primaryText;
  final String secondaryText;
  final double totalPrice;
  final int count;
  final ProductEntity domain;

  CartItemViewModel({
    required this.imageUrl,
    required this.primaryText,
    required this.secondaryText,
    required this.totalPrice,
    required this.count,
    required this.domain,
  });
}
