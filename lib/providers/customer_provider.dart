import 'dart:developer';

import 'package:altos/models/customer_model.dart';
import 'package:altos/repository/customer_repository.dart';
import 'package:flutter/material.dart';

class CustomerProvider extends ChangeNotifier {
  bool isFetchingAllCustomers = false;

  final CustomerRepository _customerRepository = CustomerRepository();
  List<Customer> customers = [];
  Customer? selectedCustomer;

  fetchAllCustomers() async {
    _notify(_fetchingAllCustomers(true));
    try {
      customers = await _customerRepository.fetchAll() as List<Customer>;
      _notify(_fetchingAllCustomers(false));
    } catch (e) {
      log("fetchAllCustomers -> ${e.toString()}");
      _notify(_fetchingAllCustomers(false));
    }
  }

  selectCustomer(Customer? customer) {
    selectedCustomer = customer;
    notifyListeners();
  }

  _fetchingAllCustomers(bool val) => isFetchingAllCustomers = val;

  _notify(bool val) {
    notifyListeners();
  }
}
