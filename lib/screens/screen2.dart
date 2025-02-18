import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  const Screen2({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 2'),
        backgroundColor: Colors.blueAccent, // AppBar color
        centerTitle: true, // Center the title
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent,
              Colors.purpleAccent,
            ], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 10, // Shadow for the card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0), // Rounded corners
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize:
                      MainAxisSize.min, // Make the card wrap its content
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Name Section
                    Row(
                      children: [
                        const Icon(
                          Icons.person,
                          color: Colors.blueAccent,
                          size: 30,
                        ), // Icon
                        const SizedBox(width: 10),
                        Text(
                          'Name: $name',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Email Section
                    Row(
                      children: [
                        const Icon(
                          Icons.email,
                          color: Colors.blueAccent,
                          size: 30,
                        ), // Icon
                        const SizedBox(width: 10),
                        Text(
                          'Email: $email',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Phone Section
                    Row(
                      children: [
                        const Icon(
                          Icons.phone,
                          color: Colors.blueAccent,
                          size: 30,
                        ), // Icon
                        const SizedBox(width: 10),
                        Text(
                          'Phone: $phone',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // Back Button
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context); // Go back to Screen 1
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent, // Button color
                          padding: const EdgeInsets.symmetric(
                            horizontal: 40,
                            vertical: 15,
                          ), // Button padding
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              10.0,
                            ), // Rounded corners
                          ),
                        ),
                        child: const Text(
                          'Back',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ), // Button text style
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
