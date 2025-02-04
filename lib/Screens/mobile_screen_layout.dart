import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';
import 'package:whats_app_responsive/Widgets/contacts_list.dart';
import '../Widgets/drawer_settings.dart';
import 'mobile_chat_screen.dart';
import 'tab_calls.dart';
import 'tab_status.dart';

class MobileScreenLayout extends StatelessWidget {
  MobileScreenLayout({super.key});


  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        key: _drawerKey,
        appBar: AppBar(
          title: const Text('WhatsApp', style: TextStyle(color: Colors.grey)),
          elevation: 0,
          actions: [
            IconButton( onPressed: () {}, icon: const Icon(Icons.search, color: Colors.grey),
            ),
            IconButton(onPressed: () {
                _drawerKey.currentState?.openEndDrawer(); },
              icon: const Icon(Icons.more_vert, color: Colors.grey), ),
          ],
          toolbarHeight: 50,
          bottom: TabBar(
            labelColor: tabColor,
            indicatorColor: tabColor,
            tabs: const [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        endDrawer: const CustomDrawer(),

        body: TabBarView(
          children: [
            Tab(child: ContactsList()),
            Tab(child: StatusTab()),
            Tab(child: CallsTab()),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => MobileChatScreen()),); },
          backgroundColor: tabColor,
          child: const Icon(Icons.comment, color: Colors.white, size: 33),
        ),
      ),
    );
  }
}

