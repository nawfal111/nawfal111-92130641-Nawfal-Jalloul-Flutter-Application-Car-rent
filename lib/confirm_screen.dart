import 'package:flutter/material.dart';


class ConfirmScreen extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String selectedCountry;
  final bool receiveMessages;
  final bool subscribeNewsletter;
  final bool receivePromotionalEmails;

  ConfirmScreen({
    required this.name,
    required this.phoneNumber,
    required this.selectedCountry,
    required this.receiveMessages,
    required this.subscribeNewsletter,
    required this.receivePromotionalEmails,
  });

  @override
  Widget build(BuildContext context) {
    if (name.isNotEmpty && phoneNumber.isNotEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Confirmation'),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
            Container(
              color: Colors.grey.withOpacity(0.7),
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Thank you, $name!',
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'We will contact you at $phoneNumber.',
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'sales Information:',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Country: $selectedCountry',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      'Receive Messages: ${receiveMessages ? 'Yes' : 'No'}',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      'Subscribe to Newsletter: ${subscribeNewsletter ? 'Yes' : 'No'}',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      'Receive Promotional Emails: ${receivePromotionalEmails ? 'Yes' : 'No'}',
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(context, ModalRoute.withName('/'));
                      },
                      child: const Text('Back to Car List'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Error: Name and phone number cannot be empty.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back'),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
