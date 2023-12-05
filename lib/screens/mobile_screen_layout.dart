import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_lists.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text('WhatsApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
           ),
          ),
          actions: [
                IconButton(onPressed: (){},
           icon:const Icon(Icons.camera_alt_outlined),
        ),
            IconButton(onPressed: (){},
           icon:const Icon(Icons.search),
        ),
            IconButton(onPressed: (){},
           icon:const Icon(Icons.more_vert),
        )
        ],
        bottom:const TabBar(
          indicatorColor: tabColor,
          indicatorWeight: 4,
          labelColor: tabColor,
          unselectedLabelColor: Colors.grey,
          tabs:[
          // Tab(icon: Icon(Icons.groups_2),),
          Tab(text: 'Chats',),
          Tab(text: 'Status',),
          Tab(text: 'Calls',),
        ]),
        ),
        body: const ContactsList(),
        floatingActionButton: FloatingActionButton(
          
          onPressed: (){},
          backgroundColor: tabColor,
          child:const Icon(Icons.comment, color: Colors.white, ),
        ),
      )
      );
  }
}