class SpOrder {
  /// when the screen is on extra small break point, this order will work and used `ascending` order
  final int xs;

  /// when the screen is on small break point, this order will work and used `ascending` order
  final int sm;

  /// when the screen is on medium break point, this order will work and used `ascending` order
  final int md;

  /// when the screen is on large break point, this order will work and used `ascending` order
  final int lg;

  /// when the screen is on extra large break point, this order will work and used `ascending` order
  final int xl;

  /// this class is a sort class. when you use 1 of it's value, the value will create an ordering when the screen on the value condition.
  const SpOrder({
    this.xs: 0,
    this.sm: 0,
    this.md: 0,
    this.lg: 0,
    this.xl: 0,
  });
}
