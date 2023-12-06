import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/widgets/contacts_lists.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBar(context),
        body:  TabBarView(
          children: [
            ContactsList(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: tabColor,
          child: const Icon(Icons.comment, color: Colors.white),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      elevation: 0,
      title: const Text(
        'WhatsApp', // You can make this dynamic
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // Handle camera button click
          },
          icon: const Icon(Icons.camera_alt_outlined),
        ),
        IconButton(
          onPressed: () {
            // Handle search button click
          },
          icon: const Icon(Icons.search),
        ),
        buildPopupMenuButton(context), // Add the PopupMenuButton here
      ],
      bottom: const TabBar(
        indicatorColor: tabColor,
        indicatorWeight: 4,
        labelColor: tabColor,
        unselectedLabelColor: Colors.grey,
        tabs: [
          Tab(text: 'Chats'),
          Tab(text: 'Status'),
          Tab(text: 'Calls'),
        ],
      ),
    );
  }

  PopupMenuButton<String> buildPopupMenuButton(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        // Handle the selected option
        print('Selected: $value');
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem<String>(
            value: 'New Group',
            child: Text('New group'),
          ),
          PopupMenuItem<String>(
            value: 'Option 2',
            child: Text('New broudcast'),
          ),
          PopupMenuItem<String>(
            value: 'Option 3',
            child: Text('Linked devices'),
          ),
          PopupMenuItem<String>(
            value: 'Option 4',
            child: Text('strared messages'),
          ),
          PopupMenuItem<String>(
            value: 'Option 5',
            child: Text('settings'),
          ),
        ];
      },
      icon: const Icon(Icons.more_vert),
    );
  }
}

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Status Screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'call-screen',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}