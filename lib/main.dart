import 'package:flutter/material.dart';
import 'package:flutter_demo_mobx/store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() => runApp(MyApp());

final store = UserStore();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText2: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      home: Observer(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Previous users: ${store.previousUsers.length}"),
            ),
            body: Center(
              child:
                  store.isAuthenticated ? Authenticated() : Unauthenticated(),
            ),
          );
        },
      ),
    );
  }
}

class Unauthenticated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Detected unauthenticated user!"),
        RaisedButton(
          onPressed: login,
          child: Text("Log in"),
        ),
      ],
    );
  }

  void login() => store.login();
}

class Authenticated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) {
          final user = store.me;

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: ${user.name}"),
              Text("Birth date: ${user.birthDate}"),
              Text("Skills: ${user.skills}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    onPressed: addSkill,
                    child: Text("New skill"),
                  ),
                  RaisedButton(
                    onPressed: logout,
                    child: Text("Log out"),
                  ),
                ],
              )
            ],
          );
        }
    );
  }

  void addSkill() => store.addSkill();

  void logout() => store.logout();
}

