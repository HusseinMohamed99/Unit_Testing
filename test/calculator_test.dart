import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/testing/calculator.dart';

// TODO: Note that the test function is not called mains() but main()
// TODO: Write a test for the Calculator class
void mains() {
  test("Testing calculator Sum", () {
    // ARRANGE
    final Calculator calculator = Calculator();

    // ACT
    final result = calculator.add(5, 3);

    // ASSERT
    expect(result, 8);
  });
  test("Testing calculator Subtract", () {
    // ARRANGE
    final Calculator calculator = Calculator();

    // ACT
    final result = calculator.subtract(10, 3);

    // ASSERT
    expect(result, 7);
  });
  test("Testing calculator Multiply", () {
    // ARRANGE
    final Calculator calculator = Calculator();

    // ACT
    final result = calculator.multiply(4, 3);

    // ASSERT
    expect(result, 12);
  });
  test("Testing calculator divide", () {
    // ARRANGE
    final Calculator calculator = Calculator();

    // ACT
    final result = calculator.divide(10, 2);

    // ASSERT
    expect(result, 5);
  });
}

void main() {
  // ARRANGE
  late final Calculator calculator;
  group("Testing calculator Sum, Subtract, Multiply and Divide", () {
    setUpAll(() {
      calculator = Calculator();
    });
    test("Testing calculator Sum", () {
      // ACT
      final result = calculator.add(5, 3);

      // ASSERT
      expect(result, 8);
    });
    test("Testing calculator Subtract", () {
      // ACT
      final result = calculator.subtract(10, 3);

      // ASSERT
      expect(result, 7);
    });
    test("Testing calculator Multiply", () {
      // ACT
      final result = calculator.multiply(4, 3);

      // ASSERT
      expect(result, 12);
    });
    test("Testing calculator Divide", () {
      // ACT
      final result = calculator.divide(10, 2);

      // ASSERT
      expect(result, 5);
    });
    tearDownAll(() {
      return null;
    });
  });
}
