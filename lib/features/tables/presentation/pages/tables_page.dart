import 'package:flutter/material.dart';
import 'package:sql_app/features/tables/presentation/vm/table_view_model.dart';
import 'package:sql_app/features/tables/presentation/widgets/table_widget.dart';

class TableGridPage extends StatelessWidget {
  final List<TableViewModel> tables;

  TableGridPage({required this.tables});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tables')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: tables.length,
        itemBuilder: (context, index) {
          return TableWidget(table: tables[index]);
        },
      ),
    );
  }
}
