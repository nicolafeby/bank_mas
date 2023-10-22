import 'package:bank_mas/core/argument/webview_arg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebviewPage extends StatelessWidget {
  const WebviewPage({super.key, required this.arg});

  final WebViewArg arg;

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      title: const Text('Bank MAS'),
    );
  }

  Widget _buildBody() {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: Uri.parse(arg.url)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }
}
