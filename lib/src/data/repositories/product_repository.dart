import 'package:sql_app/src/data/db/db_helper.dart';
import 'package:sql_app/src/domain/entities/index.dart';

class ProductRepository {
  final DatabaseHelper _databaseHelper;

  const ProductRepository(this._databaseHelper);

  Future<int> insertProduct(ProductEntity product) async {
    final db = await _databaseHelper.database;
    return db.insert('Products', product.toJson());
  }

  Future<List<ProductEntity>> getProducts() async {
    final db = await _databaseHelper.database;
    final List<Map<String, dynamic>> maps = await db.query('Products');
    return List.generate(maps.length, (i) {
      return ProductEntity.fromJson(maps[i]);
    });
  }

  Future<int> updateProduct(ProductEntity product) async {
    final db = await _databaseHelper.database;
    return db.update(
      'Products',
      product.toJson(),
      where: 'product_id = ?',
      whereArgs: [product.id],
    );
  }

  Future<int> deleteProduct(int id) async {
    final db = await _databaseHelper.database;
    return db.delete('Products', where: 'product_id = ?', whereArgs: [id]);
  }
}
