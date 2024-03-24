import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/Tariff.dart';

class TariffElement extends StatelessWidget {
  final TariffType tariff;
  final bool isNotLast;

  const TariffElement(
      {super.key, required this.tariff, required this.isNotLast});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Material(
          child: InkWell(
            child: Row(
              children: [
                Image(image: AssetImage(tariff.patch), width: 36, height: 36),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tariff.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      tariff.subtitle,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Image(
                    image: AssetImage("assets/disclosure.png"),
                    width: 24,
                    height: 24),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
        if (isNotLast)
          const Divider(
            indent: 50,
          )
      ],
    );
  }
}
