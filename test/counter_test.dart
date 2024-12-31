import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/testing/counter.dart';

//TODO: Note that the test function is not called mains() but main()
// TODO: Write a test for the Counter class
void mains() {
  test("Counter value should be incremented", () {
    // ARRANGE
    final Counter counter = Counter(7);

    // ACT
    counter.increment();

    // ASSERT
    expect(counter.value, 8);
  });

  test("Counter value should be decremented", () {
    // ARRANGE
    final Counter counter = Counter(6);

    // ACT
    counter.decrement();

    // ASSERT
    expect(counter.value, 5);
  });
}

/// multiple tests in a Setup and Teardown
void main() {
  late final Counter counter;

  group("Test start, increment, decrement", () {
    setUpAll(() {
      counter = Counter(8);
    });
    test("value should be incremented", () {
      // ACT
      counter.increment();
      // ASSERT
      expect(counter.value, 9);
    });

    test("value should be decremented", () {
      // ACT
      counter.decrement();

      // ASSERT
      expect(counter.value, 8);
    });
    tearDownAll(() => null);
  });
}
