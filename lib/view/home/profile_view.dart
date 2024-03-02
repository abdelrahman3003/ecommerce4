import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 300),
        ElevatedButton(onPressed: () {}, child: Text("data")),
      ],
    );
  }
}
