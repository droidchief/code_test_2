import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';
import '../../../data/models/first_test_model.dart';
import 'second_test_state.dart';
import 'package:faker/faker.dart';

class SecondTestBloc extends Cubit<SecondTestState> {
  SecondTestBloc() : super(const SecondTestState.loading()) {
    _loadData();
  }

  Future<void> _loadData() async {
    final data = await compute(generateLargeTestData, 1000000);
    emit(SecondTestState.loaded(data));
  }
}

// This runs in a background isolate
List<FirstTestModel> generateLargeTestData(int count) {
  final faker = Faker();
  final List<FirstTestModel> data = [];

  for (var i = 0; i < count; i++) {
    data.add(
      FirstTestModel(
        name: faker.person.name(),
        level: faker.randomGenerator.integer(10, min: 1),
        isActive: faker.randomGenerator.boolean(),
      ),
    );
  }
  return data;
}
