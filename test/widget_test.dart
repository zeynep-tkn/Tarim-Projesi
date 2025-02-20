import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tarim_proje/widgets/nav_bar.dart';

void main() {
  testWidgets('NavBar widget test', (WidgetTester tester) async {
    // GlobalKey oluşturuluyor
    final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: NavBar(
            key: UniqueKey(), // Test için key ekledim.
            currentIndex: 0,
            onTabSelected: (index) {},
            navKey: navKey, // navKey parametresini ekledik
          ),
        ),
      ),
    );

    // Testi gerçekleştiriyoruz
    expect(find.byType(BottomNavigationBar), findsOneWidget);
  });
}
