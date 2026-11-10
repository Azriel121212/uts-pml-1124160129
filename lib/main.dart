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
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
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
                  Text('Teknik Informatika'),
                  Text('1124160129', style: TextStyle(fontSize: 20)),
                  Card(
                    child: Column(
                      children: [
                        InfoRow(
                          ikon: Icons.email,
                          label: 'Chaerul Azriel Ardiansyah',
                          value: '1124160129',
                        ),
                        InfoRow(
                          ikon: Icons.phone,
                          label: 'Chaerul Azriel Ardiansyah',
                          value: '0814-1092-2406',
                        ),
                        InfoRow(
                          ikon: Icons.school,
                          label: 'Chaerul Azriel Ardiansyah',
                          value: 'TI24PSE1',
                        ),
                        InfoRow(
                          ikon: Icons.facebook,
                          label: 'Chaerul Azriel Ardiansyah',
                          value: 'https://github.com/Azriel121212',
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        InfoRow(
                          ikon: Icons.directions_bike,
                          label: 'Sempur - Margasari',
                          value: '15 km',
                        ),
                        InfoRow(
                          ikon: Icons.shop,
                          label: 'Ramayana',
                          value: '0812-1272-7373',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Nambahin apa bor ?')));
        },
        tooltip: 'Add',
        child: Icon(Icons.add),
      ),
    );
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    super.key,
    required this.ikon,
    required this.label,
    required this.value,
  });
  final IconData ikon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(ikon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
