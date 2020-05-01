import 'package:bloc/bloc.dart';
import 'userprofilepage.dart';
import 'myprojectspage.dart';
import 'projectsmanagementpage.dart';
import 'homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  UserProfileClickedEvent,
  MyProjectsClickedEvent,
  ProjectManagementClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.UserProfileClickedEvent:
        yield UserprofilePage();
        break;
      case NavigationEvents.MyProjectsClickedEvent:
        yield MyProjectsPage();
        break;
      case NavigationEvents.ProjectManagementClickedEvent:
        yield Projectsmgmt();
        break;
    }
  }
}
