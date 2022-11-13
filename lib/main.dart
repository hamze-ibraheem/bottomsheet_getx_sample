import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Sample',
      theme: ThemeData.light(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return // This method is rerun every time setState is called, for instance as done
        // by the _incrementCounter method above.
        //
        // The Flutter framework has been optimized to make rerunning build methods
        // fast, so that you can just rebuild anything that needs updating rather
        // than having to individually change instances of widgets.
        Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(' Getx Bottom Sheet '),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((context) => BottomSheet(
                        builder: (context) {
                          return Wrap(
                            children: [
                              ListTile(
                                  leading: const Icon(Icons.wb_incandescent),
                                  title: const Text(' Light Theme '),
                                  onTap: () {
                                    setState(() {
                                      Theme.of(context).copyWith(
                                        primaryColor: Colors.black,
                                        primaryColorDark: Colors.blue,
                                        primaryColorLight: Colors.blue,
                                      );
                                    });
                                  }),
                              ListTile(
                                  leading: const Icon(
                                      Icons.wb_incandescent_outlined),
                                  title: const Text(' Dark Theme '),
                                  onTap: () {
                                    setState(() {
                                      Theme.of(context).copyWith(
                                        primaryColor: Colors.white,
                                        primaryColorDark: Colors.black,
                                        primaryColorLight: Colors.black,
                                      );
                                    });
                                  }),
                            ],
                          );
                        },
                        onClosing: () {},
                      )),
                );
              },
              child: const Text(' Bottom Sheet Button '),
            )
          ],
        ),
      ),
    );
  }
}
