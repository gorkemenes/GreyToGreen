import 'package:flutter/material.dart';
import 'package:grey_to_green/feature/add_event/screen/planning_event_screen.dart';
import 'package:grey_to_green/feature/category/screen/event_category_screen.dart';
import 'package:grey_to_green/feature/home/screen/home_screen.dart';
import 'package:grey_to_green/feature/map/screen/map_screen.dart';
import 'package:grey_to_green/feature/profile/screen/profile_screen.dart';
import 'package:grey_to_green/product/init/application_initialize.dart';
import 'package:grey_to_green/product/init/theme/custom_dark_theme.dart';
import 'package:grey_to_green/product/init/theme/custom_light_theme.dart';

Future<void> main() async {
  await ApplicationInitiliaze().make();

  runApp(const MyApp());
}

/// MyApp is the root widget of the application
class MyApp extends StatefulWidget {
  /// constructor for MyApp
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

List<Widget> screens = [
  const HomeScreen(),
  const EventCategoriesScreen(),
  const PlanEventScreen(),
  const MapScreen(),
  const ProfileScreen(),
];
int selectedIndex = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: CustomLightTheme().themeData,
      darkTheme: CustomDarkTheme().themeData,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Event Details',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Plan',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: 'Map',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          elevation: 0,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
