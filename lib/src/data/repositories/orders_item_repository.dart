import 'package:sql_app/src/data/db/db_helper.dart';
import 'package:sql_app/src/domain/entities/index.dart';

class OrderItemRepository {
  final DatabaseHelper _databaseHelper;

  const OrderItemRepository(this._databaseHelper);
  Future<int> insertOrderItem(OrderItemEntity orderItem) async {
    final db = await _databaseHelper.database;
    return db.insert('Order_Items', orderItem.toJson());
  }

  Future<List<OrderItemEntity>> getOrderItems(int orderId) async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps =
        await db.query('Order_Items', where: 'order_id = ?', whereArgs: [orderId]);
    return List.generate(maps.length, (i) {
      return OrderItemEntity.fromJson(maps[i]);
    });
  }

  Future<int> updateOrderItem(OrderItemEntity orderItem) async {
    final db = await _databaseHelper.database;
    return db.update(
      'Order_Items',
      orderItem.toJson(),
      where: 'order_item_id = ?',
      whereArgs: [orderItem.id],
    );
  }

  Future<int> deleteOrderItem(int id) async {
    final db = await _databaseHelper.database;
    return db.delete('Order_Items', where: 'order_item_id = ?', whereArgs: [id]);
  }

  Future<void> clearTable() async {
    final db = await _databaseHelper.database;
    await db.delete('Order_Items');
  }
}
