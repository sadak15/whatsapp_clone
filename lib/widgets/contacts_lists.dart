import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: 
          ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MobileChatScreen()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: ListTile(
                          title: Text(
                            info[index]['name'].toString(),
                            style: const TextStyle(fontSize: 18),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                              info[index]['message'].toString(),
                              style: const TextStyle(fontSize: 15),
                            ),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              info[index]['profilePic'].toString(),
                            ),
                          ),
                          trailing: Text(
                            info[index]['time'].toString(),
                            style: const TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const Divider(color: dividerColor, indent: 85,)
                  ],
                );
              },
            ),
    );
  }
}
