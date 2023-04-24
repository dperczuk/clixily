import 'package:flutter/material.dart';

class FabComponent extends StatelessWidget {
  const FabComponent({
    super.key,
    required this.callback,
  });

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 56,
      child: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.deepPurpleAccent,
        onPressed: callback,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
