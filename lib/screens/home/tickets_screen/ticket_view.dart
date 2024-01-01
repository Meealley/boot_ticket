import 'package:boot_tickets/screens/home/tickets_screen/purple_container_part.dart';
import 'package:boot_tickets/screens/home/tickets_screen/tickets_variable.dart';
import 'package:boot_tickets/utils/app_layout.dart';

import 'package:flutter/material.dart';

import 'blue_container_part.dart';
import 'container_divider.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: ticketList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final ticket = ticketList[index];

          return Container(
            width: size.width * 0.85,
            margin: const EdgeInsets.only(right: 16),
            child: Column(
              children: [
                BlueContainerPart(
                  from: ticket['from']['name'] as String,
                  to: ticket['to']['name'] as String,
                  fromAbbr: ticket['from']['code'] as String,
                  toAbbr: ticket['to']['code'] as String,
                  time: ticket['flying-time'] as String,
                  icon: Icons.local_airport,
                ),
                const ContainerDivider(),
                PurpleContainerPart(
                  dateLabel: 'Date',
                  numberLabel: 'Number',
                  month: ticket['date'] as String,
                  number: '24',
                  time: ticket['departure-time'] as String,
                  timeLabel: 'Departure Time',
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
