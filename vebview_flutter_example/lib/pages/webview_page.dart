import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebView'),
        actions: [
          IconButton(
            onPressed: () async {},
            icon: const Icon(Icons.arrow_back_ios),
          ),
          IconButton(
            onPressed: () async {},
            icon: const Icon(Icons.arrow_forward_ios),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.replay),
          ),
        ],
      ),
      body: WebView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.next_plan,
          size: 32,
        ),
        onPressed: () async {},
      ),
    );
  }
}
