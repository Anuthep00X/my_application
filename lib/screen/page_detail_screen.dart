import 'package:favorite/services/page_service.dart';
import 'package:flutter/material.dart';

class PagedetailScreen extends StatefulWidget {
  final String id;
  const PagedetailScreen({super.key, required this.id});

  @override
  State<PagedetailScreen> createState() => _PagedetailScreenState();
}

class _PagedetailScreenState extends State<PagedetailScreen> {
  dynamic _page = {};

  @override
  void initState() {
    super.initState();
    // PageService.fetchPage(widget.id).then((page) {
    //   setState(() {
    //     _page = page;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_page['title']),
      ),
      body: Container(
        child: Text(_page['content']),
      ),
    );
  }
}
