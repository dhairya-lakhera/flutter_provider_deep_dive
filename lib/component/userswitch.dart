import 'package:flutter/material.dart';
import 'package:flutter_proivder_user_app/provider/users.dart';
import 'package:provider/provider.dart';

class UserListSwitchComponent extends StatefulWidget {
  final userStatus;
  const UserListSwitchComponent({@required this.userStatus});

  @override
  State<UserListSwitchComponent> createState() =>
      _UserListSwitchComponentState();
}

class _UserListSwitchComponentState extends State<UserListSwitchComponent> {
  late bool _switchStatus = widget.userStatus;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Switch(
          value: _switchStatus,
          onChanged: (val) {
            setState(() {
              _switchStatus = val;
            });
            Provider.of<Users>(context, listen: false).userStatus(val);
          }),
    );
  }
}
