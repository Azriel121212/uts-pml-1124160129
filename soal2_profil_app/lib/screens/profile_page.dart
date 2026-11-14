import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';
import 'about_page.dart';
import 'edit_profile_page.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  final VoidCallback? onToggleTheme;
  final bool isDarkMode;

  const ProfilePage({
    super.key,
    this.onToggleTheme,
    this.isDarkMode = false,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile dataProfil = Profile(
    nama: 'Chaerul Azriel Ardiansyah',
    nim: '1124160129',
    prodi: 'Teknik Informatika (Software Engineering)',
    kelas: 'TI24PSE1',
    bio:
        'Mahasiswa S1 Teknik Informatika yang fokus pada pengembangan aplikasi Mobile & Web Full-Stack.',
    email: 'azriel@global.ac.id',
    hp: '081410922406',
    github: 'https://github.com/Azriel121212',
  );

  Future<void> _bukaEditProfil() async {
    final hasilEdit = await Navigator.push<Profile>(
      context,
      MaterialPageRoute(
        builder: (context) => EditProfilePage(currentProfile: dataProfil),
      ),
    );

    if (hasilEdit != null) {
      setState(() {
        dataProfil = hasilEdit;
      });

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Profil berhasil diperbarui!'),
        ),
      );
    }
  }

  Widget _buildAvatar(ColorScheme warnaTema, double radius, double iconSize) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: warnaTema.primary,
      foregroundColor: warnaTema.onPrimary,
      child: ClipOval(
        child: Image.asset(
          'assets/images/profile.jpg',
          width: radius * 2,
          height: radius * 2,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.person, size: iconSize);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final warnaTema = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profil Mahasiswa',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: warnaTema.surfaceContainerHighest,
        foregroundColor: warnaTema.onSurface,
        actions: [
          if (widget.onToggleTheme != null)
            IconButton(
              onPressed: widget.onToggleTheme,
              icon: Icon(
                widget.isDarkMode ? Icons.light_mode : Icons.dark_mode,
              ),
              tooltip: 'Ganti Tema',
            ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: warnaTema.primary),
              currentAccountPicture: _buildAvatar(warnaTema, 36, 36),
              accountName: Text(
                dataProfil.nama,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('${dataProfil.nim} • ${dataProfil.kelas}'),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Halaman Profil'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Keluar (Logout)'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginPage(
                      isDarkMode: widget.isDarkMode,
                      onToggleTheme: widget.onToggleTheme,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: [
                Card(
                  color: warnaTema.surfaceContainerHigh,
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        _buildAvatar(warnaTema, 48, 48),
                        const SizedBox(height: 14),
                        Text(
                          dataProfil.nama,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${dataProfil.nim} • ${dataProfil.kelas}',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: warnaTema.primary,
                          ),
                        ),
                        Text(
                          dataProfil.prodi,
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          dataProfil.bio,
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
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Informasi Kontak & Akademik',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 8),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      InfoTile(
                        ikon: Icons.email,
                        label: 'Email',
                        value: dataProfil.email,
                      ),
                      const Divider(height: 1, indent: 16, endIndent: 16),
                      InfoTile(
                        ikon: Icons.phone,
                        label: 'Nomor HP',
                        value: dataProfil.hp,
                      ),
                      const Divider(height: 1, indent: 16, endIndent: 16),
                      InfoTile(
                        ikon: Icons.school,
                        label: 'Kelas & Program Studi',
                        value: '${dataProfil.kelas} - ${dataProfil.prodi}',
                      ),
                      const Divider(height: 1, indent: 16, endIndent: 16),
                      InfoTile(
                        ikon: Icons.code,
                        label: 'Akun GitHub',
                        value: dataProfil.github,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _bukaEditProfil,
        icon: const Icon(Icons.edit),
        label: const Text('Edit Profil'),
      ),
    );
  }
}
