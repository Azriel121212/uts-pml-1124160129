import 'package:flutter/material.dart';

class InfoTile extends StatelessWidget {
  final IconData ikon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.ikon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final warnaTema = Theme.of(context).colorScheme;

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: warnaTema.primaryContainer,
        foregroundColor: warnaTema.onPrimaryContainer,
        child: Icon(ikon, size: 20),
      ),
      title: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
      ),
      subtitle: Text(value),
    );
  }
}
