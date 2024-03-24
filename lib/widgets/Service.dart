import 'package:flutter/material.dart';
import 'package:sber_screen/widgets/Services.dart';

class Service extends StatelessWidget {
  final ServicesType serviceData;

  const Service({super.key, required this.serviceData});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 236,
          height: 130,
          margin: const EdgeInsets.only(top: 20, right: 8),
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x114F4F6C),
                blurRadius: 14,
                offset: Offset(0, 8),
                spreadRadius: 0,
              )
            ],
          ),
          child: Material(
            child: InkWell(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                  image: AssetImage(serviceData.image),
                                  width: 36,
                                  height: 36),
                              const SizedBox(width: 8),
                              Text(
                                serviceData.name,
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'SFProText',
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 24),
                          Text(
                            serviceData.payment,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "${serviceData.price} P в месяц",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'SFProText',
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        )
      ],
    );
  }
}
