import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appnullsafty/research_history.dart';

class Medical extends StatefulWidget {
  static const MedicalRouteName = '/Medical';

  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  int index = 2;

  @override
  Widget build(BuildContext context) {
    final abaad = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: theme.primaryColor,
        ),
        child: BottomNavigationBar(
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
          currentIndex: index,
          unselectedItemColor: Colors.white38,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    height: 30,
                    width: 30,
                    child: Icon(
                      Icons.add,
                      color: theme.primaryColor,
                    )),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.wysiwyg,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view_rounded,
                ),
                label: ''),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Medical card'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () =>
                  Navigator.of(context).pushNamed(Research.ResearchRouteName),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 30,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          left: abaad.width / 8,
                          top: abaad.width / 8,
                          right: abaad.width / 16,
                          bottom: abaad.width / 16),
                      height: abaad.width / 5,
                      width: abaad.width / 5,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://i.pinimg.com/originals/a7/bb/cc/a7bbcc90a4cf2a3b93eb4577e10f0b73.jpg',
                            fit: BoxFit.cover,
                          )),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Helen Young",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: theme.accentColor,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Female 26 years old',
                          style: TextStyle(color: Colors.white38),
                        )
                      ],
                    ),
                  ],
                ),
                buildRow(theme, Icons.location_on,
                    ' 216 California St. Los Angelos', abaad),
                buildRow(theme, Icons.phone, ' (800)321.174', abaad),
                SizedBox(
                  height: abaad.width / 16,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
              'Research history',
              style: TextStyle(
                  color: theme.accentColor,
                  fontSize: 22,
                  fontWeight: FontWeight.w500),
            ),
          ),
          buildRowlota(theme, Icons.announcement, 'Health analysis', abaad,
              Colors.yellow),
          SizedBox(
            height: 10,
          ),
          buildRowlota(theme, Icons.check_box, 'Paternity test', abaad,
              Colors.greenAccent),
          SizedBox(
            height: 10,
          ),
          buildRowlota(
              theme, Icons.check_box, 'Trait test', abaad, Colors.greenAccent),
        ],
      ),
    );
  }

  Widget buildRowlota(ThemeData theme, icon, text, abaad, color) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: abaad.width / 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: color,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: TextStyle(color: theme.accentColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(ThemeData theme, icon, text, abaad) {
    return Padding(
      padding: EdgeInsets.only(left: abaad.width / 8),
      child: Row(
        children: [
          Icon(
            icon,
            color: theme.accentColor,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white38),
          ),
        ],
      ),
    );
  }
}
