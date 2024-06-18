import 'package:sql_app/src/data/db/db_helper.dart';
import 'package:sql_app/src/domain/entities/index.dart';
import 'package:sql_app/src/domain/entities/order_flow_entity.dart';

class OrdersRepository {
  final List<OrderFlowEntity> _orders = [];
  List<OrderFlowEntity> get orders => _orders;

  final DatabaseHelper _databaseHelper;

  OrdersRepository(this._databaseHelper);

  void makeOrder(OrderFlowEntity order) {
    _orders.add(order);
  }

  Future<int> insertOrder(OrderEntity order) async {
    final db = await _databaseHelper.database;
    return db.insert('Orders', order.toJson());
  }

  Future<List<OrderEntity>> getOrders() async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('Orders');

    return List.generate(maps.length, (i) {
      return OrderEntity.fromJson(maps[i]);
    });
  }

  Future<List<OrderEntity>> getOrdersByTableNumber(int tableNumber) async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query(
      'Orders',
      where: 'table_number = ?',
      whereArgs: [tableNumber],
    );

    return List.generate(maps.length, (i) {
      return OrderEntity.fromJson(maps[i]);
    });
  }

  Future<int> updateOrder(OrderEntity order) async {
    final db = await _databaseHelper.database;
    return db.update(
      'Orders',
      order.toJson(),
      where: 'order_id = ?',
      whereArgs: [order.id],
    );
  }

  Future<int> deleteOrder(int id) async {
    final db = await _databaseHelper.database;
    return db.delete('Orders', where: 'order_id = ?', whereArgs: [id]);
  }

  Future<void> clearTable() async {
    final db = await _databaseHelper.database;
    await db.delete('Orders');
  }
}
