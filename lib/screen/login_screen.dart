import 'package:final_project/filehome/home_page.dart';
import 'package:flutter/material.dart';
import 'Registerscreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPassword = false;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Verve',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      children: [
                        const Text(
                          'Select Country',
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xff5B5BD6),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.language,
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                const Text(
                  'Welcome back',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),

                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xffB5B5B8),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                TextField(
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontSize: 25,
                      color: Color(0xffB5B5B8),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        showPassword
                            ? Icons.visibility
                            : Icons.visibility_outlined,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  children: [
                    Checkbox(
                      value: rememberMe,
                      onChanged: (value) {
                        setState(() {
                          rememberMe = value ?? false;
                        });
                      },
                    ),

                    const Text(
                      'Remember me',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    const Spacer(),

                    const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff5B5BD6),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                Container(
                  height: 1,
                  width: double.infinity,
                  color: const Color(0xffD0D0D0),
                ),

                const SizedBox(height: 40),

                const Text(
                  'New to Verve',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Registerscreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                const Center(
                  child: Text(
                    'Terms of use & Privacy Policy',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff5B5BD6),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}