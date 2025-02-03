import 'package:flutter/material.dart';
import 'package:whats_app_responsive/Widgets/colors.dart';
class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0,left: 10,right: 10),
      child: Container(
        height: MediaQuery.of(context).size.height *0.06,
        width: MediaQuery.of(context).size.width *0.25,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: dividerColor),
          )
        ),
        child: TextFormField(
          decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
            hintText: 'Search or start new chat',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              )
            ),
            contentPadding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
