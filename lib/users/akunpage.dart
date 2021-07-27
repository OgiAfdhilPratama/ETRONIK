import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AkunPage extends StatefulWidget {
  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  void initState() {
    super.initState();
  }

  _logOut() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('login', false);
    print('logout');
    Navigator.of(context)
        .pushNamedAndRemoveUntil('/login', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profil'),
        ),
        body: SafeArea(
          child: new Container(
              color: Colors.white,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('akun'),
                      RaisedButton(
                        onPressed: () => _logOut(),
                        color: Colors.white,
                        child: const Text('Logout',
                            style: TextStyle(fontSize: 18)),
                      ),
                    ]),
              )),
        ));
  }
}
