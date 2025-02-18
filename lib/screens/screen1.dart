import 'package:flutter/material.dart';
import 'screen2.dart';
import '../utils/validators.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen 1'),
        backgroundColor: Colors.blueAccent, // AppBar color
        centerTitle: true, // Center the title
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blueAccent, Colors.purpleAccent], // Gradient background
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center the form vertically
              children: [
                // Name Input Field
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Enter your name',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8), // Light white background
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                      borderSide: BorderSide.none, // No border
                    ),
                    errorStyle: const TextStyle(color: Colors.red), // Red error text
                  ),
                  validator: Validators.validateName,
                ),
                const SizedBox(height: 20),

                // Email Input Field
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8), // Light white background
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                      borderSide: BorderSide.none, // No border
                    ),
                    errorStyle: const TextStyle(color: Colors.red), // Red error text
                  ),
                  validator: Validators.validateEmail,
                ),
                const SizedBox(height: 20),

                // Phone Number Input Field
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter your phone number',
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8), // Light white background
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                      borderSide: BorderSide.none, // No border
                    ),
                    errorStyle: const TextStyle(color: Colors.red), // Red error text
                  ),
                  validator: Validators.validatePhone,
                ),
                const SizedBox(height: 30),

                // Button to navigate to Screen 2
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen2(
                            name: _nameController.text,
                            email: _emailController.text,
                            phone: _phoneController.text,
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, // Button color
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Button padding
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0), // Rounded corners
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(fontSize: 18, color: Colors.white), // Button text style
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}