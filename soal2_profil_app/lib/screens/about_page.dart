import 'package:flutter/material.dart';

import '../widgets/info_tile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final warnaTema = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Saya'),
        centerTitle: true,
        backgroundColor: warnaTema.primary,
        foregroundColor: warnaTema.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // 1. KARTU RINGKASAN PROFIL DI ATAS
          Card(
            color: warnaTema.primaryContainer,
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: warnaTema.primary,
                    foregroundColor: warnaTema.onPrimary,
                    child: const Icon(Icons.person_pin, size: 30),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Chaerul Azriel Ardiansyah',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: warnaTema.onPrimaryContainer,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Mahasiswa S1 Teknik Informatika yang fokus pada Full-Stack & Mobile Development serta aktif di kegiatan outdoor.',
                          style: TextStyle(
                            fontSize: 13,
                            color: warnaTema.onPrimaryContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 2. BAGIAN KEAHLIAN & HOBI (Minimal 3 sesuai Soal A.4)
          const Text(
            'Keahlian & Hobi',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 2,
            child: Column(
              children: const [
                InfoTile(
                  ikon: Icons.code,
                  label: 'Software & Mobile Development',
                  value: 'Flutter, Laravel, Java, PHP, MySQL',
                ),
                Divider(height: 1),
                InfoTile(
                  ikon: Icons.terrain,
                  label: 'Mountain Climbing & Trekking',
                  value: 'Pendakian Gunung Sagara & Gunung Lumut',
                ),
                Divider(height: 1),
                InfoTile(
                  ikon: Icons.directions_bike,
                  label: 'Olahraga & Kebugaran',
                  value: 'Bersepeda (15 km) & Calisthenics',
                ),
                Divider(height: 1),
                InfoTile(
                  ikon: Icons.sports_esports,
                  label: 'Gaming',
                  value: 'Action RPG & Strategy Games',
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // 3. BAGIAN RIWAYAT PENDIDIKAN (Sesuai Soal A.4)
          const Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Card(
            elevation: 2,
            child: Column(
              children: const [
                InfoTile(
                  ikon: Icons.school,
                  label: 'Global Institute (2024 - Sekarang)',
                  value: 'S1 Teknik Informatika - Konsentrasi Software Engineering (TI24PSE1)',
                ),
                Divider(height: 1),
                InfoTile(
                  ikon: Icons.workspace_premium,
                  label: 'IDCamp x Dicoding Indonesia',
                  value: 'Beasiswa Pelatihan AI Engineer & Pemrograman',
                ),
                Divider(height: 1),
                InfoTile(
                  ikon: Icons.history_edu,
                  label: 'Pendidikan Menengah Atas',
                  value: 'Lulusan SMA / SMK Sederajat',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
