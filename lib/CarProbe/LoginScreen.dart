import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String userName, password;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Image.asset('prototype.png'),
            ),
            Text(userName ?? ''),
            Text(password ?? ''),
            TextInputWidget(
              label: 'Username',
              onValueChanged: (val) {
                print(val);
                setState(() {
                  userName = val;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextInputWidget(
              label: 'Password',
              isObscure: true,
              onValueChanged: (val) {
                print(val);
                setState(() {
                  password = val;
                });
              },
            ),
          ],
        ),
      ),
    ));
  }
}

class TextInputWidget extends StatelessWidget {
  final void Function(String onValueChanged) onValueChanged;
  final String label;
  final bool isObscure, isOnlyNumber;
  const TextInputWidget({
    this.onValueChanged,
    this.isObscure,
    this.isOnlyNumber,
    Key key,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        cursorColor: Colors.black,
        obscureText: isObscure ?? false,
        keyboardType: (isOnlyNumber != null && isOnlyNumber == true)
            ? TextInputType.number
            : TextInputType.text,
        decoration: InputDecoration(
            isDense: true,
            border: UnderlineInputBorder(),
            // focusedBorder: InputBorder.none,
            // enabledBorder: InputBorder.none,
            // errorBorder: InputBorder.none,
            // disabledBorder: InputBorder.none,
            contentPadding:
                EdgeInsets.only(left: 0, bottom: 0, top: 0, right: 0),
            labelText: label,
            labelStyle: TextStyle(
              color: Colors.greenAccent,
            )),
        onChanged: (String val) {
          onValueChanged(val);
        },
      ),
    );
  }
}
