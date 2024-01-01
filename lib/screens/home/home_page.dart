import 'package:boot_tickets/screens/home/hotel_screen/hotel_screens.dart';
import 'package:boot_tickets/screens/home/hotel_screen/view_all.dart';
import 'package:boot_tickets/screens/home/tickets_screen/ticket_view.dart';
import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'home_text_input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning 🌞",
                          style: Styles.headlineStyle3,
                        ),
                        const Gap(5),
                        Text(
                          "Airline Tickets",
                          style: Styles.headlineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/tickets.png'),
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(20),
                const HomeTextInput(
                  hint: 'Search',
                ),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headlineStyle2),
                    Text("View all", style: Styles.headlineStyle3),
                  ],
                ),
                const Gap(10),
                // const SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   padding: EdgeInsets.only(left: 16),
                //   child: Row(
                //     children: [
                //       TicketView(),
                //       TicketView(),
                //     ],
                //   ),
                // ),
                const TicketView(),
                const Gap(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hotels", style: Styles.headlineStyle2),
                    InkWell(
                        onTap: () {
                          print("Tapped on");
                        },
                        child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const ViewAllHotels(),
                                ),
                              );
                            },
                            child: Text("View all",
                                style: Styles.headlineStyle3))),
                  ],
                ),
                const Gap(10),
                // SingleChildScrollView(
                //   scrollDirection: Axis.horizontal,
                //   child: Row(
                //     children: [HotelSreens(), HotelSreens(), HotelSreens()],
                //   ),
                // ),
                const HotelSreens(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
