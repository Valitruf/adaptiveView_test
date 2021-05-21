class AutoSizeFonts {
  // base 360 x 672 logic pixels
  // base font 8
  static double fnt8x672(double height) {
    return (height / 84).ceilToDouble();
  }

  // base font 10
  static double fnt10x672(double height) {
    return (height / 67.20).ceilToDouble();
  }

  // base font 11
  static double fnt11x672(double height) {
    return (height / 61.10).ceilToDouble();
  }

  // base font 12
  static double fnt12x672(double height) {
    return (height / 56.00).ceilToDouble();
  }

  // base font 14
  static double fnt14x672(double height) {
    return (height / 48.00).ceilToDouble();
  }

  // base font 15
  static double fnt15x672(double height) {
    return (height / 44.80).ceilToDouble();
  }

  // base font 17
  static double fnt17x672(double height) {
    return (height / 39.55).ceilToDouble();
  }

  // base font 20
  static double fnt20x672(double height) {
    return (height / 33.60).ceilToDouble();
  }

  // base font 22
  static double fnt22x672(double height) {
    return (height / 30.55).ceilToDouble();
  }
}
