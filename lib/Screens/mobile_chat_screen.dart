import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/chat_list.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';
import 'package:whats_app_responsive/Widgets/info.dart';
class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(info[0]['name'].toString()),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
        IconButton(onPressed: (){}, icon: Icon(Icons.call)),
        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
      ],),
      body: Column(
        children: [
          //chat lost
         const Expanded(child: ChatList()),
          // text expanded
          TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: mobileChatBoxColor,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(Icons.emoji_emotions),
              ),

              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.camera_alt, color: Colors.grey,),
                    Icon(Icons.attach_file, color: Colors.grey,),
                    Icon(Icons.money, color: Colors.grey,),
                  ],
                ),),
              hintText: 'Type a message',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  )
              ),
                contentPadding: const EdgeInsets.all(10),
            ),
          )
        ],
      ),
    );
  }
}
