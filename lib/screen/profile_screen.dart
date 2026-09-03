import 'package:final_project/filehome/home_page.dart';
import 'package:final_project/filehome/setting.dart';
import 'package:flutter/material.dart';
import 'favorite_screen.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        // Back
                        IconButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const HomePage(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),

                        const Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
IconButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      ),
    );
  },
  icon: const Icon(
    Icons.settings,
    color: Colors.white,
    size: 30,
  ),
),
                      ],
                    ),

                    const SizedBox(height: 25),

                    const CircleAvatar(
                      radius: 50,
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "James Martin",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Senior Graphic Designer",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 30),

                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "1000",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Followers",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                        Container(
                          width: 1,
                          height: 30,
                          color: Colors.white,
                        ),

                        Row(
                          children: const [
                            Text(
                              "1200",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Following",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 25),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            const ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("james012@gmail.com"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Mobile"),
              subtitle: Text("1234567891"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.alternate_email),
              title: Text("Twitter"),
              subtitle: Text("@james012"),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.work),
              title: Text("Behance"),
              subtitle: Text(
                "www.behance.net/james012",
              ),
            ),

            const Divider(),

            const ListTile(
              leading: Icon(Icons.facebook),
              title: Text("Facebook"),
              subtitle: Text(
                "www.facebook.com/james012",
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3,
        type: BottomNavigationBarType.fixed,

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],

        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          }

          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const FavoriteScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}