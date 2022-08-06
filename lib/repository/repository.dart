abstract class Repository<T>{
  Future<List<T>> fetchAll();
  Future<T> fetchSingle(String id);
  Future<List<T>> deleteAll();
  Future<T> deleteSingle(String id);
  Future<T> update(String id,T data);
}