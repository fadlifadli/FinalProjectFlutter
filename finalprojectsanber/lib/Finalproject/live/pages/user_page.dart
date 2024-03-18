import 'package:flutter/material.dart';
import 'package:finalprojectsanber/Finalproject/live/service/user_service.dart';
import 'package:finalprojectsanber/Finalproject/live/models/user_response_model.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserResponseModel> users = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData()async{
    users = await UserService().fecthDataUser();
    setState(() {
      
    });
    print('ini data ${users.length}');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users')
      ),
      body: Center(
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index)=> ListTile(
          title: Text(users[index].firstName + users[index].lastName),
          leading: Image.network(users[index].avatar),
        ),),
        )
    );
  }
}