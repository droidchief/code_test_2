import 'package:faker/faker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:code_test/config/freezed_config.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/first_test_model.dart';


part 'first_test_bloc.freezed.dart';

part 'first_test_state.dart';

@injectable
abstract class FirstTestBloc extends StateStreamableSource<FirstTestState> {
  @factoryMethod
  factory FirstTestBloc() = _FirstTestBlocImpl;
}

class _FirstTestBlocImpl extends Cubit<FirstTestState> implements FirstTestBloc {
  _FirstTestBlocImpl() : super(FirstTestState.init) {
    _init();
  }

  void _init() {
    emit(state.copyWith(isLoading: true));
    final data = <FirstTestModel>[];
    for (var i = 0; i < 500; i++) {
      data.add(
        FirstTestModel(
          name: faker.person.name(),
          level: faker.randomGenerator.integer(10, min: 1),
          isActive: faker.randomGenerator.boolean(),
        ),
      );
    }
    final activeData = data.where((e) => e.isActive).toList();

    emit(state.copyWith(isLoading: false, data: data, activeData: activeData));
  }
}
