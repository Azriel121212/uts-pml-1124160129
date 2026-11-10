import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1124160129',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.amber),
      darkTheme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      themeMode: ThemeMode.dark,
      home: MyProfil(),
    );
  }
}

class MyProfil extends StatelessWidget {
  const MyProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chaerul Azriel Ardiansyah'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text('Nambahin apa bro')));
            },
            icon: Icon(Icons.search),
            tooltip: 'Search',
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(radius: 20, child: Icon(Icons.person)),
                  SizedBox(height: 20),
                  Text(
                    'Chaerul Azriel Ardiansyah',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('1124160129', style: TextStyle(fontSize: 20)),
                  Card(child: Column(children: [

                      ],
                    )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
