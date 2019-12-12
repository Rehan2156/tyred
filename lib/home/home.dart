import 'package:flutter/material.dart';
import 'package:Tyred/services/auth.dart';

class Home extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
          backgroundColor: Colors.brown,
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                onPressed: () async {
                  _auth.signOut();
                },
                icon: Icon(Icons.person),
                label: Text('Logout')
            )
          ],
        ),
      ),
    );
  }
}
