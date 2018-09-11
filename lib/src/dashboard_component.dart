import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'hero.dart';
import 'route_paths.dart';
import 'hero_service.dart';
import 'hero_search_component.dart';

@Component(
  selector: 'my-dashboard',
  templateUrl: 'dashboard_component.html',
  styleUrls: ['dashboard_component.css'],
  directives: [routerDirectives, coreDirectives, HeroSearchComponent],
)
class DashboardComponent implements OnInit {
      List<Hero> heroes;
      final HeroService _heroService;
      
      DashboardComponent(this._heroService);

      @override
      void ngOnInit() async {
      	   heroes = await _heroService.getAll();
      }

      String heroUrl(int id) => RoutePaths.hero.toUrl(parameters: {idParam: '$id'});
}
