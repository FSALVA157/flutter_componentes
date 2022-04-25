import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
          children:  [
            const ListTile(
                iconColor: AppTheme.primary,
                textColor: AppTheme.primary,
                title: Text('Soy un Título'),
                leading: Icon(Icons.photo_album_outlined),
                subtitle: Text('Eu eiusmod cillum eu veniam nostrud.'),
            ),    
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  TextButton(onPressed: () {}, child: const Text('Cancel')),
                  TextButton(onPressed: () {}, child: const Text('Ok')),
                ],
              ),
            )
          ],
        ),
    );
  }
}