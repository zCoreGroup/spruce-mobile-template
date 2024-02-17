import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);
  @override
  State<HomeController> createState() => _HomeControllerState();
}
class _HomeControllerState extends State<HomeController> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          ],
        ),
      ),
    );
  }
}