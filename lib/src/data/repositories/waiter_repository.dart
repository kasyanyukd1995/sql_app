import 'package:sql_app/src/data/db/db_helper.dart';
import 'package:sql_app/src/domain/entities/index.dart';

class WaiterRepository {
  final DatabaseHelper _databaseHelper;

  WaiterRepository(this._databaseHelper);

  Future<int> insertWaiter(WaiterEntity waiter) async {
    final db = await _databaseHelper.database;
    return db.insert('Waiters', waiter.toJson());
  }

  Future<List<WaiterEntity>> getWaiters() async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('Waiters');
    return List.generate(maps.length, (i) {
      return WaiterEntity.fromJson(maps[i]);
    });
  }

  Future<int> updateWaiter(WaiterEntity waiter) async {
    final db = await _databaseHelper.database;
    return db.update(
      'Waiters',
      waiter.toJson(),
      where: 'waiter_id = ?',
      whereArgs: [waiter.id],
    );
  }

  Future<int> deleteWaiter(int id) async {
    final db = await _databaseHelper.database;
    return db.delete('Waiters', where: 'waiter_id = ?', whereArgs: [id]);
  }
}
