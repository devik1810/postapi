import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:postapi/home/provider/post_provider.dart';
import 'package:postapi/home/view/post_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PostProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => PostSctreen()},
      ),
    ),
  );
}
