import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/Services.dart';
import 'package:sber_screen/widgets/Tariff.dart';
import 'package:sber_screen/widgets/Tags.dart';

class TabBarProfile extends StatelessWidget {
  const TabBarProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(16, 30, 0, 30),
      child: Column(
        children: [
          Services(
            services: [
              ServicesType(
                  "СберПрайм", "Платеж 9 июля", 199, "assets/sber_icon.png"),
              ServicesType("Переводы", "Автопродление 21 августа", 199,
                  "assets/percent_circle.png")
            ],
          ),
          Tariff(
            tariff: [
              TariffType("Изменить суточный лимит", "На платежи и переводы",
                  "assets/speedometer.png"),
              TariffType("Переводы без комиссии",
                  "Показать остаток в этом месяце", "assets/percent.png"),
              TariffType("Информация о тарифах и лимитах", "",
                  "assets/arrows_forward_back.png"),
            ],
          ),
          const Tags(tags: [
            "Еда",
            "Саморазвитие",
            "Технологии",
            "Дом",
            "Досуг",
            "Забота о себе",
            "Наука"
          ])
        ],
      ),
    );
  }
}
