import 'package:flutter/material.dart';

import 'src/components/body.dart';
import 'src/components/sidebar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Sidebar(),
            Body(),
          ],
        ),
      ),
    );
  }
}
