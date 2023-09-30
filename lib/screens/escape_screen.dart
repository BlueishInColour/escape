import 'dart:async';

import 'package:flutter/material.dart';
import '../utils/toggle_theme_button.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import '../utils/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class EscapeScreen extends StatefulWidget {
  const EscapeScreen({super.key});

  @override
  State<EscapeScreen> createState() => EscapeScreenState();
}

class EscapeScreenState extends State<EscapeScreen> {
  String searchText = '';
  late PageController _controller;

  @override
  initState() {
    super.initState();
    _controller = PageController(keepPage: true, initialPage: 0);
  }

  Future<void> _handleRefresh() async {}
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
        title: Text('escape',
            style: GoogleFonts.arsenal(fontSize: 25, color: Colors.grey[600])));
    return Scaffold(
        appBar: appbar,
        body: Padding(
          padding: EdgeInsets.all(8),
          child: LiquidPullToRefresh(
              onRefresh: _handleRefresh,
              child: PageView.builder(
                scrollDirection: Axis.vertical,
                allowImplicitScrolling: true,
                controller: _controller,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Scaffold(
                      backgroundColor: Colors.black,
                    ),
                  );
                },
              )),
        ));
  }
}
