import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'dart:async';


class Search extends StatelessWidget {

  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) => 
  new Scaffold(
    body: WebView(
            initialUrl: 'https://library.kln.ac.lk/index.php/component/sppagebuilder/?view=page&id=82',
            javascriptMode: JavascriptMode.unrestricted,
            gestureRecognizers: Set() ..add(Factory<VerticalDragGestureRecognizer>(
              () => VerticalDragGestureRecognizer())),
            onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        ),
    
  );
}