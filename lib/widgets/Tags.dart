import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/Header.dart';
import 'package:sber_screen/widgets/Tag.dart';

class Tags extends StatelessWidget {
  final List<String> tags;

  const Tags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(top: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(
              title: "Интересы",
              subtitle:
                  "Мы подбираем истории и предложения по темам, которые вам нравятся"),
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              direction: Axis.horizontal,
              children: tags.map((tag) => Tag(name: tag)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
