import 'package:sql_app/src/data/db/db_helper.dart';
import 'package:sql_app/src/domain/entities/index.dart';

class OrdersRepository {
  final DatabaseHelper _databaseHelper;

  OrdersRepository(this._databaseHelper);

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
}
