import 'package:flutter/material.dart';
import 'package:flutter_application_5/service/database_client.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('추가'),
        actions: [
          TextButton(
            onPressed: () => DatabaseClient.instance.insert(), 
            child: const Text('추가'),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '제목',
              ),
            ),
            SizedBox(height: 10),
            Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: '내용',
                border: OutlineInputBorder(),
              ),
              maxLines: null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}