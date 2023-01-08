import 'package:auto_cache/src/library/expiry.dart';

class MemoryConfig {
  /// Expiry date that will be applied by default for every added object
  /// if it's not overridden in the add(key: object: expiry: completion:) method
  Expiry? expiry = Expiry.from(Expiry.never.value);

  /// The maximum number of objects in memory the cache should hold.
  /// If 0, there is no count limit. The default value is 0.
  final int countLimit;

  /// The maximum total cost that the cache can hold before it starts evicting objects.
  /// If 0, there is no total cost limit. The default value is 0
  final int totalCostLimit;

  MemoryConfig({
    this.expiry,
    this.countLimit = 0,
    this.totalCostLimit = 0,
  });
}
