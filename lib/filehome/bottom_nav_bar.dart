import 'package:final_project/filehome/home_page.dart';
import 'package:final_project/filehome/search_screen.dart';
import 'package:final_project/screen/cart_screen.dart';
import 'package:flutter/material.dart';
import '../screen/favorite_screen.dart';
import '../screen/profile_screen.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;

  const BottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,

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
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const FavoriteScreen(),
            ),
          );
        }

        if (index == 2) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SearchScreen(),
            ),
          );
        }

        if (index == 3) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const CartScreen(),
            ),
          );
        }

        if (index == 4) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ProfileScreen(),
            ),
          );
        }
      },

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
          icon: Icon(Icons.search),
          label: 'Search',
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
    );
  }
}