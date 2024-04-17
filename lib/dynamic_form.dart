import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DynamicForm extends StatefulWidget {
  final List<InvoiceRow> dataArray;

  const DynamicForm({super.key, required this.dataArray});

  @override
  _DynamicFormState createState() => _DynamicFormState();
}

class _DynamicFormState extends State<DynamicForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.dataArray.map((row) => form(row)).toList(),
    );
  }

  Widget form(InvoiceRow row) => Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: row.nameController,
                decoration: const InputDecoration(hintText: 'Name'),
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: row.activityController,
                decoration: const InputDecoration(hintText: 'Activity'),
              ),
            ),
            Expanded(
              child: TextFormField(
                controller: row.rateController,
                decoration: const InputDecoration(hintText: 'Rate'),
              ),
            ),
            IconButton(
              onPressed: () => setState(() => widget.dataArray.remove(row)),
              icon: const Icon(Icons.remove_circle, color: Colors.red),
            ),
            addButton(),
          ],
        ),
      );

  Widget addButton() => IconButton(
        onPressed: () => setState(() => widget.dataArray.add(InvoiceRow())),
        icon: const Icon(Icons.add_circle, color: Colors.green),
      );
}

class InvoiceRow {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController activityController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
}
