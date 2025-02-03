import 'package:flutter/material.dart';
import 'info.dart';
import 'sender_message_card.dart';
import 'my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (BuildContext context, int index) {
        if(messages[index]['isMe'] == true){
          // my msg card
          return MyMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString(),);
        }
        // sender msg card
        else
         {return SenderMessageCard(message: messages[index]['text'].toString(), date: messages[index]['time'].toString(),);}

      },

    );
  }
}
