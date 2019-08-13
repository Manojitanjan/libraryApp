import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

void main() => runApp(MaterialApp(home: Books()));

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  Completer<WebViewController> _controller = Completer<WebViewController>();
  // final Set<String> _favorites = Set<String>();

  @override
  Widget build(BuildContext context) => new Scaffold(
       
        body: WebView(
          initialUrl: 'https://library.kln.ac.lk/e-library/?page_id=354',
          javascriptMode: JavascriptMode.unrestricted,
          gestureRecognizers: Set()
            ..add(Factory<VerticalDragGestureRecognizer>(
                () => VerticalDragGestureRecognizer())),
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ),
        // floatingActionButton: _bookmarkButton(),
      );
}
