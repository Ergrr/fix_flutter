import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/Header.dart';
import 'package:sber_screen/widgets/TariffElement.dart';

class TariffType {
  String title;
  String subtitle;
  String patch;
  TariffType(this.title, this.subtitle, this.patch);
}

class Tariff extends StatelessWidget {
  final List<TariffType> tariff;

  const Tariff({super.key, required this.tariff});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 26),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(
                title: "Тарифы и лимиты",
                subtitle: "Для операций в Сбербанк Онлайн"),
            const SizedBox(
              height: 12,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: tariff.length,
                itemBuilder: (BuildContext context, int i) {
                  return TariffElement(
                      tariff: tariff[i], isNotLast: i != tariff.length - 1);
                })
          ],
        ));
  }
}
