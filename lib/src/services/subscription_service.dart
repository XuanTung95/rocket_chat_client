import 'dart:convert';

import 'package:rocket_chat_client/src/services/api_services.dart';

import '../models/subscription.dart';

class SubscriptionService {

  Future<Subscription> getSubscriptions() async {
    return ApiServices.get().getSubscriptions();
  }
}
