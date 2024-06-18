class OrderViewModel {
  final String imageUrl;
  final String primaryText;
  final String secondaryText;
  final double totalPrice;
  int count;

  OrderViewModel({
    required this.imageUrl,
    required this.primaryText,
    required this.secondaryText,
    required this.totalPrice,
    required this.count,
  });
}
