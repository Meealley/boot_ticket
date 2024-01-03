import 'package:boot_tickets/utils/app_layout.dart';
import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'ticket_paper.dart';

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            children: [
              Gap(40),
              Text(
                "Tickets page reactions",
                style: Styles.headlineStyle,
              ),
              Gap(20),
              Text(
                "Upcoming tickets",
                style: Styles.headlineStyle2.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
              TicketPaper()
            ],
          ),
        ],
      ),
    );
  }
}
