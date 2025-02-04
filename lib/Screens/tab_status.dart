import 'package:flutter/material.dart';
import '../Widgets/info.dart';
class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
           children: [
             SizedBox(height: 30,),
             Row(
               children: [
                 SizedBox(width: 20,),
                    Text('Status', style: TextStyle(fontSize: 18),)
               ],),
             SizedBox(height: 10,),
             ListTile(
               leading: Padding(
                 padding: const EdgeInsets.only(left: 8.0),
                 child: Stack(
                   children: [
                     CircleAvatar(
                       radius: 25,
                       backgroundImage: NetworkImage('https://d1tgyzt3mf06m9.cloudfront.net/v3-staging/2024/07/Feature-37-scaled.jpg'),),
                     Positioned(
                       bottom: 0,
                       right: 0,
                       child: CircleAvatar(
                         radius: 10,
                         backgroundColor: Color(0XFF008069),
                         child: Icon(Icons.add, color: Colors.white),
                       ),
                     ),
                   ], 
                 ),
               ),
             title: Text('My Status', style: TextStyle(fontSize: 20),),
             subtitle: Text('Tap to add status update', style: TextStyle(fontSize: 15),),
               trailing:  IconButton(onPressed: (){
                 if(MediaQuery.of(context).size.width >900){
                   return Navigator.pop(context);
                 }
                 null;
               }, icon: Icon(Icons.arrow_back_rounded,size: 10,)),
              ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                  Text('Recent update', style: TextStyle(fontSize: 15),),
                   Icon(Icons.arrow_drop_down),
                 ],
               ), ),
             SizedBox(height: 10,),
             
             Expanded(
               child: ListView.builder(itemBuilder: (context, index){
                 return ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(info[index]["profilePic"].toString(),),),
                     title: Text(info[index]['nane'].toString(),style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
                     subtitle: Text(info[index]['statustime'].toString(),style: TextStyle(fontSize: 14,),),

                 );
               },itemCount: info.length,),
             ),


           ],
      ),

    );
  }
}
