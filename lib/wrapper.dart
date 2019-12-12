import 'package:flutter/material.dart';
import 'package:Tyred/authentication/authentication.dart';
import 'package:Tyred/authentication/login.dart';
import 'package:Tyred/home/home.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'package:Tyred/services/auth.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);
    if(user==null)
    return Authentication();
    else
      return Home();
    //return either home or authenticate widget
  }
}
