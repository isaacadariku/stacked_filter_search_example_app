import 'package:get_it/get_it.dart';

import '../core/services/book_api_service.dart';

///
final GetIt locator = GetIt.instance;

/// Setup function that is run before the App is run.
///
/// Arrange in order of most wanted service on start
///   - Sets up singletons that can be called from anywhere
/// In the app by using locator<Service>() call.
///   - Also sets up factor methods for view models.
///
Future setupLocator() async {
  // Services
 locator.registerLazySingleton(() => BooksApiService());

}
