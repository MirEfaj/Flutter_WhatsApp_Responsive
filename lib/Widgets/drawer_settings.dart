import 'package:flutter/material.dart';
import '../Screens/tab_calls.dart';
import 'settings.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Mir Efaj"),
            accountEmail: const Text("mirefaj@gmail.com"),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: NetworkImage(
                "https://static.vecteezy.com/system/resources/thumbnails/026/843/788/small/portrait-of-smart-young-man-with-happy-and-confident-face-on-studio-background-business-concept-ai-generated-free-photo.jpeg",
              ),
            ),
            decoration: BoxDecoration(color: Colors.teal[800]),
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text("New Group"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text("Contacts"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.call),
            title: const Text("Calls"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const CallsTab()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text("Saved Messages"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
             // Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Settings()));
            },
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text("Logout", style: TextStyle(color: Colors.red)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}




