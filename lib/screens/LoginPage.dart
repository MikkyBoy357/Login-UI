import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/gamepad.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              //maxRadius: double.infinity,
              radius: 50,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/boyavatar.png'),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.blue[100],
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.mail),
                  title: TextField(
                    controller: emailController,
                    decoration:
                        InputDecoration.collapsed(hintText: 'email@gmail.com'),
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.vpn_key),
                  title: TextField(
                    controller: passwordController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Password',
                    ),
                    obscureText: true,
                    showCursor: false,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: Divider(
                color: Colors.blue[100],
              ),
            ),
            Container(
              height: 40,
              width: 130,
              child: RaisedButton(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  side: BorderSide(color: Colors.blue[400]),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Hi ${emailController.text}'),
                    ),
                  );
                  emailController.clear();
                  passwordController.clear();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
