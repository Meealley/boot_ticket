import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gap/gap.dart';

class SearchFlightCard extends StatefulWidget {
  const SearchFlightCard({super.key});

  @override
  State<SearchFlightCard> createState() => _SearchFlightCardState();
}

class _SearchFlightCardState extends State<SearchFlightCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(
                      FontAwesome.circle,
                      color: Styles.primaryColor,
                    ),
                    const Dash(
                      direction: Axis.vertical,
                      length: 68,
                      dashLength: 10,
                      dashColor: Colors.grey,
                    ),
                    const Icon(FontAwesome.location_arrow)
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    const Gap(10),
                    SizedBox(
                      height: 50,
                      width: 240,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Select City",
                          labelText: 'From',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            // borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      // child: Text("Heyyy"),
                    ),
                    const Divider(
                      color: Colors.purple,
                    ),
                    SizedBox(
                      height: 50,
                      width: 240,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Where to?",
                          labelText: 'Destination',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            // borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      // child: Text("Heyyy"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
