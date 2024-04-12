import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Thông Báo'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => GoRouter.of(context).pop(),
        ),
      ),
      body: Column(
        children: <Widget>[
        _notificationPageCard(context,"Thông báo 1","Phụ đề thông báo 1","Đây là nội dung thông báo 1."),
       ],
      ), 
     
    );
  }

  Card _notificationPageCard(BuildContext context, String title, String subtitle, String detail) {
    return Card(
        clipBehavior: Clip.hardEdge,
        child: ListTile(
          onTap: () {
            GoRouter.of(context).pushNamed('detailednotificationpage',
            pathParameters: {'title':title ,'detail': detail});
          },
          title: Text(title,style:TextStyle(fontSize: 20)),
          subtitle: Text(subtitle) ,     
          ),
    );
  }
}

class DetailedNotificationPage extends StatelessWidget {
  final String detail ;
  final String title ;
  const DetailedNotificationPage({super.key,required this.title,required this.detail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(title),
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