import 'package:flutter/material.dart';

class QrPaymentPage extends StatelessWidget {
  const QrPaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:<Widget>[ 
                Text('QR Thanh toán', style: TextStyle(fontSize: 24,fontWeight:FontWeight.bold)),
                Image.asset("assets/QR.png"),
                Row(
                  children: <Widget>[
                    Expanded(child:Image.asset("assets/momo.png"), ),
                    Expanded(child:Image.asset("assets/mb.png",scale: 12,),),
                    Expanded(child:Image.asset("assets/vcb.png"), ),
                    Expanded(child:Image.asset("assets/paypal.png"), ),
                  ]  
                ),
          ]
      ),
    );
  }
}