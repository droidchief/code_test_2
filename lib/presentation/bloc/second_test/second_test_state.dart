import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/first_test_model.dart';

part 'second_test_state.freezed.dart';

@freezed
class SecondTestState with _$SecondTestState {
  const factory SecondTestState.loading() = _Loading;
  const factory SecondTestState.loaded(List<FirstTestModel> data) = _Loaded;
}
