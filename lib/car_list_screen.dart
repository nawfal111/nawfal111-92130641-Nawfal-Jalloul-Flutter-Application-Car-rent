import 'package:flutter/material.dart';
import 'car.dart';
import 'car_item.dart';

class CarListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Car List'),
        flexibleSpace: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/logo.png', 
              height: 50, 
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CarItem(
                Car(
                  title: "BMW i7 2023",
                  details: "click to see more details",
                  imagePath: 'assets/image1.png',
                  backgroundColor: Colors.green,
                ),
              ),
              CarItem(
                Car(
                  title: "Honda Civic 2021",
                  details: "click to see more details",
                  imagePath: 'assets/image2.png',
                  backgroundColor: Colors.blue,
                ),
              ),
              CarItem(
                Car(
                  title: "Mercedes Antique E201",
                  details: "click to see more details",
                  imagePath: 'assets/image3.png',
                  backgroundColor: Colors.orange,
                ),
              ),
              const SizedBox(
                  height:
                      20), 
              Image.asset(
                'assets/image4.png',
                height: 200, 
                fit: BoxFit.cover, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}