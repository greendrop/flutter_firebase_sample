import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_sample/components/organisms/drawer_content.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/home';
  final String title = 'Home';

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with RouteAware {
  final _routeObserver = RouteObserver<PageRoute>();
  final _analytics = FirebaseAnalytics();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver.subscribe(
        this, ModalRoute.of(context) as PageRoute<dynamic>);
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    _analytics.setCurrentScreen(
        screenName: ModalRoute.of(context).settings.name,
        screenClassOverride: widget.toString());
  }

  @override
  void didPopNext() {
    _analytics.setCurrentScreen(
        screenName: ModalRoute.of(context).settings.name,
        screenClassOverride: widget.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: DrawerContent(),
    );
  }
}
