import 'package:flutter/material.dart';
import 'package:ips_tracking/Features/QrCode/presentation/views/widgets/QrCode_body.dart';




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
      body: QrCodeBody()
    );
  }
}


