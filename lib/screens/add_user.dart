import 'package:flutter/material.dart';
import 'package:flutter_proivder_user_app/model/user_model.dart';
import 'package:flutter_proivder_user_app/screens/list_users.dart';
import '../provider/users.dart';
import 'package:provider/provider.dart';

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  addUser() {
    Provider.of<Users>(context, listen: false).addUser(
      User(
        name: _nameController.text,
        age: int.parse(_ageController.text),
        phone: int.parse(_phoneController.text),
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ListUsers()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add User'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Full Name',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _ageController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Age',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: _phoneController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Phone',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                addUser();
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}
