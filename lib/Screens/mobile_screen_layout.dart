import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';
import 'package:whats_app_responsive/Widgets/contacts_list.dart';

import 'mobile_chat_screen.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(title:const Text('Whats App',style: TextStyle(color: Colors.grey),),
          elevation: 0,
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey)),
          ],toolbarHeight: 50,
            bottom: TabBar(
              labelColor: tabColor,
                indicatorColor: tabColor,
                tabs: [
                  Tab(text: 'CHATS',),
                  Tab(text: 'STATUS',),
                  Tab(text: 'CALLS',),
                ]),
          ),
        //  body: Center(child: Text('mobile')),
          body: ContactsList(),
          floatingActionButton: FloatingActionButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileChatScreen()));
              },
              backgroundColor: tabColor,
              child: const  Icon(Icons.comment,color: Colors.white, size: 33,),
          ),
        )
    );
  }
}
