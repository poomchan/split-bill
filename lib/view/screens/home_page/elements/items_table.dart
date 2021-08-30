import 'package:flutter/material.dart';
import 'package:split_bill/view/screens/home_page/elements/people_list.dart';

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
        PeopleList(
          peopleAvatarList: [
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.red,
            ),
            CircleAvatar(
              radius: 12,
              backgroundColor: Colors.yellow,
            ),
            CircleAvatar(
              radius: 12,
            )
          ],
        ),
        Text(name),
        Center(child: Text('\$' + price.toStringAsPrecision(2))),
        Center(child: Icon(Icons.check)),
      ],
    );
  }

  Widget _buildTableHeader(String title) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      columnWidths: {
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      children: [
        TableRow(
          children: [
             _buildTableHeader(''),
            _buildTableHeader('Item'),
            _buildTableHeader('Price'),
            _buildTableHeader(''),
          ],
        ),
        _buildItemRow('Galanga fried rice', 8.99),
        _buildItemRow('Bubble tea', 2.99),
        _buildItemRow('Yum yum noodle', 9.99),
      ],
    );
  }
}
