import 'package:flutter/material.dart';
import '/mainpage.dart';
import '/messagepage.dart';
import '/qrpaymentpage.dart';
import '/personalpage.dart';
import '/schedulepage.dart';
import 'package:go_router/go_router.dart';
import '/routertool.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouterTool().route,
    );
  }
}
class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  int _currentIndex = 0;
  final screens = [
    MainPage(),
    SchedulePage(),
    MessagePage(),
    PersonalPage(),
    QrPaymentPage(),
  ]; 
  final pagetitle = [
    "Trang Chính",
    "Lịch Hẹn",
    "Tin Nhắn",
    "Cá Nhân",
    "Qr Thanh Toán"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pagetitle[_currentIndex],style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        leading: Padding(padding: const EdgeInsets.only(left: 10),
        child: Image.asset("assets/mototechmini.png"),
        ),
            
        actions: <Widget>[
          IconButton(onPressed:(){
              GoRouter.of(context).push('/notificationpage');
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 24.0,
            ),
            ),
          ],
      ),

      body: screens[_currentIndex],

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Trang chính',
          
          ),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month),
          label: 'Lịch hẹn',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.mail),
          label: 'Tin nhắn',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle),
          label: 'Cá nhân',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner),
          label: 'Qr thanh toán',
          ),
        ],
        onTap:(index){
          setState(() {
            _currentIndex = index;
          });
        },
       ),
    );
  }
}



