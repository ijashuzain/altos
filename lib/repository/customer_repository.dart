import 'package:altos/models/customer_model.dart';
import 'package:altos/repository/repository.dart';

class CustomerRepository<T> extends Repository {
  @override
  Future<List> deleteAll() {
    // TODO: implement deleteAll
    throw UnimplementedError();
  }

  @override
  Future deleteSingle(String id) {
    // TODO: implement deleteSingle
    throw UnimplementedError();
  }

  @override
  Future<List> fetchAll() async {
    List<Customer> customers = [
      Customer(
        name: "Ijas Huzain",
        id: 1,
        phone: '9037190469',
        email: 'ijashussain3@gmail.com',
        place: 'Nilambur',
        description: 'Description',
      ),
      Customer(
        name: "John",
        id: 2,
        phone: '78654321',
        email: 'john@gmail.com',
        place: 'Chennai',
        description: 'Description',
      ),
    ];
    return customers;
  }

  @override
  Future fetchSingle(String id) {
    // TODO: implement fetchSingle
    throw UnimplementedError();
  }

  @override
  Future update(String id, data) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
