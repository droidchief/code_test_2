// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:code_test/presentation/bloc/first_test/first_test_bloc.dart'
    as _i514;
import 'package:code_test/presentation/bloc/user/user_bloc.dart' as _i133;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i133.UserBloc>(() => _i133.UserBloc());
  gh.factory<_i514.FirstTestBloc>(() => _i514.FirstTestBloc());
  return getIt;
}
