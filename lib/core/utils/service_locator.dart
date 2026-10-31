import 'package:clean_arch_training/core/cache/cache_helper.dart';
import 'package:clean_arch_training/core/configs/theme/bloc/theme_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<CacheHelper>(
    () => CacheHelper(sharedPreferences: sharedPreferences),
  );
  sl.registerFactory<ThemeCubit>(() => ThemeCubit());
}
