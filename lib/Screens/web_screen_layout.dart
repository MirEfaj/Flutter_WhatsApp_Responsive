import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';
import '../Widgets/chat_list.dart';
import '../Widgets/contacts_list.dart';
import '../Widgets/drawer_settings.dart';
import '../Widgets/web_chat_appbar.dart';
import '../Widgets/web_profile_bar.dart';
import '../Widgets/web_search_bar.dart';


class WEBScreenLayout extends StatelessWidget {
   WEBScreenLayout({super.key});
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();
  TextEditingController msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _drawerKey,
        endDrawer: const CustomDrawer(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web prof bar
                  WebProfileBar(drawerKey: _drawerKey,),
                  //web search
                  WebSearchBar(),
                  ContactsList(),
                ], ),
            ),
          ),
          //web screen
          Container(
            width: MediaQuery.of(context).size.width * 0.75, // Corrected parentheses
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                //chat app bar
                WebChatAppbar(),
                // chat list
                Expanded(child: ChatList()),
                //msg input box
                Container(
                  height: MediaQuery.of(context).size.height *0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: dividerColor,
                      )
                    ),
                    color: chatBarMessage,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined, color: Colors.grey,)),
                      IconButton(onPressed: () {},
                        icon: const Icon(Icons.more_vert, color: Colors.grey), ),
                      Expanded(child: Padding(padding: EdgeInsets.only(left: 10,right: 15),
                      child: TextFormField(
                        controller: msgController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(onPressed: (){
                            msgController.clear();
                          }, icon: Icon(Icons.send ,)),
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )
                          ),
                          contentPadding: const EdgeInsets.only(left: 20),
                        )
                        ),)),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.mic, color: Colors.grey,)),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
