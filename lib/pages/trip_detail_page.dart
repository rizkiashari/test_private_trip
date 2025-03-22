import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slicing_private_trip/model/trip.dart';

class TripDetailPage extends StatelessWidget {
  final Trip trip;

  const TripDetailPage({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(trip.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              trip.photo,
              width: double.infinity,
              height: 350,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trip.title,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "\$${trip.price}",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    trip.description,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[700], // Star color
                        size: 20, // Star icon size
                      ),
                      const SizedBox(width: 4), // Space between star and text
                      Text(
                        '${trip.rating}',
                        style: const TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              )
             ,
            ),
          ],
        ),
      ),
    );
  }
}
