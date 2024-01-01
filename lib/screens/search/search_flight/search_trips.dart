import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:intl/intl.dart';

class SearchTrips extends StatelessWidget {
  const SearchTrips({super.key});

  @override
  Widget build(BuildContext context) {
    final date = DateFormat.yMMMMEEEEd().format(DateTime.now());
    return SizedBox(
      height: 70,
      width: double.infinity,
      child: ListTile(
        leading: Icon(
          FontAwesome.calendar,
          color: Styles.primaryColor,
          size: 37,
        ),
        title: Text(
          "Departure Date",
          style: Styles.headlineStyle4,
        ),
        subtitle: Text(
          date.toString(),
          style: Styles.headlineStyle2.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.normal,
            fontSize: 19,
          ),
        ),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.purple,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
