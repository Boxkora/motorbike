import 'appointmentschedulepage.dart';
import 'camerapage.dart';
import 'loadingpage.dart';
import 'loancarpage.dart';
import 'loginpage.dart';
import 'mainpage.dart';
import 'notificationpage.dart';
import 'package:go_router/go_router.dart';
import 'receiptpage.dart';
import 'main.dart';
import 'schedulepage.dart';
class RouterTool {
  GoRouter route = GoRouter(
    initialLocation: '/loadingpage',
    routes: [
      GoRoute(
            path: '/loadingpage',
            builder: (context, state) => LoadingPage()
          ),

          GoRoute(
            path: '/',
            builder: (context, state) => Layout()
          ),

          GoRoute(
            path: '/loginpage',
            builder: (context, state) => LoginPage()
          ),

          GoRoute(
            path: '/mainpage',
            builder: (context, state) => MainPage()
          ),

          GoRoute(
            path: '/notificationpage',
            builder: (context, state) => NotificationPage()
          ),

          GoRoute(
            path: '/notificationpage/detailednotificationpage/:title/:detail',
            name: 'detailednotificationpage',
            builder: (context, state) => DetailedNotificationPage(
              title: state.pathParameters['title']!,
              detail: state.pathParameters['detail']!,
            ),
          ),

          GoRoute(
            path: '/messagepage/detailedmessagepage/:username/:detail',
            name: 'detailedmessagepage',
            builder: (context, state) => DetailedNotificationPage(
              title: state.pathParameters['username']!,
              detail: state.pathParameters['detail']!,
            ),
          ),

          GoRoute(
            path: '/schedulepage/hometype/:username/:motorname/:type/:date/:time',
            name: 'hometypepage',
            builder: (context, state) => HomeTypePage(
              username: state.pathParameters['username']!,
              motorname: state.pathParameters['motorname']!,
              type: state.pathParameters['type']!,
              date: state.pathParameters['date']!,
              time: state.pathParameters['time']!,
            ),
          ),

          GoRoute(
            path: '/schedulepage/companytype/:username/:motorname/:type/:date/:time',
            name: 'companytypepage',
            builder: (context, state) => CompanyTypePage(
              username: state.pathParameters['username']!,
              motorname: state.pathParameters['motorname']!,
              type: state.pathParameters['type']!,
              date: state.pathParameters['date']!,
              time: state.pathParameters['time']!,
              
            ),
          ),

          GoRoute(
            path: '/receiptpage',
            builder: (context, state) => ReceiptPage()
          ),

          GoRoute(
            path: '/appointmentschedulepage',
            builder: (context, state) => AppointmentSchedulePage()
          ),

          GoRoute(
            path: '/camerapage',
            builder: (context, state) => CameraPage()
          ),

          GoRoute(
            path: '/loancarpage',
            builder: (context, state) => LoanCarPage()
          ),
    ],
  );
}