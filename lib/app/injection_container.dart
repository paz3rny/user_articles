//import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:user_articles/app/injection_container.config.dart';
// import 'package:user_articles/data/remote_data_sources/authors_remote_data_source.dart';
// import 'package:user_articles/domain/repositories/authors_repository.dart';
// import 'package:user_articles/features/articles/cubit/articles_cubit.dart';
// import 'package:user_articles/features/home/cubit/home_cubit.dart';

// import '../data/remote_data_sources/articles_remote_data_source.dart';
// import '../domain/repositories/articles_repository.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();  

@module  
abstract class RegisterModule {   
  @Named("BaseUrl")  
  String get baseUrl => 'https://my-json-server.typicode.com/adamsmaka/json-demo';   
  @lazySingleton  
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));  
  
}  

// void configureDependencies() {
//   //Bloc
//   getIt.registerFactory(() => HomeCubit(authorsRepository: getIt()));
//   getIt.registerFactory(() => ArticlesCubit(articlesRepository: getIt()));

//   //Repositories
//   getIt.registerFactory(() => AuthorsRepository(remoteDataSource: getIt()));
//   getIt.registerFactory(() => ArticlesRepository(remoteDataSource: getIt()));

//   //DataSources
//   getIt.registerFactory(() => AuthorsRemoteRetrofitDataSource(Dio()));
//   getIt.registerFactory(() => ArticlesRemoteRetrofitDataSource(Dio()));
// }
