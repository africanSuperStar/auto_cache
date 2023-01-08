class Option<T, U> {
  Option({required U input})
      : failureValue = null,
        value = input;

  Option.success({required this.value}) : failureValue = null;

  Option.failure({
    required T failure,
    required U fallback,
  })  : failureValue = failure,
        value = fallback;

  final U value;
  final T? failureValue;
}
