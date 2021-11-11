import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/common_widgets/my_square.dart';

class SquaresRoute extends StatefulWidget {
  const SquaresRoute({Key? key}) : super(key: key);

  @override
  State<SquaresRoute>createState() => _Ex1RouteState();
}

class _Ex1RouteState extends State<SquaresRoute> {

 int nbSquare = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title:  Text('My Square: $nbSquare'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child : Column(
          children: _buildSquares(),
          )
        ),
      ),
      floatingActionButton:  Row(
        children: [
          FloatingActionButton(
            onPressed: _decrement,
            child: const Icon(Icons.remove,
            color: Colors.black)
          ),
          FloatingActionButton(
            onPressed: _increment,
            child: const Icon(Icons.add,
            color: Colors.black)
          ),
        ],
      ),
    );
  }

  List<Widget> _buildSquares(){
    final List<Widget> results = [];
    for (var i = 0; i < nbSquare; i++) {
      results.add(const Padding(
        padding: EdgeInsets.all(8.0),
        child: MySquare(color: Colors.black),
      ));
    }
    return results;
  }

  
  void _decrement() {
    setState(() {
    nbSquare--;
  });
}

  void _increment() {
  setState(() {
    nbSquare++;
  });

}
}