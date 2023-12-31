import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/chat_list.dart';
import 'package:whatsapp_clone/widgets/contacts_lists.dart';
import 'package:whatsapp_clone/widgets/web_chat_appbar.dart';
import 'package:whatsapp_clone/widgets/web_profile_bar.dart';
import 'package:whatsapp_clone/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:
      Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //web profile bar
                  WebProfileBar(),
                  //web search bar
                  WebSearchBar(),
                  ContactsList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/backgroundImage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child:const Column(
              children: [
                // chat app bar 
                WebChatAppbar(),
                //chat list bar
                Expanded(child: ChatList()),
                //message input box
              ],
            ),
          ),
        ],
      ),
    
    );
  }
}
