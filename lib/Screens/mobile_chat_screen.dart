import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/chat_list.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';
import 'package:whats_app_responsive/Widgets/info.dart';

class MobileChatScreen extends StatelessWidget {
  MobileChatScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          // Chat list
          const Expanded(child: ChatList()),

          Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: mobileChatBoxColor,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.emoji_emotions),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: TextFormField(
                      controller: msgController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.white30),
                        hintText: 'Type a message',
                        filled: true,
                        fillColor: Colors.white10,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Icon(Icons.camera_alt, color: Colors.grey),
                      SizedBox(width: 8),
                      Icon(Icons.attach_file, color: Colors.grey),
                      SizedBox(width: 8),
                      IconButton(
                        onPressed: () {
                          msgController.clear();
                          //Navigator.pop(context);
                        },
                        icon: Icon(Icons.send, color: messageColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
