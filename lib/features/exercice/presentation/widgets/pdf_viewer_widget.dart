import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class PdfViewerWidget extends StatelessWidget {
  const PdfViewerWidget({
    super.key,
    this.fileName,
  });

  final String? fileName;

  @override
  Widget build(BuildContext context) {
    return fileName != null
        ? Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: const Color(0xFF52BBE8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Text(
                  "exercice.pdf",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                GestureDetector(
                  onTap: () {
                    if (fileName != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PDFScreen(
                            url:
                                "https://edulinkbackend.edulink.tn/uploads/${fileName!}",
                            fileName: fileName!,
                          ),
                        ),
                      );
                    }
                  },
                  child: const Icon(
                    Icons.remove_red_eye,
                    size: 22,
                    color: Colors.white,
                  ),
                ),
                // const SizedBox(
                //   width: 10,
                // ),
                // SvgPicture.asset(
                //   "assets/svg/download.svg",
                //   width: 20,
                //   colorFilter: const ColorFilter.mode(
                //     Colors.white,
                //     BlendMode.srcIn,
                //   ),
                // )
              ],
            ),
          )
        : const SizedBox();
  }
}

class PDFScreen extends StatefulWidget {
  final String url;
  final String fileName;

  const PDFScreen({Key? key, required this.url, required this.fileName})
      : super(key: key);

  @override
  _PDFScreenState createState() => _PDFScreenState();
}

class _PDFScreenState extends State<PDFScreen> {
  String? localPath;

  @override
  void initState() {
    super.initState();
    downloadPDF();
  }

  Future<void> downloadPDF() async {
    final url = widget.url;
    final filename = url.split('/').last;
    final dir = await getApplicationDocumentsDirectory();
    final file = File("${dir.path}/$filename");

    if (await file.exists()) {
      setState(() {
        localPath = file.path;
      });
    } else {
      final response = await http.get(Uri.parse(url));
      await file.writeAsBytes(response.bodyBytes);
      setState(() {
        localPath = file.path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5FDFF),
        title: const Text(
          'exercice.pdf',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: localPath != null
          ? PDFView(
              filePath: localPath!,
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
