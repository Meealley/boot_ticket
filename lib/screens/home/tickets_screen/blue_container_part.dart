import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/app_styles.dart';
import '../../../widgets/thick_container.dart';

class BlueContainerPart extends StatelessWidget {
  final String from;
  final String to;
  final String fromAbbr;
  final String toAbbr;
  final IconData icon;
  final String time;
  const BlueContainerPart({
    super.key,
    required this.from,
    required this.to,
    required this.fromAbbr,
    required this.toAbbr,
    required this.icon,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        color: Color.fromARGB(255, 99, 129, 154),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                fromAbbr,
                style: Styles.headlineStyle3.copyWith(color: Colors.white),
              ),
              Expanded(
                child: Container(),
              ),
              const ThickContainer(),
              Expanded(
                child: Stack(
                  children: [
                    SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          print('the width is ${constraints.constrainWidth()}');

                          return Flex(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            direction: Axis.horizontal,
                            children: List.generate(
                              (constraints.constrainWidth() / 6).floor(),
                              (index) => const SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: Transform.rotate(
                        angle: 1.58,
                        child: Icon(
                          icon,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const ThickContainer(),
              Expanded(
                child: Container(),
              ),
              Text(
                toAbbr,
                style: Styles.headlineStyle3.copyWith(color: Colors.white),
              ),
            ],
          ),
          const Gap(4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  from,
                  style: Styles.headlineStyle4.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                time,
                style: Styles.headlineStyle4.copyWith(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  to,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: Styles.headlineStyle4.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
