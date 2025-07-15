import 'package:common/common.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Send Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Notification Builder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _topic = ValueNotifier<Topic?>(null);

  @override
  void dispose() {
    _topic.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: allPadding32,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hint: const Text('Title *'),
              ),
              maxLength: 48,
            ),
            verticalMargin32,
            TextFormField(
              decoration: InputDecoration(
                hint: const Text('Body *'),
              ),
              maxLength: 48,
            ),
            verticalMargin32,
            TextFormField(
              decoration: InputDecoration(
                hint: const Text('Image URL'),
              ),
              maxLength: 48,
            ),
            verticalMargin32,
            ValueListenableBuilder(
              valueListenable: _topic,
              builder: (BuildContext context, Topic? topic, _) {
                return Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<Topic?>(
                        value: topic,
                        hint: const Text('Topic'),
                        items: [
                          for (final topic in Topic.values) //
                            DropdownMenuItem<Topic>(
                              value: topic,
                              child: Text(topic.name),
                            ),
                        ],
                        onChanged: (Topic? topic) => _topic.value = topic,
                      ),
                    ),
                    verticalMargin8,
                    IconButton(
                      onPressed: topic == null ? null : () => _topic.value = null,
                      icon: Icon(Icons.delete),
                    ),
                  ],
                );
              },
            ),
            verticalMargin32,
            DropdownButtonFormField<String>(
              hint: const Text('User Token'),
              items: [],
              onChanged: (_) {},
            ),
            verticalMargin32,
            FilledButton(
              onPressed: null,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.send),
                  horizontalMargin8,
                  Text('Send Notification'),
                ],
              ),
            ),
            verticalMargin8,
            const Text(
              'All fields marked with * are required',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
