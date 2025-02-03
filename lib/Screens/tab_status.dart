import 'package:flutter/material.dart';
import 'package:whats_new/Widgets/uihelper.dart';
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
                 UiHelper.customText(text: 'Status', height: 20),
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
               title: UiHelper.customText(text: 'My Status', height: 20),
               subtitle: UiHelper.customText(text: 'Tap to add status update', height: 15),
             ),
             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 30.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   UiHelper.customText(text: 'Recent update', height: 15),
                   Icon(Icons.arrow_drop_down),
                 ],
               ), ),
             SizedBox(height: 10,),
             
             Expanded(
               child: ListView.builder(itemBuilder: (context, index){
                 return ListTile(
                   leading: CircleAvatar(
                     backgroundImage: NetworkImage(UiHelper.userDetails[index]["img"].toString(),),),
                   title: UiHelper.customText(text: UiHelper.userDetails[index]['name'].toString(), height: 16, fontweight: FontWeight.bold),
                   subtitle: UiHelper.customText(text: UiHelper.userDetails[index]['statustime'].toString(), height: 14, ),
                 );
               },itemCount: UiHelper.userDetails.length,),
             )


           ],
      ),

    );
  }
}
