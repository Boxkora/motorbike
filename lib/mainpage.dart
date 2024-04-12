import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
       crossAxisCount: 2,
       children: <Widget>[
        _mainPageCard(context,"Đơn Thanh Toán",Icons.receipt_long,"/receiptpage"),
        _mainPageCard(context,"Xe Cho Mượn",Icons.motorcycle_rounded,"/loancarpage"),
        _mainPageCard(context,"Camera",Icons.video_camera_back,"/camerapage"),
        _mainPageCard(context,"Lịch Trả Xe",Icons.calendar_month,"/appointmentschedulepage"),
       ],
        
        
      ),
    );
  }


  Card _mainPageCard(BuildContext context, String title , IconData icon , String route) {
    return Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            GoRouter.of(context).push(route);
          },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget> [
                SizedBox(
                  height: 30,
                  child:
                      Text(
                        title,style: TextStyle(fontSize: 20),
                      ),
                ),
                Icon(icon,size:100,),
              ],
            ),
          ),
    );
  }
}