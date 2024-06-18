import 'package:flutter/material.dart';
import 'package:sql_app/features/tables/presentation/vm/table_view_model.dart';

class TableWidget extends StatelessWidget {
  final TableViewModel table;
  final VoidCallback onTap;

  const TableWidget({
    super.key,
    required this.table,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Center(
          child: Text(table.name),
        ),
      ),
    );
  }
}
