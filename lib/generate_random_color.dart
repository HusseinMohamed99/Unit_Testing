import 'dart:math' as math;

///Method that generates a random color hex value
int generateRandomColorHexValue() {
  const maxColorHexValue = 0xFF673A3A;

  return math.Random().nextInt(maxColorHexValue);
}
