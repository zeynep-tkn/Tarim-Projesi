import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tarim_proje/widgets/nav_bar.dart'; // NavBar widget'ının doğru importu

void main() {
  testWidgets('NavBar widget test', (WidgetTester tester) async {
    // GlobalKey oluşturuluyor
    final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          bottomNavigationBar: NavBar(  // NavBar widget'ını doğru kullanma
            key: UniqueKey(),
            currentIndex: 0,
            onTabSelected: (index) {},
            navKey: navKey, // navKey parametresi burada doğru şekilde geçiyor
          ),
        ),
      ),
    );

    // Testi gerçekleştiriyoruz
    expect(find.byType(BottomNavigationBar), findsOneWidget);
  });
}
