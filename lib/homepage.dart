import 'package:flutter/material.dart';
import 'package:flutter_proivder_user_app/screens/add_user.dart';
import 'package:flutter_proivder_user_app/screens/using_provider_as_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Application'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddUser(),
                ),
              );
            },
            child: Text('Proiver from MyApp'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProviderUsingAsService(),
                ),
              );
            },
            child: Text('Provider as service in a singe class'),
          ),
        ],
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (context) => AddUser(),
      //         ),
      //       );
      //     },
      //     child: Text('Add User'),
      //   ),
      // ),
    );
  }
}
