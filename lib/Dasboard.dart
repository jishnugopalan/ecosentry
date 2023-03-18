import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Welcome'),
        backgroundColor: Color.fromARGB(255, 53, 87, 33),
      ),
      sideBar: SideBar(
        items: const [
          AdminMenuItem(
            title: 'Dashboard',
            route: '/',
            icon: 
            Icons.dashboard,
          ),
          AdminMenuItem(
            title: 'Top Level',
            icon: Icons.file_copy,
            children: [
              AdminMenuItem(
                title: 'Second Level Item 1',
                route: '/secondLevelItem1',
              ),
              AdminMenuItem(
                title: 'Second Level Item 2',
                route: '/secondLevelItem2',
              ),
              AdminMenuItem(
                title: 'Third Level',
                children: [
                  AdminMenuItem(
                    title: 'Third Level Item 1',
                    route: '/thirdLevelItem1',
                  ),
                  AdminMenuItem(
                    title: 'Third Level Item 2',
                    route: '/thirdLevelItem2',
                  ),
                ],
              ),
            ],
          ),
        ],
        selectedRoute: '/',
        onSelected: (item) {
          if (item.route != null) {
            Navigator.of(context).pushNamed(item.route!);
          }
        },
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(10),
          child: const Text(
            '',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 36,
            ),
          ),
        ),
      ),
    );
  }
}
