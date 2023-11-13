import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final widthScreen = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Flutter Demo'),
              actions: [
                IconButton(
                  icon: const Icon(Icons.add_shopping_cart),
                  onPressed: () {},
                ),
              ],
            ),
            body: Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.red,
                  width: widthScreen,
                  child: const Text('100'),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: ListView.separated(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('Item $index'),
                          trailing: const Icon(Icons.arrow_forward),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                  width: widthScreen,
                  child: const Text('100'),
                ),
              ],
            )));
  }
}
