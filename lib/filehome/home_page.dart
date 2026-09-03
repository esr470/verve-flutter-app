import 'package:final_project/filehome/BestSellers.dart';
import 'package:final_project/filehome/Category.dart';
import 'package:final_project/filehome/Categorys.dart';
import 'package:final_project/filehome/ForYou.dart';
import 'package:final_project/filehome/Hotdrop.dart';
import 'package:final_project/filehome/Inspirationalsecond.dart';
import 'package:final_project/filehome/Jackets.dart';
import 'package:final_project/filehome/SectionTitle.dart';
import 'package:final_project/filehome/WinterSale.dart';
import 'package:final_project/filehome/bar.dart';
import 'package:final_project/filehome/bottom_nav_bar.dart';
import 'package:final_project/filehome/outdoor.dart';
import 'package:final_project/filehome/about_screen.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Bar(),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 150,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Verve',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home_outlined),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.person_outline),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(Icons.favorite_border),
              title: const Text('Favorites'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.shopping_bag_outlined,
              ),
              title: const Text('Cart'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.settings_outlined,
              ),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.info_outline,
              ),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 15),

                  const Category(),

                  const SizedBox(width: 8),

                  Categorys(text: 'Deals'),
                  Categorys(text: 'Clothes'),
                  Categorys(text: 'Shoes'),
                  Categorys(text: 'Sports'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Hotdrop(),

            const SizedBox(height: 25),

            const SectionTitle(
              title: 'Best Sellers',
            ),

            const SizedBox(height: 12),

            const BestSellers(),

            const SizedBox(height: 25),

            const WinterSale(),

            const SizedBox(height: 30),

            const Inspirationalsecond(),

            const SizedBox(height: 30),

            const SectionTitle(
              title: 'Jackets',
            ),

            const SizedBox(height: 15),

            const Jackets(),

            const SizedBox(height: 30),

            const Outdoor(),

            const SizedBox(height: 30),

            const SectionTitle(
              title: 'For you',
            ),

            const SizedBox(height: 12),

            const ForYou(),

            const SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: const BottomNavBar(
        currentIndex: 0,
      ),
    );
  }
}