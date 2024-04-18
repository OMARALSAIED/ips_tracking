import 'package:flutter/material.dart';
import 'package:ips_tracking/constant.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrImageApp extends StatelessWidget {
  const QrImageApp({super.key, required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(title: Text('Flutter + QR Code'),),
      body:Center(
        child: QrImageView(
          data: controller.text,
          size: 200,
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: Size(
              100,
              100,
            )
          ),
        ),
      ) ,
    );
  }
}