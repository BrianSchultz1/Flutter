import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionItem extends StatelessWidget {
  final Transaction tr;
  final void Function(String p1) onRemove;

  const TransactionItem({
    Key? key,
    required this.tr,
    required this.onRemove,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color.fromRGBO(42, 147, 110, 1),
          child: const Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
                // child: Text(
                //   'R\$${tr.value}',
                //   style: const TextStyle(
                //     color: Colors.white,
                //   ),
                // ),
                ),
          ),
        ),
        title: Text(
          tr.title,
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          DateFormat('d MMM y').format(tr.date),
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            // fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        trailing: MediaQuery.of(context).size.width > 480
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton.icon(
                    onPressed: () => onRemove(tr.id),
                    icon:
                        Icon(Icons.delete, color: Theme.of(context).errorColor),
                    label: Text(
                      'Excluir',
                      style: TextStyle(color: Theme.of(context).errorColor),
                    ),
                  ),
                ),
              )
            : IconButton(
                icon: const Icon(Icons.delete),
                color: Theme.of(context).errorColor,
                onPressed: () => onRemove(tr.id),
              ),
      ),
    );
  }
}
