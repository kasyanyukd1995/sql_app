import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/src/data/repositories/index.dart';
import 'package:sql_app/src/domain/entities/index.dart';
import 'package:sql_app/src/shared/base/base_manager.dart';

part 'home_manager.freezed.dart';
part 'home_page_state.dart';

class HomeManager extends BaseManager<HomePageState> {
  final ProductRepository _productRepository;
  final WaiterRepository _waiterRepository;
  final OrderItemRepository _orderItemRepository;
  final OrdersRepository _ordersRepository;

  HomeManager(
    this._productRepository,
    this._waiterRepository,
    this._orderItemRepository,
    this._ordersRepository,
  ) : super(const HomePageState.loading());

  @override
  Future<void> onInit() async {
    _initMockData();
  }

  void onWaiterTap() {}

  void onCashierTap() {}

  Future<void> _initMockData() async {
    await _waiterRepository.clearTable();
    await _orderItemRepository.clearTable();
    await _ordersRepository.clearTable();
    await _productRepository.clearTable();

    await _waiterRepository.insertWaiter(
      WaiterEntity(
        firstName: 'Ivan',
        lastName: 'Ivanov',
        email: 'email',
        phone: '12341233434',
        hireDate: DateTime.now(),
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product1',
        description: 'description',
        price: 100.0,
        category: 'Group1',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product2',
        description: 'description',
        price: 100.0,
        category: 'Group1',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product3',
        description: 'description',
        price: 100.0,
        category: 'Group1',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product21',
        description: 'description',
        price: 100.0,
        category: 'Group2',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product22',
        description: 'description',
        price: 100.0,
        category: 'Group2',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product23',
        description: 'description',
        price: 100.0,
        category: 'Group2',
        inStock: 1,
      ),
    );
    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product31',
        description: 'description',
        price: 100.0,
        category: 'Group3',
        inStock: 1,
      ),
    );
    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Product32',
        description: 'description',
        price: 100.0,
        category: 'Group3',
        inStock: 1,
      ),
    );
  }
}
