import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

final dio = Dio();

class DemoHttpNetworkProvider extends ChangeNotifier {
  List<PostResponse>? postData;

  getPosts() async {
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/posts');
    postData =
        (response.data as List).map((e) => PostResponse.fromJson(e)).toList();
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider(
        create: (context) => DemoHttpNetworkProvider()..getPosts(),
        child: Builder(builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Material App Bar'),
            ),
            body: Consumer<DemoHttpNetworkProvider>(
              builder: (context, value, child) {
                final data = value.postData ?? [];
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Text(
                      '${data[index].id}--${data[index].title}',
                    );
                  },
                );
              },
            ),
          );
        }),
      ),
    );
  }
}

class PostResponse {
  int? userId;
  int? id;
  String? title;
  String? body;

  PostResponse({this.userId, this.id, this.title, this.body});

  PostResponse.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
