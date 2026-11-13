import 'package:flutter/material.dart';
import '../widgets/info_tile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [
          Text(
            'Keahlian & Hobi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            child: Column(
              children: [
                InfoTile(
                  ikon: Icons.code,
                  label: 'Full-Stack & Mobile Dev',
                  value: 'Flutter, Laravel, Java, PHP',
                ),
                InfoTile(
                  ikon: Icons.terrain,
                  label: 'Outdoor & Trekking',
                  value: 'Mendaki Gunung',
                ),
                InfoTile(
                  ikon: Icons.directions_bike,
                  label: 'Olahraga',
                  value: 'Bersepeda & Calisthenics',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            child: Column(
              children: [
                InfoTile(
                  ikon: Icons.school,
                  label: 'Global Institute',
                  value: 'S1 Teknik Informatika (Software Engineering)',
                ),
                InfoTile(
                  ikon: Icons.history_edu,
                  label: 'Pendidikan Menengah',
                  value: 'Lulusan SMA / SMK',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}