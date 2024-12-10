import 'package:flutter/material.dart';
import 'chapter_page.dart';

class TableOfContentsPage extends StatefulWidget {
  const TableOfContentsPage({super.key});

  @override
  _TableOfContentsPageState createState() => _TableOfContentsPageState();
}

class _TableOfContentsPageState extends State<TableOfContentsPage> {
  List<String> chapters = [];

  @override
  void initState() {
    super.initState();
    loadChapters();
  }

  Future<void> loadChapters() async {
    final bookText =
        await DefaultAssetBundle.of(context).loadString('assets/hajj_book.txt');
    setState(() {
      chapters = [
        for (final text in bookText.split('###'))
          if (text.trim().isNotEmpty) text.trim()
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Содержание'),
      ),
      body: ListView.builder(
        itemCount: chapters.length,
        itemBuilder: (context, index) {
          final title = chapters[index].split('\n').first;

          return ListTile(
            title: Text(title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChapterPage(
                    chapterIndex: index,
                    chapterContent: chapters[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
