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
    return ListTile(
      leading: Icon(ikon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
