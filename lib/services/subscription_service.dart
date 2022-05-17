import 'dart:convert';

import 'package:rocket_chat_client/services/api_services.dart';

import '../models/subscription.dart';

class SubscriptionService {

  ApiServices api;
  SubscriptionService(this.api);

  Future<Subscription> getSubscriptions() async {
    return api.client.getSubscriptions();
  }
}
