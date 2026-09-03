import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'About',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Center(
              child: Text(
                'Droply 24.11.2',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 5),

            const Center(
              child: Text(
                '(142356971256)',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),

            const SizedBox(height: 30),

            ListTile(
              title: const Text(
                'View changelog',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            const SizedBox(height: 10),

            ListTile(
              title: const Text(
                'Visit Hotelio .com',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            ListTile(
              title: const Text(
                'Visit for inspiration',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            ListTile(
              title: const Text(
                'We are hiring!',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'Legal',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 10),

            ListTile(
              title: const Text(
                'Acknowledgments',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            ListTile(
              title: const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            ListTile(
              title: const Text(
                'Security Policy',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),

            ListTile(
              title: const Text(
                'Terms of Service',
                style: TextStyle(fontSize: 13),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}