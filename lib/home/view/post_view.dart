import 'package:flutter/material.dart';
import 'package:postapi/home/provider/post_provider.dart';
import 'package:provider/provider.dart';

class PostSctreen extends StatefulWidget {
  const PostSctreen({Key? key}) : super(key: key);

  @override
  State<PostSctreen> createState() => _PostSctreenState();
}

class _PostSctreenState extends State<PostSctreen> {
  PostProvider? postProviderT;
  PostProvider? postProviderF;

  @override
  Widget build(BuildContext context) {
    postProviderT = Provider.of<PostProvider>(context, listen: true);
    postProviderF = Provider.of<PostProvider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Post API"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  String r1 = await postProviderF!.postData();
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("$r1")));
                },
                child: Text("Add Data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
