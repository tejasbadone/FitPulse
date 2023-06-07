import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.userEmail,
  });

  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome Back!',
              style: TextStyle(fontSize: 16, color: Color(0xff767A7D)),
            ),
            Text(userEmail,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black)),
          ],
        ),
        const Spacer(),
        const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              'https://i1.sndcdn.com/avatars-000731198008-qqej4c-t500x500.jpg',
            )),
      ],
    );
  }
}