import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyCheckBox();
  }

}

class MyCheckBox extends State<HomePage> {

  bool isChecked = false;

  void printMessage() {
    print('user accepted the agreement');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox'),
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Read Agreement',
              style: TextStyle(
                fontSize: 18,
                color: Colors.teal
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          isChecked = newValue!;
                        });
                      }
                  ),
                  Text(
                    'I have read the agreement and I accept it',
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: MaterialButton(
                onPressed: isChecked? printMessage : null,
                child: Text('Confirm'),
                textColor: Colors.white,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
