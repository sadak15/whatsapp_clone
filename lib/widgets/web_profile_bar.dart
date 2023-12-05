import 'package:flutter/material.dart';
import 'package:whatsapp_clone/colors.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration:const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage('https://scontent.fmgq1-2.fna.fbcdn.net/v/t39.30808-6/319661172_648311000418205_3048434863491397143_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=WbDL6aE_WWkAX_67ZIv&_nc_ht=scontent.fmgq1-2.fna&oh=00_AfCzfr3MCak5po22LMpyRcvg2V6q-nykhjy3-y145ujx0g&oe=656EAFB2'),
          radius: 25,
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.comment, color: Colors.grey,),),
                 Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,),),
            ],
          ),
            ],
          ),
       
        ],
      ),
    );
  }
}