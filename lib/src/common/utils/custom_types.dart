import 'dart:async';

typedef ConvertFunction<S, R> = R Function(S);

typedef JsonObject = Map<String, Object?>;

typedef AsyncConvertFunction<S, R> = FutureOr<R> Function(S event);
