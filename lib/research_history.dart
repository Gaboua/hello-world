import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Research extends StatelessWidget {
  static const ResearchRouteName = '/Research';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final abaad = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical ckac card'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.all(10), child: Icon(Icons.notifications)),
        ],
      ),
      backgroundColor: theme.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Paternity test',
                style: TextStyle(
                  color: theme.accentColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20),
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  saf(theme, abaad),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  sofayef(theme, abaad, 'D3S1358', 16, 15),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildCardpercent(
                      theme,
                      abaad,
                      'CPI',
                      '(Combined Parentage Index)',
                      '925,243',
                      Color.fromRGBO(102, 53, 154, 1),
                      Color.fromRGBO(197, 75, 219, 1),0.45),
                    buildCardpercent(
                      theme,
                      abaad,
                      'Pop',
                      '(Probability of Paternity)',
                      '99,99%',
                      Color.fromRGBO(82, 95, 156, 1),
                      Color.fromRGBO(129, 214, 226, 1),0.70),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Card buildCardpercent(ThemeData theme, Size abaad, text1, text2, text3,
      color1, color2,percent) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: abaad.width * 0.4,
        padding: EdgeInsets.only(
            top: 10, left: 15, right: 15, bottom: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Text(
              text1,
              style: TextStyle(
                color: theme.accentColor,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: abaad.width * 0.35,
              child: Text(
                text2,
                style: TextStyle(
                    color: theme.accentColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 8),
              ),),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: abaad.width / 32),
              child: CircularPercentIndicator(
                  radius: 100,
                  backgroundColor:
                  color1,
                  lineWidth: 20,
                  percent: percent,
                  startAngle: 10,
                  backgroundWidth: 20,
                  center: Text(
                    text3,
                    style: TextStyle(
                      color: theme.accentColor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  circularStrokeCap: CircularStrokeCap.round,
                  progressColor: color2
              ),
            ),
          ],
        ),
      ),
    );
  }

  DefaultTextStyle saf(ThemeData theme, Size abaad) {
    return DefaultTextStyle(
      style: TextStyle(
        color: theme.accentColor,
        fontWeight: FontWeight.w500,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: abaad.width / 4,
              child: Text('Locus'),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Child'),
                  Text('Father'),
                  Text('Match'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DefaultTextStyle sofayef(ThemeData theme, Size abaad, text1, num1, num2) {
    return DefaultTextStyle(
      style: TextStyle(
        color: theme.accentColor,
        fontWeight: FontWeight.w300,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: abaad.width / 4,
              child: Text(text1),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      child: Text(
                        '$num1',
                        textAlign: TextAlign.center,
                      ),
                      padding:
                      EdgeInsets.only(left: ((abaad.width - 40) / 48))),
                  Text('$num2'),
                  Padding(
                      child: Icon(
                        Icons.check_circle,
                        color: theme.accentColor,
                      ),
                      padding:
                      EdgeInsets.only(right: ((abaad.width - 40) / 48))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
