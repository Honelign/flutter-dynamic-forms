import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _formCount = 0;
  final List<Map<String, dynamic>> _values = [];
  String? _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () async {
          setState(() {
            _formCount++;
          });
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              const Text('Name of Programming Languages',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                      fontSize: 22)),
              const SizedBox(height: 20),
              ...List.generate(_formCount, (index) => _form(index)),
              const SizedBox(height: 10),
              Text(_result!),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _form(int key) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        decoration: InputDecoration(hintText: 'Form ${key + 1}'),
        onChanged: (val) => _onUpdate(key, val),
      ),
    );
  }

  _onUpdate(int key, String val) {
    void addJson() {
      Map<String, dynamic> json = {'id': key, 'value': val};
      _values.add(json);
      setState(() {
        _result = _values.toString();
      });
    }

    if (_values.isEmpty) {
      addJson();
    } else {
      for (var map in _values) {
        if (map["id"] == key) {
          _values[key]['value'] = val;
          setState(() {
            _result = _values.toString();
          });
          break;
        }
      }

      for (var map in _values) {
        for (var map in _values) {
          if (map["id"] == key) {
            return;
          }
        }
        addJson();
      }
    }
  }
}
