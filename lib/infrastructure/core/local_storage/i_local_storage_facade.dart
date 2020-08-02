abstract class ILocalStorageFacade {
  Future<String> getToken();

  Future<void> saveToken(String token);

  Future<bool> deleteCache();
}
