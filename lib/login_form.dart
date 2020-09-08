import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'email',
      ),
      // ignore: missing_return
      validator: (String value) {
        // ignore: unnecessary_statements
        if (value.isEmpty) {
          return 'email cannot be empty';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPasswordField() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildEmailField(),
            _buildPasswordField(),
            SizedBox(height: 100),
            RaisedButton(
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
              onPressed: () {
                if (!_formKey.currentState.validate()) {
                  return;
                }
                _formKey.currentState.save();
              },
            )
          ],
        ),
      ),
    );
  }
}
