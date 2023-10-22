import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Hmm, sepertinya terjadi kesalahan.'),
      content: const SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text('Kamu bisa mengulanginya atau coba lagi nanti.'),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Oke'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
