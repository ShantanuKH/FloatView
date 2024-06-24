import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';

class FloatView extends StatefulWidget {
  const FloatView({super.key});

  @override
  State<FloatView> createState() => _FloatViewState();
}

class _FloatViewState extends State<FloatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Float View"),),
      body:HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PIPView(builder:(context,isFloating){
      Scaffold(
        // This will not let the pic to get outside the screen
        resizeToAvoidBottomInset: isFloating,
        body: SafeArea(child: Center(child: Padding(padding:EdgeInsets.all(15)),),),      )
    } ,)
  }
}