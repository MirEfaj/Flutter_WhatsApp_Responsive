import 'package:flutter/material.dart';

import 'info.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.separated(
        shrinkWrap: true,
          itemCount: info.length ,
          itemBuilder: (context , index){
            return InkWell(
              onTap: (){},
              child: ListTile(
                leading: CircleAvatar(radius :30 ,backgroundImage: NetworkImage(info[index]["profilePic"].toString()),),
                title: Text(info[index]["name"].toString(),style: TextStyle(fontSize: 18)),
                subtitle: Text(info[index]["message"].toString(), style: TextStyle(fontSize: 15),),
                trailing:Text(info[index]["time"].toString(),style: TextStyle(fontSize: 13, color: Colors.grey)),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) { return SizedBox(height: 5,); },)
    );
  }
}
