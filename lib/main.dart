import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(TreeGrowthApp());
}

class TreeGrowthApp extends StatelessWidget {
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
  _TreeGrowthScreenState createState() => _TreeGrowthScreenState();
}

class _TreeGrowthScreenState extends State<TreeGrowthScreen> {
  List<String> treeImages = [
    'assets/images/bean.png',
    'assets/images/bean1.png',
    'assets/images/bean2.png',
    'assets/images/bean3.png',
    'assets/images/bean4.png',
    'assets/images/bean5.png',
    'assets/images/bean6.png',
    'assets/images/bean7.png',
    'assets/images/bean8.png',
    'assets/images/bean9.png',
    'assets/images/bean10.png',
    'assets/images/bean11.png',
    'assets/images/bean12.png',
    'assets/images/bean13.png',
    'assets/images/bean14.png',
    'assets/images/bean15.png',
    'assets/images/bean16.png',
    'assets/images/bean17.png',
    'assets/images/bean18.png',
    'assets/images/bean19.png',
    'assets/images/bean20.png',
    'assets/images/bean21.png',
    'assets/images/bean22.png',
    'assets/images/bean23.png',
    'assets/images/bean24.png',
    'assets/images/bean25.png',
    'assets/images/bean26.png',
    'assets/images/bean27.png',
    'assets/images/bean28.png',
    'assets/images/bean29.png',
    'assets/images/bean30.png',
    'assets/images/bean31.png',
    'assets/images/bean32.png',
    'assets/images/bean33.png',
    'assets/images/bean34.png',
    'assets/images/bean35.png',
    'assets/images/bean36.png',
    'assets/images/bean37.png',
    'assets/images/bean38.png',
    'assets/images/bean39.png',
    'assets/images/bean40.png',
    'assets/images/bean41.png',
    'assets/images/bean42.png',
    'assets/images/bean43.png',
    'assets/images/bean44.png',
    'assets/images/bean45.png',
    'assets/images/bean46.png',
    'assets/images/bean47.png',
    'assets/images/bean48.png',
    'assets/images/bean49.png',
    'assets/images/bean50.png', 
    'assets/images/bean51.png',
    'assets/images/bean52.png',
    'assets/images/bean53.png',
  ];
  int _currentImageIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startAnimation() {
    _timer = Timer.periodic(const Duration(milliseconds: 3000), (timer) {
      setState(() {
        if (_currentImageIndex < treeImages.length - 1) {
          _currentImageIndex++;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tree Growth Animation"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 1000),
                    transitionBuilder: (Widget child, Animation<double> animation) {
                      // A combination of scaling and sliding animation for smooth effect
                      return FadeTransition(
                        opacity: animation,
                        
                        child: child,
                      );
                    },
                    child: Image.asset(
                      treeImages[_currentImageIndex],
                      key: ValueKey<int>(_currentImageIndex), // Ensure uniqueness
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
