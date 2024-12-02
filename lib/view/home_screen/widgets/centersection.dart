import 'package:flutter/material.dart';

class centersection extends StatelessWidget {
  const centersection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: GridView.builder(
        itemCount: 100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) => Container(
          color: Colors.black,
        ),
      ),
    );
  }
}
