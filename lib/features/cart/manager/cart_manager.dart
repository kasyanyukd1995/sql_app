import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/features/cart/presentation/vm/order_view_model.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/src/data/repositories/index.dart';
import 'package:sql_app/src/data/repositories/order_flow_repository.dart';
import 'package:sql_app/src/shared/base/base_manager.dart';

part 'cart_manager.freezed.dart';
part 'cart_page_state.dart';

class CartManager extends BaseManager<CartPageState> {
  final OrderFlowRepository _orderFlowRepository;
  final OrdersRepository _ordersRepository;

  CartManager(
    this._orderFlowRepository,
    this._ordersRepository,
  ) : super(const CartPageState(items: []));

  @override
  Future<void> onInit() async {
    update();

    addPermanentSubscription(_orderFlowRepository.orderFlowEntity.updates.listen((orderFlow) {
      update();
    }));
  }

  void update() {
    state = CartPageState(
      items: _orderFlowRepository.orderFlowEntity.currentValue.products
              ?.map((e) => CartItemViewModel(
                    domain: e.productEntity,
                    imageUrl:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJvrjzxOfQpQaqRvdz-oJJS4_evtYSw8op2g&s',
                    primaryText: e.productEntity.name,
                    secondaryText: e.productEntity.description,
                    totalPrice: e.productEntity.price * e.quantity,
                    count: e.quantity,
                  ))
              .toList() ??
          [],
    );
  }

  void onMakeOrderTap() async {
    EasyLoading.show();
    await Future.delayed(const Duration(seconds: 2));

    _ordersRepository.makeOrder(_orderFlowRepository.orderFlowEntity.currentValue);
    EasyLoading.dismiss();

    routing.replaceAll([
      const HomeRoute(),
      const OrdersRoute(),
    ]);
  }

  void increment(CartItemViewModel orderViewModel) {
    _orderFlowRepository.addProduct(orderViewModel.domain);
  }

  void decrement(CartItemViewModel orderViewModel) {
    _orderFlowRepository.removeProduct(orderViewModel.domain);
  }
}
