import 'package:flutter/material.dart';
import 'CustomPageSlider.dart';

List<Container> pageList = [
  Container(
                      child: Center(child: Text("Page 1", style: TextStyle(color: Colors.white),)),
            color: Colors.transparent,
          ),
          Container(
                      child: Center(child: Text("Page 2", style: TextStyle(color: Colors.white),)),
            color: Colors.transparent,
          ),Container(
                      child: Center(child: Text("Page 3", style: TextStyle(color: Colors.white),)),
            color: Colors.transparent,
          ),Container(
                      child: Center(child: Text("Page 4", style: TextStyle(color: Colors.white),)),
            color: Colors.transparent,
          ),Container(
                      child: Center(child: Text("Page 5", style: TextStyle(color: Colors.white),)),
            color: Colors.transparent,
          ),

];
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Page Slider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CustomSlider customSlider = new CustomSlider(pages: pageList,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),//background photo designed by Burak Bakacak 
                fit: BoxFit.cover)),
      child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: customSlider,
              )),
      ),
    );
  }
}

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Container(
        color: Color(0xff07599D),
        child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: CustomSlider(pages: pageList),
              )),
      ),
    );
  }
}

