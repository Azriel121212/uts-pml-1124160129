import 'package:flutter/material.dart';

import '../widgets/info_tile.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final warnaTema = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tentang Saya',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor:
            warnaTema.surfaceContainerHighest, // Warna header Silver
        foregroundColor: warnaTema.onSurface,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // 1. HEADER PROFIL (Avatar di Tengah Atas + Nama + NIM)
          Card(
            color: warnaTema.surfaceContainerHigh,
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: warnaTema.primary,
                    foregroundColor: warnaTema.onPrimary,
                    child: const Icon(Icons.person, size: 42),
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Chaerul Azriel Ardiansyah',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: warnaTema.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'NIM: 1124160129 | Teknik Informatika (TI24PSE1)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: warnaTema.primary,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Mahasiswa S1 Teknik Informatika yang fokus pada Full-Stack & Mobile Development serta aktif di kegiatan outdoor.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: warnaTema.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 2. BAGIAN KEAHLIAN & HOBI (Minimal 3 sesuai Soal A.4)
          const Padding(
            padding: EdgeInsets.only(left: 4, bottom: 8),
            child: Text(
              'Keahlian & Hobi',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              children: [
                InfoTile(
                  ikon: Icons.code,
                  label: 'Software & Mobile Development',
                  value: 'Flutter, Laravel, Java, PHP, MySQL',
                ),
                Divider(height: 1, indent: 16, endIndent: 16),
                InfoTile(
                  ikon: Icons.terrain,
                  label: 'Mountain Climbing & Trekking',
                  value: 'Pendakian Gunung Sagara & Gunung Lumut',
                ),
                Divider(height: 1, indent: 16, endIndent: 16),
                InfoTile(
                  ikon: Icons.directions_bike,
                  label: 'Olahraga & Kebugaran',
                  value: 'Bersepeda Sempur - Margasari (15 km) & Calisthenics',
                ),
                Divider(height: 1, indent: 16, endIndent: 16),
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
          const Padding(
            padding: EdgeInsets.only(left: 4, bottom: 8),
            child: Text(
              'Riwayat Pendidikan',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Column(
              children: [
                InfoTile(
                  ikon: Icons.school,
                  label: 'Global Institute (2024 - Sekarang)',
                  value: 'S1 Teknik Informatika - Software Engineering',
                ),
                Divider(height: 1, indent: 16, endIndent: 16),
                InfoTile(
                  ikon: Icons.workspace_premium,
                  label: 'IDCamp x Dicoding Indonesia',
                  value: 'Beasiswa Pelatihan AI Engineer & Pemrograman',
                ),
                Divider(height: 1, indent: 16, endIndent: 16),
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
