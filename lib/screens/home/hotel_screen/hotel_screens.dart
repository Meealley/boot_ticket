import 'package:boot_tickets/screens/home/hotel_screen/hotel_variable.dart';
import 'package:flutter/material.dart';

import 'hotel_card.dart';

class HotelSreens extends StatelessWidget {
  const HotelSreens({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final hotel = hotelList[index];

          return HotelCard(
            image: hotel['image'] as String,
            destinaton: hotel['destination'] as String,
            location: hotel['place'] as String,
            price: hotel['price'] as int,
          );
        },
      ),
    );
  }
}
