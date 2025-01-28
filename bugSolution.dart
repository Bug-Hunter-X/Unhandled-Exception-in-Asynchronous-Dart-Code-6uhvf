```dart
import 'dart:async';

Future<void> main() async {
  final completer = Completer<int>();

  // Simulate an asynchronous operation that might fail
  Timer(const Duration(seconds: 2), () {
    // Simulate a failure condition (e.g., network error)
    if (true) {
      completer.completeError(Exception('Asynchronous operation failed!'));
    } else {
      completer.complete(42);
    }
  });

  try {
    final result = await completer.future;
    print('Result: $result');
  } on Exception catch (e) {
    print('Error: $e'); // Handle specific Exception
  } catch (e) {
    print('Unknown Error: $e'); // Handle other errors
  }
}
```