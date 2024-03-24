import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/Header.dart';
import 'package:sber_screen/widgets/Service.dart';

class ServicesType {
  final String name;
  final String payment;
  final double price;
  final String image;

  ServicesType(this.name, this.payment, this.price, this.image);
}

class Services extends StatelessWidget {
  final List<ServicesType> services;

  const Services({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Header(
            title: "У вас подключено",
            subtitle:
                "Подписки, автоплатежи и сервисы на которые  вы подписались"),
        SizedBox(
          width: double.infinity,
          height: 165,
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: services.length,
              itemBuilder: (BuildContext context, int i) {
                return Service(serviceData: services[i]);
              }),
        )
      ],
    );
  }
}
