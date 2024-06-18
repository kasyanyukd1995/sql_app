import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:sql_app/src/data/repositories/product_repository.dart';
import 'package:sql_app/src/data/repositories/waiter_repository.dart';
import 'package:sql_app/src/domain/entities/index.dart';
import 'package:sql_app/src/shared/base/base_manager.dart';

part 'home_manager.freezed.dart';
part 'home_page_state.dart';

class HomeManager extends BaseManager<HomePageState> {
  final ProductRepository _productRepository;
  final WaiterRepository _waiterRepository;

  HomeManager(
    this._productRepository,
    this._waiterRepository,
  ) : super(const HomePageState.loading());

  @override
  Future<void> onInit() async {
    // await _waiterRepository.insertWaiter(
    //   WaiterEntity(
    //       firstName: 'Ivan',
    //       lastName: 'Ivanov',
    //       email: 'email',
    //       phone: '12341233434',
    //       hireDate: DateTime.now()),
    // );

    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product1',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group1',
    //     inStock: 1,
    //   ),
    // );

    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product2',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group1',
    //     inStock: 1,
    //   ),
    // );

    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product3',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group1',
    //     inStock: 1,
    //   ),
    // );

    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product21',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group2',
    //     inStock: 1,
    //   ),
    // );

    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product22',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group2',
    //     inStock: 1,
    //   ),
    // );

    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product23',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group2',
    //     inStock: 1,
    //   ),
    // );
    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product31',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group3',
    //     inStock: 1,
    //   ),
    // );
    // await _productRepository.insertProduct(
    //   const ProductEntity(
    //     name: 'Product32',
    //     description: 'description',
    //     price: 100.0,
    //     category: 'Group3',
    //     inStock: 1,
    //   ),
    // );

    // final a = await _waiterRepository.getWaiters();
    // final b = await _productRepository.getProducts();
  }
}
