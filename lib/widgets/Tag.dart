import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
    final String name;

  const Tag({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: Colors.black,
        backgroundColor: Colors.grey.withAlpha(80),
        padding: const EdgeInsets.only(left: 15, right: 15, top: 6, bottom: 6),
        minimumSize: const Size(0, 0),
      ),
      child: Text(name),
    );
  }
}