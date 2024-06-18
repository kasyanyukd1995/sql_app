import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sql_app/features/navigation/router/app_router.dart';
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
    await _initMockData();

    state = const HomePageState.loaded();
  }

  void onWaiterTap() {
    routing.push(const TableRoute());
  }

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
        name: 'Кола',
        description: 'Очень хорошая водичка',
        price: 100.0,
        category: 'Напитки',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Спрайт',
        description: 'Очень хорошая водичка',
        price: 100.0,
        category: 'Напитки',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Сок',
        description: 'Очень хороший сок',
        price: 200.0,
        category: 'Напитки',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Горховый',
        description: 'Очень хороший суп',
        price: 200.0,
        category: 'Супы',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Легкий',
        description: 'Очень хороший суп',
        price: 200.0,
        category: 'Супы',
        inStock: 1,
      ),
    );

    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Грибной',
        description: 'Очень хороший суп',
        price: 200.0,
        category: 'Супы',
        inStock: 1,
      ),
    );
    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Стейк',
        description: 'Очень хороший стейк',
        price: 200.0,
        category: 'Горячее',
        inStock: 1,
      ),
    );
    await _productRepository.insertProduct(
      const ProductEntity(
        name: 'Котлета по киевски',
        description: 'Очень хорошая котлета',
        price: 200.0,
        category: 'Горячее',
        inStock: 1,
      ),
    );
  }
}
