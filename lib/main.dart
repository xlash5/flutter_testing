import 'package:flutter/material.dart';
import './EmailFieldValidator.dart';
import 'MyButton.dart';
import './ScrollableRowWidget.dart';

void main() {
  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Test',
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
              ),
              keyboardType: TextInputType.emailAddress,
              validator: ((value) => EmailFieldValidator.validate(value!)),
            ),
            MyButton(emailController: _emailController, text: 'test'),
            ScrollableRowWidget(
              children: [
                // colorful containers
                for (int i = 0; i < 100; i++)
                  Container(
                    child: Text('B${i}'),
                    width: 100,
                    height: 100,
                    margin: EdgeInsetsGeometry.lerp(const EdgeInsets.all(10),
                        const EdgeInsets.all(20), i / 100)!,
                    color: Color.fromARGB(
                      255,
                      i * 2,
                      i * 3,
                      i * 4,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
