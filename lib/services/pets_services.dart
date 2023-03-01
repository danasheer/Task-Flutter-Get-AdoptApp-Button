import 'package:adopt_app/models/pet.dart';
import 'package:dio/dio.dart';

class PetService {
  final _dio = Dio();
  final baseURL = "https://coded-pets-api-crud.herokuapp.com";
  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
    Response response = await _dio.get("$baseURL/pets");
    pets = (response.data as List).map((pet) => Pet.fromJson(pet)).toList();
    return pets;
  }
}
