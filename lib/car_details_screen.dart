import 'package:flutter/material.dart';
import 'car.dart';
import 'car_specific_info.dart';
import 'user_details_form.dart';

class CarDetailsScreen extends StatelessWidget {
  final Car car;

  CarDetailsScreen(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car Details'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Car: ${car.title}',
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Image.asset(
                  car.imagePath,
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200], 
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: CarSpecificInfo(car),
                ),
                const SizedBox(height: 20),
                UserDetailsForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
