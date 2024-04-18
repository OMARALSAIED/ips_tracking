import 'package:flutter/material.dart';

import 'package:ips_tracking/Features/QrCode/presentation/views/Qr_image.dart';




class QrCode extends StatefulWidget {
  const QrCode({super.key});

  @override
  State<QrCode> createState() => _QrCodeState();
}

final TextEditingController controller=TextEditingController();

class _QrCodeState extends State<QrCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Qr code'),centerTitle: true,),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),labelText: 'Enter Url'
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>QrImageApp(controller: controller,)));
          }, child: Text('Generate QR Code')),
          ElevatedButton(onPressed: (){}, child: Text('Scanner QR Code'))
        ],),
    );
  }
}