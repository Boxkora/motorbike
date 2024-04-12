import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class AppointmentSchedulePage extends StatelessWidget {
  const AppointmentSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Colors.white), // Change color here
          onPressed: () => GoRouter.of(context).pop(),
        ),
        backgroundColor: Colors.deepPurple,
        title: Text(
          'Lịch Trả Xe',
          style: TextStyle(
            
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text(
            "Lịch trả xe",
            style: TextStyle(
              color: Colors.black,
              fontSize: 45,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}