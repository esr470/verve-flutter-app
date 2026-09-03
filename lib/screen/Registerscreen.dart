
import 'package:flutter/material.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({super.key});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  bool isChecked = false;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Verve",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            "Belgium",
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromARGB(255, 29, 121, 197),
                            ),
                          ),
                          const SizedBox(width: 9),
                          const Icon(
                            Icons.language,
                            size: 25,
                          ),
                        ],
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "I'm new here",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 16),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "First Name",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your first name";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Last Name",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your last name";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Email Address",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      }

                      if (!value.contains('@')) {
                        return "Please enter a valid email";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Date of Birth",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your date of birth";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password (6-12 characters)",
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.visibility),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }

                      if (value.length < 6 || value.length > 12) {
                        return "Password must be 6-12 characters";
                      }

                      return null;
                    },
                  ),

                  const SizedBox(height: 20),

                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value ?? false;
                          });
                        },
                      ),
                      const Expanded(
                        child: Text(
                          "Yes, keep me informed via email about the latest trends and special offers.",
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print("All fields are valid");
                        }
                      },
                      child: const Text("Sign In"),
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    "By registering for an account, you agree to our terms of use. Please read our privacy statement.",
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

