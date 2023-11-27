// UserDetailsForm.dart
import 'package:flutter/material.dart';
import 'confirm_screen.dart';

class UserDetailsForm extends StatefulWidget {
  @override
  _UserDetailsFormState createState() => _UserDetailsFormState();
}

class _UserDetailsFormState extends State<UserDetailsForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String selectedCountry = 'Select Country';
  bool receiveMessages = false;
  bool subscribeNewsletter = false;
  bool receivePromotionalEmails = false;

  List<String> countries = ['Select Country', 'USA', 'Canada', 'UK', 'Germany', 'France'];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'User Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: TextField(
              controller: nameController,
              style: const TextStyle(fontSize: 16),
              decoration: const InputDecoration(
                labelText: 'Name',
                labelStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: TextField(
              controller: phoneController,
              style: const TextStyle(fontSize: 16),
              decoration: const InputDecoration(
                labelText: 'Phone Number',
                labelStyle: TextStyle(fontSize: 16),
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: DropdownButton<String>(
              value: selectedCountry,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(fontSize: 16, color: Colors.black),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedCountry = newValue;
                  });
                }
              },
              items: countries.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Communication Preferences',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Receive Messages
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Receive Messages:'),
              Row(
                children: [
                  Radio(
                    value: false,
                    groupValue: receiveMessages,
                    onChanged: (bool? value) {
                      setState(() {
                        receiveMessages = value!;
                      });
                    },
                  ),
                  const Text('No, thanks'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: receiveMessages,
                    onChanged: (bool? value) {
                      setState(() {
                        receiveMessages = value!;
                      });
                    },
                  ),
                  const Text('Yes, please'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),

          // Subscribe to Newsletter
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: subscribeNewsletter,
                onChanged: (bool? value) {
                  setState(() {
                    subscribeNewsletter = value!;
                  });
                },
              ),
              const Text('Subscribe to Newsletter'),
            ],
          ),
          const SizedBox(height: 10),

          // Receive Promotional Emails
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: receivePromotionalEmails,
                onChanged: (bool? value) {
                  setState(() {
                    receivePromotionalEmails = value!;
                  });
                },
              ),
              const Text('Receive Promotional Emails'),
            ],
          ),
          const SizedBox(height: 20),

          // Buttons Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Back Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'),
              ),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmScreen(
                        name: nameController.text,
                        phoneNumber: phoneController.text,
                        selectedCountry: selectedCountry,
                        receiveMessages: receiveMessages,
                        subscribeNewsletter: subscribeNewsletter,
                        receivePromotionalEmails: receivePromotionalEmails,
                      ),
                    ),
                  );
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
