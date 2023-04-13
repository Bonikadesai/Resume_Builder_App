import 'package:flutter/material.dart';

class PDFPage extends StatefulWidget {
  const PDFPage({Key? key}) : super(key: key);

  @override
  State<PDFPage> createState() => _PDFPageState();
}

class _PDFPageState extends State<PDFPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.picture_as_pdf_outlined,
              size: 30,
            ),
            onPressed: () {
              setState(() async {
                // final doc = pdf.save();
                // await  Printing.layoutPdf(onLayout: (format) => doc);
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: Color(0xff4D97A2),
          ),
        ],
      ),
      backgroundColor: Color(0xffE8F5FB),
    );
  }
}
