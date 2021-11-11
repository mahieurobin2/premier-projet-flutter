import 'package:flutter/widgets.dart';

class MySquare extends StatelessWidget {

  const MySquare({Key? key, required this.color, this.child = const SizedBox()}) : super(key: key);
  final Color color;
  final Widget child;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color,
      child: const Padding(
        padding: EdgeInsets.only(left: 2, top: 32),
        child: Text('APP'),
      ),
    );
  }
}