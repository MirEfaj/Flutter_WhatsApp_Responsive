import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';

import '../Screens/tab_status.dart';

class WebProfileBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey;
   const WebProfileBar({super.key, required this.drawerKey});


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *0.077,
      width: MediaQuery.of(context).size.width *0.25,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          )
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StatusTab()));
            },
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtxaPKJwJHUtNBCm8cJf1YNnLjwkvkfk0o7g&s'),
            ),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.comment,color: Colors.grey,)),
    IconButton(onPressed: () {
    drawerKey.currentState?.openEndDrawer(); },
    icon: const Icon(Icons.more_vert, color: Colors.grey), ),
            ],
          ),
        ],
      ),
    );
  }
}
