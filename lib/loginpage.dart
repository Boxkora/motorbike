import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget>[
            Image.asset('assets/mototech.png',scale:1.5,),
            Text(
              'ĐĂNG NHẬP',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            
            Form(
              child: Column(
                
                children:[
                  
                  TextFormField(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: 'Tài Khoản',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  
                  TextFormField(
                    style: TextStyle(fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      hintText: 'Mật Khẩu',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed:(){
                GoRouter.of(context).go('/');
              },
             child: Text('Đăng Nhập'), ),
             SizedBox(height: 50,)
          ], 
        ),
      ),
    );
  }
}