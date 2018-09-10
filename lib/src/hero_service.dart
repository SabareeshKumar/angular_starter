import 'dart:async';
import 'hero.dart';
import 'mock_heroes.dart';

class HeroService {
      Future<List<Hero>> getAll() async => mockHeroes;

      
}