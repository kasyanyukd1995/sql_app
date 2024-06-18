import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
import 'package:sql_app/src/data/repositories/index.dart';
import 'package:sql_app/src/data/repositories/order_flow_repository.dart';
import 'package:sql_app/src/domain/entities/index.dart';
import 'package:sql_app/src/shared/base/base_manager.dart';

part 'product_manager.freezed.dart';
part 'product_page_state.dart';

class ProductManager extends BaseManager<ProductPageState> {
  final ProductRepository _productRepository;
  final WaiterRepository _waiterRepository;
  final OrderFlowRepository _orderFlowRepository;

  ProductManager(
    this._productRepository,
    this._waiterRepository,
    this._orderFlowRepository,
  ) : super(const ProductPageState.loading());

  @override
  Future<void> onInit() async {
    final products = await _productRepository.getProducts();

    final productsByCategory = groupBy(products, (e) => e.category);

    state = ProductPageState.loaded(
      products: productsByCategory,
      cartItemsAmount: _orderFlowRepository.orderFlowEntity.currentValue.products?.length ?? 0,
    );

    addPermanentSubscription(
      _orderFlowRepository.orderFlowEntity.updates.listen((orderFlow) {
        state = state.map(
          loading: (s) => s,
          loaded: (s) => s.copyWith(
            cartItemsAmount: orderFlow.products?.length ?? 0,
          ),
        );
      }),
    );
  }

  void onProductTap(ProductEntity productEntity) async {
    //showDialog
    final quantity = await dialogService.showAmountPicker(
      items: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      title: 'Количество',
      toTitle: (i) => i.toString(),
    );

    if (quantity == null) {
      return;
    }

    _orderFlowRepository.addProduct(
      productEntity,
      quantity: quantity,
    );
  }

  void onCartTap() {
    routing.push(const CartRoute());
  }
}
