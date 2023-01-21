import 'package:auto_cache/src/storage/background/background_memory_storage.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  final memoryStorage = BackgroundMemoryStorage();

  memoryStorage.workManager.executeTask((task, inputData) {
    switch (task) {
      case IBackgroundMemoryStorage.allObjectsTaskKey:
        memoryStorage.allObjects;
        break;

      case IBackgroundMemoryStorage.capsuleTaskKey:
        memoryStorage.entry(memoryStorage.inputData['entryKey0']);
        break;
    }

    return Future.value(true);
  });
}
