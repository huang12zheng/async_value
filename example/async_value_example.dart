import 'package:async_value/async_value.dart';

Future<AsyncValue<T>> _fetchData<T, S>(T Function(S) fromJson) async {
  AsyncValue<T> state;
  state = const AsyncValue.loading();
  state = await AsyncValue.guard(() async {
    // final response = await dio.get('my_api/data');
    return fromJson('response' as S);
  });
  return state;
}

// String fn(String v) => v;

void main() async {
  var state = await _fetchData((String v) => v);
  // var state = await _fetchData(fn);
  state.map(
    data: (value) => value,
    error: (value) => value,
    loading: (value) {},
  );
}
