import 'package:flutter/material.dart';
import 'package:listview/food.dart';
import 'package:listview/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listview(),
  ));
}

class listview extends StatelessWidget {
  const listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Anwar isak'),
              accountEmail: Text('anwarisak@gmail'),
              currentAccountPicture: CircleAvatar(
                foregroundImage: AssetImage('images/profile.JPG'),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const profile(),
                  ),
                );
              },
              title: Text('Account'),
              leading: Icon(Icons.person),
            ),
            Divider(),
            ListTile(
              title: Text('Groups'),
              leading: Icon(Icons.people_alt_rounded),
            ),
            Divider(),
            ListTile(
              title: Text('logout'),
              leading: Icon(Icons.logout_outlined),
            ),
            Divider(),
          ],
        ),
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('filantech'),

        // leading: Icon(Icons.menu),
        backgroundColor: Colors.blue[800],
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: foods.length,
        itemBuilder: ((context, index) {
          return Card(
            elevation: 0,
            child: ListTile(
              onTap: () {
                print('waa lagu arkay');
              },
              title: Text('${foods[index]}'),
              subtitle: Text('active'),
              leading: CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Text(
                  '${index + 1}',
                  style: TextStyle(color: Colors.blue[800], fontSize: 22),
                ),
              ),
              trailing: Icon(
                Icons.whatsapp,
                size: 33,
                color: Colors.blue[800],
              ),
            ),
          );
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.blue[800],
        currentIndex: 1,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "account"),
        ],
      ),
    );
  }
}
