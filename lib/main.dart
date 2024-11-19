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
  final List<String> treeImages = List.generate(
    57,
    (index) => 'assets/images/${index + 1}.png',
  );
  final String tobImage = 'assets/images/tob.png';
  int currentIndex = 0;
  double imageSize = 25.0;

  void _growTree() {
    if (currentIndex < treeImages.length - 1) {
      setState(() {
        currentIndex++;
        imageSize += 7.0; 
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tree Growth Animation"),
        centerTitle: true,
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            width: double.infinity,
          ),
          Image.asset(
            tobImage,
            fit: BoxFit.contain,
            alignment: Alignment.bottomCenter,
          ),
          Positioned(
            bottom: 100,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SizedBox(
                key: ValueKey<int>(currentIndex),
                height: imageSize,
                width: imageSize,
                child: Image.asset(
                  treeImages[currentIndex],
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: ElevatedButton(
              onPressed: _growTree,
              child: const Text("Grow Tree"),
            ),
          ),
        ],
      ),
    );
  }
}
