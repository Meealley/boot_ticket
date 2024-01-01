import 'package:boot_tickets/screens/home/hotel_screen/grid_tile.dart';
import 'package:boot_tickets/screens/home/hotel_screen/hotel_variable.dart';
import 'package:boot_tickets/utils/app_layout.dart';
import 'package:boot_tickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class ViewAllHotels extends StatelessWidget {
  const ViewAllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("View All Hotels"),
        backgroundColor: Styles.primaryColor,
      ),
      body: Container(
        child: StaggeredGridView.countBuilder(
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          itemCount: hotelList.length,
          crossAxisSpacing: 10,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final hotel = hotelList[index];
            return Gridtile(
                image: hotel['image'] as String,
                destinaton: hotel['destination'] as String,
                location: hotel['place'] as String,
                price: hotel['price'] as int);
          },
          staggeredTileBuilder: ((index) => StaggeredTile.extent(
              (index % 2 == 0) ? 1 : 1,
              (index % 2 == 0 || index % 2 == 0)
                  ? size.height * 0.33
                  : size.height * 0.33)),
        ),
      ),
    );
  }
}
