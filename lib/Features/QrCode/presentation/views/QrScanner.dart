import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrSCanner extends StatefulWidget {
  const QrSCanner({super.key});

  @override
  State<QrSCanner> createState() => _QrSCannerState();
}

class _QrSCannerState extends State<QrSCanner> {
  final GlobalKey qrkey = GlobalKey(debugLabel: 'QR');

  Barcode? result;

  QRViewController? controller;

  @override
  void reassemble() {
    // TODO: implement reassemble
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) controller!.pauseCamera();
    super.reassemble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: QRView(key: qrkey, onQRViewCreated: onQrViewCammrea)),
          Expanded(
              child: Center(
            child: (result != null)
                ? Text('Data : ${result!.code}')
                : const Text('Scan a Code'),
          ))
        ],
      ),
    );
  }

  void onQrViewCammrea(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller?.dispose();
    super.dispose();
  }
}
