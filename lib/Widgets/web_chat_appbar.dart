import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';

import 'info.dart';

class WebChatAppbar extends StatelessWidget {
  const WebChatAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.077,
      width : MediaQuery.of(context).size.width *0.75,
      padding: EdgeInsets.all(10),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1419974913260232732/Cy_CUavB.jpg'),),
              SizedBox(width: MediaQuery.of(context).size.width *0.01,),
              Text(
                  info[0]['name'].toString(),
                  style: const TextStyle(fontSize: 18),
                   ), ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon:const Icon(Icons.search, color: Colors.grey,)),
              IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert, color: Colors.grey,)),
            ],
          )
        ],
      ),

    );
  }
}
