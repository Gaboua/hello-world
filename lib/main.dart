
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_appnullsafty/medical_card.dart';
import 'package:flutter_appnullsafty/research_history.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false ,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(33, 24, 93, 1),
        cardColor: Color.fromRGBO(63, 43, 125, 1),
        accentColor: Colors.white,
      ),
      routes: {
        Medical.MedicalRouteName: (context) => Medical(),
        Research.ResearchRouteName: (context) => Research(),
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final abaad = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/dna-link-science-technological-concept-260nw-1463792510.jpg',
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(),
              ),
              Container(
                height: abaad.height / 5,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Text(
                  'DNA Research',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 50,
                    color: theme.accentColor,
                  ),
                ),
              ),
              Container(
                height: abaad.height / 10,
                width: abaad.width*0.6,
                padding: EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Text(
                  'Testing your DNA can help to provide serious diseases!',
                  style: TextStyle(
                    color: theme.accentColor,
                  ),
                ),
              ),
              Container(
                height: abaad.height / 10,
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: OutlinedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Start',
                        style: TextStyle(
                          color: theme.accentColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      SizedBox(width: 10,),
                      Icon(
                        Icons.arrow_forward,
                        color: theme.accentColor,
                      ),
                    ],
                  ),
                  onPressed: () => Navigator.of(context).pushNamed(Medical.MedicalRouteName),
                ),
              ),
              SizedBox(height: abaad.height/10,)
            ],
          )
        ],
      ),
    );
  }
}
