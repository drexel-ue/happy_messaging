import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(directory.path);
  await Hive.openBox('notifications');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notification Receive Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: const MyHomePage(title: 'Notification Hub'),
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
  late final Box _box;

  @override
  void initState() {
    super.initState();
    Hive.init('/storage-path');
    _box = Hive.box('notifications');
  }

  @override
  void dispose() {
    _box.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // FIXME: add in list of notifications as they come.
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: allPadding24,
          child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              for (final topic in Topic.values) //
                _TopicToggle(
                  label: topic.name,
                  subscribed: false,
                  onChanged: (bool? value) {},
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TopicToggle extends StatelessWidget {
  const _TopicToggle({
    required this.label,
    required this.subscribed,
    required this.onChanged,
  });

  final String label;
  final bool subscribed;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label),
        horizontalMargin8,
        Switch.adaptive(
          value: subscribed,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
