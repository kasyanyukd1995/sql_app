import 'package:flutter/material.dart';
import 'package:sql_app/features/tables/presentation/vm/table_view_model.dart';

class TableWidget extends StatelessWidget {
  final TableViewModel table;

  TableWidget({required this.table});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to dishes page
      },
      child: Card(
        child: Center(
          child: Text(table.name),
        ),
      ),
    );
  }
}
