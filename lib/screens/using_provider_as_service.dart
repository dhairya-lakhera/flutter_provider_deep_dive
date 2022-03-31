import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Service extends ChangeNotifier {
  String? data;
  update(val) {
    data = val;
    notifyListeners();
  }

  getVal() {
    return data;
  }
}

class ProviderUsingAsService extends StatefulWidget {
  const ProviderUsingAsService({Key? key}) : super(key: key);

  @override
  State<ProviderUsingAsService> createState() => _ProviderUsingAsServiceState();
}

class _ProviderUsingAsServiceState extends State<ProviderUsingAsService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo of provider'),
      ),
      body: Dummy(),
    );
  }
}

class Dummy extends StatefulWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Service(),
      child: const MyDemo(),
    );
  }
}

class MyDemo extends StatelessWidget {
  const MyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Service>(context).getVal();
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
              'This "${data}" value will be update when you click button in child widget'),
          SizedBox(
            height: 10,
          ),
          SomeChildPage(),
        ],
      ),
    );
  }
}

class SomeChildPage extends StatelessWidget {
  const SomeChildPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        Provider.of<Service>(context, listen: false).update('adfsdf');
      },
      child: Text('This button will be clicked from child widget'),
    ));
  }
}
