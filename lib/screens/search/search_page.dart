import 'package:boot_tickets/screens/search/search_flight/search_flight_card.dart';
import 'package:boot_tickets/screens/search/search_flight/search_trips_bar.dart';
import 'package:boot_tickets/utils/app_layout.dart';
import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 2, vsync: this);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What are you looking for?",
                  style: Styles.headlineStyle.copyWith(
                    fontSize: 30,
                  ),
                ),
                const Gap(10),
                TabBar(
                  indicatorColor: Styles.primaryColor,
                  controller: _tabController,
                  labelColor: Colors.black,
                  tabs: const [
                    Tab(
                      child: Text(
                        'Tickets',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Hotels',
                        style: TextStyle(
                          fontSize: 19,
                        ),
                      ),
                    )
                  ],
                ),
                const Gap(10),
                SizedBox(
                  height: 800,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      Column(
                        children: [
                          SearchFlightCard(),
                          Gap(6),
                          SearchTripsBar(),
                          // Gap(6),
                        ],
                      ),
                      Text(
                        "This should be the hotels bar",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Styles.primaryColor,
                    ),
                    child: Text(
                      "Search",
                      style: Styles.headlineStyle2.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print('Pressed');
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
