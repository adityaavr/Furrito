// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Chan's Family",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 191, 131, 26),
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              color: const Color.fromARGB(255, 191, 131, 26),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 246, 217, 217),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 191, 131, 26),
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Handle navigation to home page
              },
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                // Handle navigation to profile page
              },
            ),
            ListTile(
              title: const Text('Settings'),
              onTap: () {
                // Handle navigation to settings page
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(
            child: Column(
              children: [
                Image.asset("assets/cutepenguin.png"),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    MetricItem(
                      title: 'Hunger',
                      progress: 0.8,
                      color: Color.fromARGB(255, 228, 107, 98),
                    ),
                    SizedBox(width: 20),
                    MetricItem(
                      title: 'Energy',
                      progress: 0.9,
                      color: Color.fromARGB(255, 93, 165, 95),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MetricItem extends StatelessWidget {
  final String title;
  final double progress;
  final Color color;

  const MetricItem({
    required this.title,
    required this.progress,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: CircularProgressIndicator(
                value: progress,
                color: color,
                backgroundColor: color.withOpacity(0.2),
                strokeWidth: 6,
              ),
            ),
            Text(
              '${(progress * 100).toInt()}%',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
