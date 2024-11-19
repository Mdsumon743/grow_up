
import 'package:flutter/material.dart';

void main() {
  runApp(const TreeGrowthApp());
}

class TreeGrowthApp extends StatelessWidget {
  const TreeGrowthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TreeGrowthScreen(),
    );
  }
}

class TreeGrowthScreen extends StatefulWidget {
  const TreeGrowthScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TreeGrowthScreenState createState() => _TreeGrowthScreenState();
}

class _TreeGrowthScreenState extends State<TreeGrowthScreen> {
 List<String> treeImages = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png',
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
    'assets/images/11.png',
    'assets/images/12.png',
    'assets/images/13.png',
    'assets/images/14.png',
    'assets/images/15.png',
    'assets/images/16.png',
    'assets/images/17.png',
    'assets/images/18.png',
    'assets/images/19.png',
    'assets/images/20.png',
    'assets/images/21.png',
    'assets/images/22.png',
    'assets/images/23.png',
    'assets/images/24.png',
    'assets/images/25.png',
    'assets/images/26.png',
    'assets/images/27.png',
    'assets/images/28.png',
    'assets/images/29.png',
    'assets/images/30.png',
    'assets/images/31.png',
    'assets/images/32.png',
    'assets/images/33.png',
    'assets/images/34.png',
    'assets/images/35.png',
    'assets/images/36.png',
    'assets/images/37.png',
    'assets/images/38.png',
    'assets/images/39.png',
    'assets/images/40.png',
    'assets/images/41.png',
    'assets/images/42.png',
    'assets/images/43.png',
    'assets/images/44.png',
    'assets/images/45.png',
    'assets/images/46.png',
    'assets/images/47.png',
    'assets/images/48.png',
    'assets/images/49.png',
    'assets/images/50.png',
    'assets/images/51.png',
    'assets/images/52.png',
    'assets/images/53.png',
    'assets/images/54.png',
    'assets/images/55.png',
    'assets/images/56.png',
    'assets/images/57.png',
    'assets/images/tob.png'
];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tree Growth Animation"),
        centerTitle: true,
      ),
      body:   Column(
        children: [
           SizedBox(height: 20),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/tob.png')
                    ],
                  )
                ],
              ),
            ),
          ),
           SizedBox(height: 20),
        ],
      ),
    );
  }
}
 