import 'package:boot_tickets/screens/search/search_flight/round_trip/round_trips.dart';
import 'package:boot_tickets/screens/search/search_flight/search_passenger_container.dart';
import 'package:boot_tickets/screens/search/search_flight/search_trips.dart';
import 'package:boot_tickets/utils/app_layout.dart';
import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchTripsBar extends StatefulWidget {
  const SearchTripsBar({super.key});

  @override
  State<SearchTripsBar> createState() => _SearchTripsBarState();
}

class _SearchTripsBarState extends State<SearchTripsBar>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(10),
              TabBar(
                indicatorSize: TabBarIndicatorSize.label,
                indicator: BoxDecoration(
                  color: Colors.purple.shade200,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),

                indicatorColor: Styles.primaryColor,
                controller: _tabController,
                // labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                tabs: const [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'One Way',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Round Trip',
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Gap(10),
              SizedBox(
                height: size.height * 0.6,
                width: double.infinity,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    Column(
                      children: [
                        SearchTrips(),
                        Gap(20),
                        SearchPassengerContainer(),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Roundtrip",
                        ),
                        SearchTrips(),
                        Gap(10),
                        RoundTrips(),
                        Gap(20),
                        SearchPassengerContainer(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
