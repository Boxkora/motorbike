import "package:flutter/material.dart";
import 'dart:developer';
import 'package:go_router/go_router.dart';
class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  double _progress = 0;
  @override
  void initState(){
    super.initState();
    _navigatetologin();

  }

  Future fetchUserData() async {
    // Simulate a network request
    
    for (int i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 10));
      setState(() {
        _progress = i / 100;
      });
    }
    // If user data is fetched successfully, return true
    return true;
  }

  _navigatetologin(){
    fetchUserData().then((_){
    log("test");
    GoRouter.of(context).go('/loginpage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                  Text('Đang tải...', style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold)),
                  Image.asset("assets/mototech.png"),
          ],
        ),
      ),
    );
  }
}