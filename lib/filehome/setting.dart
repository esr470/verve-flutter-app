import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color(0xfffff0ff),
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),

        title: const Text(
          'Settings',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 18,
              bottom: 8,
            ),
            child: Text(
              'GENERAL',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
          ),

          settingItem(
            Icons.person_outline,
            'Account',
          ),

          settingItem(
            Icons.notifications_none,
            'Notifications',
          ),

          settingItem(
            Icons.card_giftcard,
            'Coupons',
          ),

          settingItem(
            Icons.logout,
            'Logout',
          ),

          settingItem(
            Icons.delete_outline,
            'Delete account',
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              top: 20,
              bottom: 8,
            ),
            child: Text(
              'FEEDBACK',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
          ),

          settingItem(
            Icons.warning_amber_outlined,
            'Report a bug',
          ),

          settingItem(
            Icons.send_outlined,
            'Send feedback',
          ),
        ],
      ),
    );
  }

  Widget settingItem(
    IconData icon,
    String title,
  ) {
    return Container(
      height: 54,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xffeeeeee),
          ),
        ),
      ),

      child: ListTile(
        leading: Icon(
          icon,
          size: 20,
          color: Colors.black,
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
        ),

        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 14,
          color: Colors.grey,
        ),

        onTap: () {},
      ),
    );
  }
}