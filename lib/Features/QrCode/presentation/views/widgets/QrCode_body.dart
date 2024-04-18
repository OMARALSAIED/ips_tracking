import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/QrCode/presentation/views/QrCode.dart';
import 'package:ips_tracking/Features/QrCode/presentation/views/QrScanner.dart';
import 'package:ips_tracking/Features/QrCode/presentation/views/Qr_image.dart';

class QrCodeBody extends StatelessWidget {
  const QrCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          ElevatedButton(onPressed: ()
          {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> QrSCanner()));
           
          }
          , child: Text('Scanner QR Code'))
        ],);
  }
}