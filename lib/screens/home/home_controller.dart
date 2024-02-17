import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  int selectedIndex = 0;
  List<String> Claims = [
    "Claim 1 Subject",
    "Claim 2 Subject",
    "Claim 3 Subject",
    "Claim 4 Subject",
    "Claim 5 Subject",
    "Claim 6 Subject",
    "Claim 7 Subject",
    "Claim 8 Subject",
    "Claim 9 Subject",
    "Claim 10 Subject",
    // Add more Claims
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Claim Reader')),
      body: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueGrey,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Sub-Nav Item 1"),
                  Text("Sub-Nav Item 2"),
                  // Add more items
                ],
              ),
            ),
          ),
          // Claim list in the middle
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: Claims.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(Claims[index]),
                  selected: index == selectedIndex,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                );
              },
            ),
          ),
          // Main content on the right
          Expanded(
            flex: 7, // Adjust the ratio as needed
            child: Container(
              padding: const EdgeInsets.all(16),
              child: selectedIndex < Claims.length
                  ? Text("Reading content of ${Claims[selectedIndex]}")
                  : const Text("Select an Claim"),
            ),
          ),
        ],
      ),
    );
  }
}
