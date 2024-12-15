//QR-Code Scanner
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerSimple extends StatefulWidget {
  final Function(String) onScan;

  const BarcodeScannerSimple({super.key, required this.onScan});

  @override
  State<BarcodeScannerSimple> createState() => _BarcodeScannerSimpleState();
}

class _BarcodeScannerSimpleState extends State<BarcodeScannerSimple> {
  Barcode? _barcode;

    // This is the widget that shows the scanning area overlay
  Widget _buildScannerOverlay() {
    return Align(
      alignment: Alignment(0, -0.2),
      child: Container(
        width: 250.0, // Width of the scanning box
        height: 250.0, // Height of the scanning box
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2), // Border for the box
          borderRadius: BorderRadius.circular(12), // Rounded corners for the box
        ),
        child: const Align(
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Widget _buildBarcode(Barcode? value) {
    if (value == null) {
      return const Text(
        'Scan a QR-Code to join a seassion!',
        overflow: TextOverflow.fade,
        style: TextStyle(color: Colors.white),
      );
    }

    return Text(
      value.displayValue ?? 'No display value.',
      overflow: TextOverflow.fade,
      style: const TextStyle(color: Colors.white),
    );
  }

  void _handleBarcode(BarcodeCapture barcodes) {
    if (mounted) {
      setState(() {
        _barcode = barcodes.barcodes.firstOrNull;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('QR-Code Scanner')),
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          MobileScanner(
            onDetect: _handleBarcode,
          ),

          // The scanning area overlay
          _buildScannerOverlay(),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 80,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Center(child: _buildBarcode(_barcode))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
