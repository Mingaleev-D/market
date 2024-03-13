import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  static const routeName = '/user-page';

  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.red,
            pinned: true,
            stretch: true,
            expandedHeight: size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background:
                  Image.asset('assets/flutter_logo.jpg', fit: BoxFit.cover),
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //  SizedBox(height: size.height * 0.2),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(
                        'assets/stephen-audu-X5xH3Bvi0c8-unsplash.jpg'),
                  ),
                  Text("Demo User"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
