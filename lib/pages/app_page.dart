import 'package:flutter/material.dart';
import 'package:flutter_application_5/service/database_client.dart';
import 'package:get/get.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('추가'),
        actions: [
          TextButton(
            onPressed: () => DatabaseClient.instance.insert(
              title: _title,
              content: _content,
              date: Get.arguments as String,
            )
            .then((value) => Get.back()),
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
              onChanged: (value) => _title = value,
            ),
            SizedBox(height: 10),
            Expanded(
            child: TextField(
              onChanged: (value) => _content = value,
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