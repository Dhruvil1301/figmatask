import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProgramList extends StatefulWidget {
  @override
  _ProgramListState createState() => _ProgramListState();
}

class _ProgramListState extends State<ProgramList> {
  List<dynamic> _programs = [];

  Future<void> _fetchPrograms() async {
    final response = await http.get(Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      print('Data: $data');
      setState(() {
        _programs = List<Map<String, dynamic>>.from(data['items']);
      });
    } else {
      throw Exception('Failed to fetch programs.');
    }
  }


  @override
  void initState() {
    super.initState();
    _fetchPrograms();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Program List'),
      ),
      body: ListView.builder(
        itemCount: _programs.length,
        itemBuilder: (context, index) {
          final program = _programs[index];
          return ListTile(
            title: Text(program['name']),
            subtitle: Text('Category: ${program['category']}, Lesson: ${program['lesson']}'),
          );
        },
      ),
    );
  }
}
