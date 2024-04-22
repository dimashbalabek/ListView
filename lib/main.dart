import 'package:flutter/material.dart';

void main() => runApp(MyApp());
final List<String> users = ["Tom", "Bob", "Sam", "Mike"];
final List<IconData> icons = [Icons.face, Icons.tag_faces, Icons.work, Icons.book];final List<String> companies = ["Google", "Microsoft", "Apple", "JetBrains"];
final List<String> companis = ["Google", "Microsoft", "Apple", "JetBrains"];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text("METANIT.COM"),
        ),
        body: ListView.builder(
          itemCount: users.length,
          padding: EdgeInsets.all(20),
            itemBuilder: (BuildContext context, index){
              return Container(
                padding: EdgeInsets.all(10),
                child:
                  ListTile(
                    leading: Icon(Icons.face),
                    title: Text("${users[index]}"),
                    trailing: Icon(Icons.call),
                    subtitle: Text("Works in ${companies[index]}",
                    )
                    ,)
              );
            }
        ),
      ),
    );
  }
}
