import 'package:flutter/material.dart';
import 'package:slicing_private_trip/data/trips.dart';
import 'package:slicing_private_trip/pages/trip_detail_page.dart';
import 'package:slicing_private_trip/widgets/trip_card.dart';

class TripListPage extends StatelessWidget {
  const TripListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Private Trip'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12),
        child: ListView.builder(
          itemCount: trips.length,
          itemBuilder: (context, index) {
            return TripCard(
                trip: trips[index],
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => TripDetailPage(
                        trip: trips[index],
                      ),
                    ),);
                }
            );
          },
        ),
      )
    );
  }
}
