import 'package:flutter/material.dart';

class Header extends StatelessWidget {

  final String title;
  final String subtitle;

  const Header({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text( title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),

            Text(subtitle,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'SFProText',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        )
    );
  }
}