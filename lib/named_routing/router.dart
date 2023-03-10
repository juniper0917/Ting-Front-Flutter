import 'package:flutter/material.dart';
import 'package:ting_flutter/screens/navigatorBarScaffold/navigatorBarScaffold.dart';
import './config.dart';
import 'package:page_transition/page_transition.dart';

import '../splash_screen.dart';
import '../screens/kakaoLogin/login.dart';
import '../screens/kakaoLogin/additionalAuth/additionalAuth.dart';
import '../screens/home/home.dart';
import 'package:ting_flutter/screens/home/filter/filter.dart';
import '../screens/recommendedPlace/recommendedPlace.dart';
import '../screens/notice/notice.dart';
import '../screens/myprofile/myprofile.dart';
import '../screens/notification/inviteNotification.dart';
import '../screens/kakaoLogin/testAuth.dart';
import '../screens/chat/view/chatRoom.dart';
import '../screens/friendsList.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashViewRoute:
      return PageTransition(
          child: const SplashScreen(), type: PageTransitionType.fade);
    case KakaoLoginViewRoute:
      return PageTransition(
          child: const LoginScreen(), type: PageTransitionType.fade);
    case AdditionalAuthViewRoute:
      return PageTransition(
          child: const AdditionalAuthScreen(), type: PageTransitionType.fade);
    case HomeViewRoute:
      return PageTransition(child: const Home(), type: PageTransitionType.fade);
    case NavigatorViewRoute:
      return PageTransition(
          child: const NavigatorBarScaffold(), type: PageTransitionType.fade);
    case RecommendedPlaceViewRoute:
      return MaterialPageRoute(builder: (context) => const RecommendedPlaceScreen());
    case NoticeViewRoute:
      return MaterialPageRoute(builder: (context) => const NoticeScreen());
    case FilterViewRoute:
      return MaterialPageRoute(builder: (context) => const FilterScreen());
    case MyProfileViewRoute:
      return MaterialPageRoute(builder: (context) => const MyProfileScreen());
    case TestAuthViewRoute:
      return MaterialPageRoute(builder: (context) => const TestSignUp());
    case ChatRoomViewRoute:
      return MaterialPageRoute(builder: (context) => const ChatRoomScreen());
    case InvitationNotificationViewRoute:
      return MaterialPageRoute(builder: (context) => const InvitationNotificationScreen());
    case FriendsListViewRoute:
      return MaterialPageRoute(builder: (context) => const FriendsList());
    default:
      return MaterialPageRoute(builder: (context) => const Home());
  }
}
