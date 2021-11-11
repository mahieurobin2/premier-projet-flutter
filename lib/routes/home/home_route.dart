import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/common_widgets/my_square.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 2,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.black, Colors.yellow])),
          child: Align(
            alignment: Alignment.topCenter,
            child: Transform.rotate(
                angle: 0.2,
                child: GestureDetector(
                  child: const MySquare(color: Colors.blue),
                  onTap: () {
                    _go(context);
                  },
                )),
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        child: Text('Text'),
        onPressed: null,
      ),
    );
  }
}

void _go(final BuildContext context) {
  Navigator.pushNamed(context, 'squares');
}
