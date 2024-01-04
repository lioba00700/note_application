import "package:flutter/material.dart";

class MainPage extends StatelessWidget{//stl
  const MainPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('나의 하루'),
      ),
      body: Column(
        children: [
          CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2300),
            onDateChanged: (value) {},
          ),
          Expanded(
          child: Padding(padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder:(context,index) =>  ListTile(
            title: Text('$index'),
            trailing: IconButton(onPressed: null,
            icon: Icon(Icons.delete),
              ),
            ),
          itemCount: 100,
          ),
          )
          )
        ],
      ),
      floatingActionButton: const FloatingActionButton(onPressed: null,child: Icon(Icons.add),
      ),
    );
  }
}





