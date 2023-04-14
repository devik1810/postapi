import 'package:flutter/material.dart';
import 'package:postapi/utils/view/helper/post_helper.dart';
import 'package:provider/provider.dart';

class PostProvider extends ChangeNotifier{

Future<String>  postData()
async {
  PostHelper? postHelper = PostHelper();
  String r1 =  await postHelper.addData();
  return r1;
}

}