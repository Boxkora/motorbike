import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
        _messagePageCard(context,"assets/fox.png","Khách hàng 1","Phụ đề tin nhắn 1","Đây là nội dung tin nhắn 1."),
       ],
      ), 
     
    );
  }

  Card _messagePageCard(BuildContext context, String imageurl, String username, String subtitle, String detail) {
    return Card(
        clipBehavior: Clip.hardEdge,
        child: ListTile(
          onTap: () {
            GoRouter.of(context).pushNamed('detailedmessagepage',
            pathParameters: {'username':username,'detail': detail});
          },
          contentPadding: EdgeInsets.all(1),
          leading: SizedBox(
            width: 80,
            height: 1000, 
            child: Image.asset(imageurl,fit:BoxFit.cover),
          ),   
          title: Text(username,style:TextStyle(fontSize: 20)),
          subtitle: Text(subtitle) ,
          ),
    );
  }
}

class DetailedMessagePage extends StatelessWidget {
  final String username;
  final String detail ;
  const DetailedMessagePage({super.key,required this.username,required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(username),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text(detail,style: TextStyle(fontSize: 20) )
       ],
      ), 
     
    );
  }
}
