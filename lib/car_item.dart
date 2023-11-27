import 'package:flutter/material.dart';
import 'car.dart';
import 'car_details_screen.dart';

class CarItem extends StatelessWidget {
  final Car car;

  CarItem(this.car);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: car.backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        title: Text(
          car.title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          car.details,
          style: const TextStyle(color: Colors.white),
        ),
        leading: Image.asset(
          car.imagePath,
          width: 80, 
          height: 80, 
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarDetailsScreen(car),
            ),
          );
        },
      ),
    );
  }
}

