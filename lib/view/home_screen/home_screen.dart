import 'package:edu_app/Providers/user_provider.dart';
import 'package:edu_app/view/home_screen/home_view.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  @override
  Widget build(BuildContext context) {
    Provider.of<UserProvider>(context).loadUsername();
    return Scaffold(
      appBar: AppBar(
        title: Consumer<UserProvider>(
          builder: (context, userProvider, _) {
            // Show a loading indicator while the username is being fetched
            if (userProvider.username.isEmpty) {
              return CircularProgressIndicator();
            }
            // Show the username once it's fetched
            return Text(userProvider.username);
          },
        ),
      ),
      body: const HomePageView(),
    );
  }
}
