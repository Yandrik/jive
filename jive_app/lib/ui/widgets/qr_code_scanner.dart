import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:catppuccin_flutter/catppuccin_flutter.dart';

class BarcodeScannerSimple extends StatefulWidget {
  final Function(String) onScan;

  const BarcodeScannerSimple({super.key, required this.onScan});

  @override
  State<BarcodeScannerSimple> createState() => _BarcodeScannerSimpleState();
}

class _BarcodeScannerSimpleState extends State<BarcodeScannerSimple> {
  Barcode? _barcode;
  String _scannedValue = '';
  //REMOVE TextEditingController _textController = TextEditingController();

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

    // Method to handle the barcode scan and truncate value
  void _handleBarcode(BarcodeCapture barcodes) {
    if (barcodes.barcodes.isNotEmpty) {
      String rawValue = barcodes.barcodes.first.displayValue ?? '';
      
    // Find the index of the last slash ('/')
    int lastSlashIndex = rawValue.lastIndexOf('/');
    
    // If a slash is found, extract the substring after the last slash
    String truncatedValue = lastSlashIndex != -1
        ? rawValue.substring(lastSlashIndex + 1) // Everything after the last slash
        : rawValue; // If no slash is found, return the full value

      setState(() {
        _scannedValue = truncatedValue; // Store truncated value
        //REMOVE _textController.text = truncatedValue; // Update the text field with truncated value
      });

      // Call the onScan callback with the scanned value
      widget.onScan(truncatedValue); // Pass the scanned value back to the parent widget
    }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('QR-Code Scanner')),
      backgroundColor: catppuccin.mocha.base,
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
              color: catppuccin.mocha.base,
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
