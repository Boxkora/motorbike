import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
        _schedulePageCard(context,"Khách hàng 1","Xe 1","Tại nhà","22/02/2024","13 giờ 30 phút"),
        _schedulePageCard(context,"Khách hàng 2","Xe 2","Tại chổ","23/02/2024","15 giờ 30 phút"),
       ],
      ), 
     
    );
  }

  Card _schedulePageCard(BuildContext context, String username, String motorname, String type, String date, String time) {
  return Card(
    shadowColor: Colors.deepPurpleAccent,
    clipBehavior: Clip.hardEdge,
    child: InkWell(
      onTap: () {
        if (type == 'Tại nhà'){
          GoRouter.of(context).pushNamed('hometypepage',
          pathParameters: {'username':username,'motorname':motorname,'type':type,'date':date,'time':time,});
        }else{
          GoRouter.of(context).pushNamed('companytypepage',
          pathParameters: {'username':username,'motorname':motorname,'type':type,'date':date,'time':time,});
        }
      },
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text('Tên Khách Hàng:',style: TextStyle(fontSize: 20),),
                    SizedBox(width: 5,),
                    Text(username,style: TextStyle(fontSize: 20),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Tên Xe:',style: TextStyle(fontSize: 20),),
                    Text(motorname,style: TextStyle(fontSize: 20),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Loại:',style: TextStyle(fontSize: 20),),
                    Text(type,style: TextStyle(fontSize: 20),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Ngày đặt:',style: TextStyle(fontSize: 20),),
                    Text(date,style: TextStyle(fontSize: 20),)
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('Thời gian:',style: TextStyle(fontSize: 20),),
                    Text(time,style: TextStyle(fontSize: 20),)
                  ],
                ),
              ],
            ),
          ),
          Icon(Icons.note,size: 100,)
        ],
      ), 
    ),
  );
}

}

class HomeTypePage extends StatelessWidget {
  final String username;
  final String motorname;
  final String type;
  final String date;
  final String time;
  const HomeTypePage({super.key,required this.username,required this.motorname,required this.type,required this.date,required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Thong tin dat hen tai nha"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          
       ],
      ), 
     
    );
  }
}

class CompanyTypePage extends StatelessWidget {
  final String username;
  final String motorname;
  final String type;
  final String date;
  final String time;
  const CompanyTypePage({super.key,required this.username,required this.motorname,required this.type,required this.date,required this.time});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Thong tin dat hen tai cho"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
       ],
      ), 
     
    );
  }
}