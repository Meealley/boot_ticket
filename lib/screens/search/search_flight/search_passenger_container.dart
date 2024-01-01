import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SearchPassengerContainer extends StatelessWidget {
  const SearchPassengerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          ListTile(
            leading: Icon(
              FontAwesome.group,
              size: 23,
            ),
            title: Text('Passenger'),
            subtitle: Text('2 Adult, 0 Children, 0 Infants'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(
              Ionicons.person,
            ),
            title: Text('Adults (12+)'),
            // subtitle: Text('2 Adult'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(
              FontAwesome.child,
            ),
            trailing: Icon(
              FontAwesome.plus_circle,
            ),
            title: Text('Children(2-9)'),
            // subtitle: Text('2 Adult'),
          ),
          Divider(
            color: Colors.black,
          ),
          ListTile(
            leading: Icon(
              Icons.child_friendly_sharp,
            ),
            title: Text('Infants(0-2)'),
            // subtitle: Text('2 Adult'),
          ),
        ],
      ),
    );
  }
}
