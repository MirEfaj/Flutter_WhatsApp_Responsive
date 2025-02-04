import 'package:flutter/material.dart';

import '../Widgets/info.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
         Row(
           children: [
             SizedBox(width: 20,),
             Text('Recent', style: TextStyle(fontSize: 18),)
           ],
         ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(info[index]['profilePic'].toString()),),
                title: Text(info[index]["name"].toString()),
                subtitle: Text(info[index]["calltime"].toString()),
                trailing: Icon(Icons.phone, color: Color(0XFF026500)),
              );
                
            },itemCount: info.length,
            ),
          ),
        ],
      ),
    );
  }
}


