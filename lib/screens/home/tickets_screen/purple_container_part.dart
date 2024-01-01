import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class PurpleContainerPart extends StatelessWidget {
  final String dateLabel;
  final String numberLabel;
  final String month;
  final String number;
  final String time;
  final String timeLabel;
  const PurpleContainerPart({
    super.key,
    required this.dateLabel,
    required this.numberLabel,
    required this.month,
    required this.number,
    required this.timeLabel,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: Color.fromARGB(255, 99, 129, 154),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    month,
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  ),
                  Text(
                    dateLabel,
                    style: Styles.headlineStyle4.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    time,
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  ),
                  Text(
                    timeLabel,
                    style: Styles.headlineStyle4.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    number,
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  ),
                  Text(
                    numberLabel,
                    style: Styles.headlineStyle4.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
