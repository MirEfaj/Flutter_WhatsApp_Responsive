import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://static.vecteezy.com/system/resources/thumbnails/026/843/788/small/portrait-of-smart-young-man-with-happy-and-confident-face-on-studio-background-business-concept-ai-generated-free-photo.jpeg',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Mir Efaj', style: TextStyle(fontSize: 20)),
                          Text('Limitless', style: TextStyle(fontSize: 14, color: Colors.white54)),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.qr_code, color: Colors.green),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_circle_outline, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SettingsTile(icon: Icons.key, title: "Account", subtitle: "Security notifications, change number", onTap: () { }),
                  SettingsTile(icon: Icons.lock_outline_rounded, title: "Privacy", subtitle: "Block contacts, disappearing messages", onTap: () { }),
                  SettingsTile(icon: Icons.person, title: "Avatar", subtitle: "Create, edit, profile photo", onTap: () { }),
                  SettingsTile(icon: Icons.contact_phone_outlined, title: "List", subtitle: "Manage people and groups", onTap: () { }),
                  SettingsTile(icon: Icons.insert_comment_outlined, title: "Chats", subtitle: "Theme, wallpaper, chat history", onTap: () { }),
                  SettingsTile(icon: Icons.notifications_none, title: "Notification", subtitle: "Manage, group & call tones", onTap: () { }),
                  SettingsTile(icon: Icons.data_saver_off, title: "Storage and data", subtitle: "Network usage, auto-download", onTap: () { }),
                  SettingsTile(icon: Icons.language_outlined, title: "App language", subtitle: "English (device's language)", onTap: () { }),
                  SettingsTile(icon: Icons.help_outline, title: "Help", subtitle: "Help center, contact us, privacy policy", onTap: () { }),
                  SettingsTile(icon: Icons.supervised_user_circle_outlined, title: "Invite a friend", onTap: () { }),
                  SettingsTile(icon: Icons.system_security_update_good, title: "App updates", onTap: () { }),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback? onTap; // Add onTap parameter

  const SettingsTile({
    super.key,
    required this.icon,
    required this.title,
    this.subtitle,
    this.onTap, // Initialize onTap
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title, style: const TextStyle(fontSize: 18)),
      subtitle: subtitle != null
          ? Text(subtitle!, style: const TextStyle(fontSize: 14, color: Colors.white54))
          : null,
      onTap: onTap, // Assign onTap function to ListTile
    );
  }
}
