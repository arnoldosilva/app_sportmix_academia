import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';
import 'package:academia_sport_mix/constantes/api.dart';

String baseurl = 'https://accounts.spotify.com/authorize';

String response_type = 'code';
String redirect_uri = 'workoutpro-login%3A%2F%2Fcallback';
String scope = 'playlist-read-private';
String phoneFeatureEnabled = 'true';

String key;
String remove;

String url = baseurl +
    '?client_id=' +
    client_id +
    '&response_type=' +
    response_type +
    '&redirect_uri=' +
    redirect_uri +
    '&scope=' +
    scope +
    '&phoneFeatureEnabled=' +
    phoneFeatureEnabled;

class PlayList extends StatefulWidget {
  @override
  _PlayListState createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> {


  WebViewController _controler;

  _getUrl() async {
    http.Response response = await http.get(url);
    print(url);

    print(response.statusCode);
    print(response.body);

  }

  _getKey()async{
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.archive), onPressed: _getUrl),
            IconButton(icon: Icon(Icons.archive), onPressed: (){
              _controler.currentUrl();
            }),
          ],
        ),
        body: Container(
          child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: url,
          onPageFinished: (data) async{
            await print(data);
            
            var key = data.substring(34, data.length);
            print(key);
            
            
          },
          onWebViewCreated: (webViewController){
            _controler = webViewController;
          },
          ),)
        );
  }
}
