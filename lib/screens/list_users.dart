import 'package:flutter/material.dart';
import 'package:flutter_proivder_user_app/component/userswitch.dart';
import 'package:flutter_proivder_user_app/provider/users.dart';
import 'package:provider/provider.dart';

class ListUsers extends StatelessWidget {
  const ListUsers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usersList = Provider.of<Users>(context).listUser();
    return Scaffold(
      appBar: AppBar(
        title: Text('List Users'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Provider.of<Users>(context, listen: false).deleteAllUsers();
            },
            child: Text(
              'Delete All',
              style: TextStyle(color: Colors.red),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: usersList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Text(usersList[index].name),
                          ),
                          UserListSwitchComponent(
                              userStatus: usersList[index].status),
                          IconButton(
                            onPressed: () {
                              Provider.of<Users>(context, listen: false)
                                  .deleteUser(index);
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
