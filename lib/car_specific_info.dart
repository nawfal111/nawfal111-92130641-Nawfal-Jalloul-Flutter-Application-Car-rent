import 'package:flutter/material.dart';
import 'car.dart';

class CarSpecificInfo extends StatelessWidget {
  final Car car;

  CarSpecificInfo(this.car);

  @override
  Widget build(BuildContext context) {
    String specificInfo = '';

    if (car.title.contains('BMW i7 2023')) {
      specificInfo =
          """Unleash the future of luxury electric driving with the BMW i7 2023. This visionary sedan combines elegance with eco-conscious engineering, boasting a powerful electric drivetrain that propels you silently yet swiftly on the open road. The i7's sleek and aerodynamic design not only captures attention but also optimizes efficiency, ensuring a smooth and efficient ride. Step into the lavish interior, where opulence meets innovation. The i7 is equipped with cutting-edge technology, including a state-of-the-art infotainment system, advanced driver assistance features, and a meticulously designed cabin for the ultimate in comfort. Elevate your driving experience with the BMW i7 2023, where luxury, sustainability, and performance converge in a harmonious symphony of automotive excellence. Drive into the future with unparalleled style and environmental responsibility in this electric masterpiece.""";
    } else if (car.title.contains('Honda Civic 2021')) {
      specificInfo =
          """Experience the thrill of driving with the Honda Civic 2022, a sleek and dynamic masterpiece that seamlessly blends performance and style. Powered by a responsive and fuel-efficient engine, the Civic delivers an exhilarating driving experience while maintaining impressive fuel efficiency. The aerodynamic design not only enhances the car's visual appeal but also contributes to its exceptional fuel economy. Inside, the spacious and modern interior features cutting-edge technology, including a user-friendly infotainment system and advanced safety features for peace of mind on the road. With its sporty exterior, efficient engine, and innovative features, the Honda Civic 2022 is not just a car; it's a statement of sophistication and performance. Drive into the future with confidence in this meticulously crafted automobile.""";
    } else if (car.title.contains('Mercedes Antique E201')) {
      specificInfo =
          """Embark on a journey through automotive history with the timeless elegance of the vintage Mercedes-Benz, a true icon of the road. This antique gem, exuding charm and sophistication, is a testament to the enduring legacy of Mercedes craftsmanship. The classic design, marked by graceful lines and iconic detailing, harkens back to an era when automobiles were a symbol of artistry and refinement. Under the hood lies a piece of motoring history, showcasing the engineering brilliance of its time. Inside, the meticulously preserved interior captures the essence of luxury, with sumptuous materials and intricate details that transport you to a bygone era of opulence. Whether you're a collector or a connoisseur of automotive heritage, this antique Mercedes-Benz promises a driving experience that transcends time, inviting you to savor the allure of a classic masterpiece that has stood the test of time. Embrace the prestige of yesteryear with this vintage Mercedes-Benz, where every drive is a nostalgic journey into the past.""";
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        specificInfo,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}