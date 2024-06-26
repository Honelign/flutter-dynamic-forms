/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<InvoiceRow> _dataArray = [
    InvoiceRow(),
    InvoiceRow(),
    InvoiceRow()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 19),
              const Text('Names of Programming Languages',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                      fontSize: 22)),
              const SizedBox(height: 20),
              ..._dataArray.map((row) => form(row)),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
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
              onPressed: () => setState(() => _dataArray.remove(row)),
              icon: const Icon(Icons.remove_circle, color: Colors.red),
            ),
            addButton(),
          ],
        ),
      );

  Widget addButton() => IconButton(
        onPressed: () => setState(() => _dataArray.add(InvoiceRow())),
        icon: const Icon(Icons.add_circle, color: Colors.green),
      );
}

class InvoiceRow {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController activityController = TextEditingController();
  final TextEditingController rateController = TextEditingController();
}
 */