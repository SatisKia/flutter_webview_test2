import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class MyWebView extends Container {
  MyWebView( String url, { Key? key, required double width, required double height } ) : super(
      key: key,
      width: width,
      height: height,
      child: InAppWebView(
          onWebViewCreated: (InAppWebViewController webView) {
            webView.loadUrl(
                urlRequest: URLRequest(url: Uri.parse(url))
            );
          }
      )
  );
}

class MyWebViewFromAsset extends Container {
  MyWebViewFromAsset( String file, { Key? key, required double width, required double height } ) : super(
      key: key,
      width: width,
      height: height,
      child: InAppWebView(
          onWebViewCreated: (InAppWebViewController webView) {
            webView.loadFile(assetFilePath: file);
          }
      )
  );
}
