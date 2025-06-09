import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:code_test/bloc/first_test_bloc.dart';
import 'package:code_test/bloc/user_bloc.dart';
import 'package:code_test/lang.dart';
import 'package:code_test/models/first_test_model.dart';

class FirstTest extends StatefulWidget {
  const FirstTest._();

  static Widget provideRoute() {
    return BlocProvider(
      create: (_) => GetIt.instance<FirstTestBloc>(),
      child: const FirstTest._(),
    );
  }

  @override
  State<FirstTest> createState() => _FirstTestState();
}

class _FirstTestState extends State<FirstTest> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstTestBloc, FirstTestState>(
      builder: (BuildContext context, FirstTestState firstTestState) {
        return BlocBuilder<UserBloc, UserState>(
          builder: (BuildContext context, UserState userState) {
            return Scaffold(
              appBar: AppBar(
                title: Text(currentLanguage.translate("yourLevel").replaceAll("\${level}", "${userState.user.level}")),
                actions: [
                  IconButton(
                    onPressed: () {
                      context.read<UserBloc>().tryToLevelUp();
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              body: (firstTestState.isLoading)
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        Container(
                          width: double.infinity,
                          color: Colors.green.withOpacity(0.5),
                          padding: const EdgeInsets.all(16),
                          child: Text(currentLanguage.translate("firstTestIntroduction")),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: firstTestState.activeData.length,
                            separatorBuilder: (_, __) => Container(
                              height: 1,
                              color: Colors.grey,
                              margin: const EdgeInsets.symmetric(horizontal: 16),
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(16),
                                child: Builder(
                                  builder: (BuildContext context) {
                                    final data = firstTestState.activeData[index];

                                    if (data.level > userState.user.level) {
                                      return Text(
                                        "${data.name} [Level ${data.level}]",
                                        style: const TextStyle(fontSize: 14, color: Colors.red),
                                      );
                                    }

                                    return Text("${data.name} [Level ${data.level}]");
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
            );
          },
        );
      },
    );
  }
}

extension FirstTestStateExt on FirstTestState {
  List<FirstTestModel> get activeData {
    if (data == null) return <FirstTestModel>[];
    return data!.where((element) => element.isActive).toList();
  }
}
