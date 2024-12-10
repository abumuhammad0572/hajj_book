import 'package:flutter/material.dart';

class ChapterPage extends StatelessWidget {
  final int chapterIndex;
  final String chapterContent;

  const ChapterPage(
      {super.key, required this.chapterIndex, required this.chapterContent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Text(chapterContent),
      ),
    );
  }
}
