import 'package:flutter/material.dart';

class ItemTable extends StatefulWidget {
  const ItemTable({Key? key}) : super(key: key);

  @override
  _ItemTableState createState() => _ItemTableState();
}

class _ItemTableState extends State<ItemTable> {
  int itemCount = 0;

  TableRow _buildItemRow(String name, double price) {
    return TableRow(
      children: [
        Text(name),
        Center(child: Text('\$' + price.toStringAsPrecision(2))),
        Center(child: Icon(Icons.people)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
            Center(child: Text('Items')),
            Center(child: Text('Price')),
            Center(child: Text('Share')),
          ],
        ),
        _buildItemRow('Galanga fried rice', 8.99),
        _buildItemRow('Bubble tea', 2.99),
        _buildItemRow('Yum yum noodle', 9.99),
      ],
    );
  }
}
