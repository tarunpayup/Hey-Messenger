import 'package:flutter/material.dart';
import '../models/message_models.dart';

class ChatScreen extends StatefulWidget{
   const ChatScreen({super.key});

   @override
   State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>{
  final TextEditingController messageController = TextEditingController();
  List<MessageModels> messages = [
    MessageModels(message: "Hello", time: "10:20 AM", isSender: true),
    MessageModels(message: "Hi Sameer and Saqib", time: "10:20 AM", isSender: false),
    MessageModels(message: "How are you?", time: "10:21 AM", isSender: true),
    MessageModels(message: "Welcome in Flutter class", time: "10:22 AM", isSender: true),
    MessageModels(message: "Thanks to invite us!!", time: "10:23 AM", isSender: false)
  ];

  void sendMessage(){
    if(messageController.text.trim().isEmpty){
      return;
    }

    setState(() {
      messages.add(
        MessageModels(message: messageController.text, time: "Now", isSender: true)
      );

      messageController.clear();
    });
  }

  Widget chatBubble(MessageModels message){
    return Align(
      alignment: message.isSender?Alignment.centerRight : Alignment.centerLeft ,

      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
        padding: const EdgeInsets.all(22),
        constraints: const BoxConstraints(maxWidth: 280),
        decoration: BoxDecoration(
          color: message.isSender?Colors.green.shade300 : Colors.grey.shade300,
          borderRadius: BorderRadius.circular(20)
        ),//constraints -> rules
        child: Column(
          crossAxisAlignment: message.isSender? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(message.message, style: const TextStyle(fontSize: 16),),
            const SizedBox(height: 5,),
            Text(message.time, style: const TextStyle(fontSize: 10, color: Colors.black54),),

          ],
        ),
      ),
    );
    @override
    Widget build (BuildContext context){
      return Scaffold(
        appBar: AppBar(
          leading: const BackButton(), 
          title: Row(
            children: [
              const CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage("lib/assets/images/logo.png"),
              ),
              const SizedBox(width: 12,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("John Doe", style: TextStyle(fontSize: 18),),
                  const Text("Online", style: TextStyle(fontSize: 12, color: Colors.green),)
                ],
              )
            ],
          ) ,),
      );
    }
  }
}