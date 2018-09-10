import 'package:angular/angular.dart';
import 'src/hero.dart';
import 'src/hero_component.dart';
import 'src/hero_service.dart';
import 'dart:async';
@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [coreDirectives, HeroComponent],
  providers: [ClassProvider(HeroService)],
)
class AppComponent implements OnInit{
  final title = 'Tour of Heroes';
  List<Hero> heroes;
  Hero selected;
  final HeroService _heroService;

  AppComponent(this._heroService);
  
  void onSelect(Hero hero) => selected = hero;

  _getHeroes() async {
       heroes = await _heroService.getAll();
  }

  void ngOnInit() => _getHeroes();
}
