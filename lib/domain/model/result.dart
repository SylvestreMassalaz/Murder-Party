sealed class Result<T> {
  const Result();

  factory Result.ok(T value) => OK(value);

  factory Result.error(Exception error) => Error(error);
}

final class OK<T> extends Result<T> {
  const OK(this.value);

  final T value;
}

final class Error<T> extends Result<T> {
  const Error(this.error); 

  final Exception error;
}