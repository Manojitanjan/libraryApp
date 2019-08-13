import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';

class LibraryHandbook extends StatelessWidget {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
     appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0), 
          child: AppBar(
            title: Text('Library Handbook'),
          )
        ),
      body: WebView(
        initialUrl:
            'https://library.kln.ac.lk/e-library/?page_id=148',
        javascriptMode: JavascriptMode.unrestricted,
        gestureRecognizers: Set()
          ..add(Factory<VerticalDragGestureRecognizer>(
              () => VerticalDragGestureRecognizer())),
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
      ),
    );
  }
}
