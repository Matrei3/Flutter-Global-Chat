import 'package:chat_app/widgets/message_bubble.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatMessages extends StatelessWidget{
  const ChatMessages({super.key});

  @override
  Widget build(BuildContext context) {
    final authUser = FirebaseAuth.instance.currentUser!;
    return StreamBuilder(stream: FirebaseFirestore.instance.collection('chat').orderBy('createdAt',descending: true).snapshots(), builder: (ctx,snapshots){
      if(snapshots.connectionState == ConnectionState.waiting){
        return const Center(child: CircularProgressIndicator(),);
      }
      if(!snapshots.hasData || snapshots.data!.docs.isEmpty){
        return const Center(child: Text('No messages'),);
      }
      if(snapshots.hasError){
        return const Center(child: Text('Something went wrong!'),);

      }
      final loadedMessages = snapshots.data!.docs;
      return ListView.builder(padding: const EdgeInsets.only(bottom: 40,left: 13,right: 13),reverse: true, itemCount: loadedMessages.length, itemBuilder: (ctx,index)  {
        final chatMessage = loadedMessages[index].data();
        final nextChatMessage = index + 1 < loadedMessages.length ? loadedMessages[index + 1].data() : null;
        final currentMessageUserId = chatMessage['userId'];
        final nextMessageUserId = nextChatMessage != null ? nextChatMessage['userId'] : null;
        final nextUserIsSame = nextMessageUserId == currentMessageUserId;
        if(nextUserIsSame){
          return MessageBubble.next(message: chatMessage['text'], isMe: authUser.uid == currentMessageUserId);
        }
        else{
          return MessageBubble.first(userImage: chatMessage['userImage'], username: chatMessage['username'], message: chatMessage['text'], isMe: nextMessageUserId == currentMessageUserId);
        }
      });
    });

  }

}