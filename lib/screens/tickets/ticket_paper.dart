import 'package:boot_tickets/screens/home/tickets_screen/ticket_view.dart';
import 'package:boot_tickets/screens/home/tickets_screen/tickets_variable.dart';
import 'package:flutter/material.dart';

class TicketPaper extends StatelessWidget {
  const TicketPaper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TicketView(),
    );
  }
}
