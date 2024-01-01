import 'package:boot_tickets/utils/app_layout.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/app_styles.dart';

class HotelCard extends StatelessWidget {
  final String image;
  final String destinaton;
  final String location;
  final int price;

  const HotelCard({
    super.key,
    required this.image,
    required this.destinaton,
    required this.location,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      width: size.width * 0.6,
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  image,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Styles.primaryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destinaton,
                  style: Styles.headlineStyle2,
                ),
                const Gap(4),
                Text(
                  location,
                  style: Styles.headlineStyle3.copyWith(color: Colors.white),
                ),
                const Gap(2),
                Text("\$ $price / Night",
                    style: Styles.headlineStyle4.copyWith(color: Colors.white))
              ],
            ),
          )
        ],
      ),
    );
  }
}
