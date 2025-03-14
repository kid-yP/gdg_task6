import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_task6/main.dart';

void main() {
  testWidgets(
      'Sign In page displays correct text and navigates to Sign Up page',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the Sign In page displays the correct text.
    expect(find.text('Welcome'), findsOneWidget);
    expect(find.text('Sign in'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Forget password'), findsOneWidget);
    expect(find.text('Sign In'), findsOneWidget);
    expect(find.text('OR'), findsOneWidget);
    expect(find.text("Don't have an account? Sign Up"), findsOneWidget);

    // Tap the 'Sign Up' text to navigate to the Sign Up page.
    await tester.tap(find.text("Don't have an account? Sign Up"));
    await tester.pumpAndSettle(); // Wait for the navigation to complete.

    // Verify that the Sign Up page displays the correct text.
    expect(find.text('Create New Account'), findsOneWidget);
    expect(find.text('Name'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Mobile Number'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);
    expect(find.text('OR'), findsOneWidget);
    expect(find.text("Already have an account? Sign In"), findsOneWidget);
  });
}
