import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:rocket_chat_client/models/preferences.dart';

import 'email.dart';

class UserModel {
  String? id;
  String? name;
  List<Email>? emails;
  String? status;
  String? statusConnection;
  String? username;
  int? utcOffset;
  bool? active;
  List<String>? roles;
  Map<String, Preferences>? settings;
  String? avatarUrl;
  String? avatarETag;
  Map<String, String>? customFields;
  bool? success;
  DateTime? lastLogin;

  UserModel({
    this.id,
    this.name,
    this.emails,
    this.status,
    this.statusConnection,
    this.username,
    this.utcOffset,
    this.active,
    this.roles,
    this.settings,
    this.avatarUrl,
    this.avatarETag,
    this.customFields,
    this.success = false,
    this.lastLogin,
  });

  UserModel.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      id = json['_id'];
      name = json['name'];

      if (json['emails'] != null) {
        List<dynamic> jsonList = json['emails'].runtimeType == String //
            ? jsonDecode(json['emails'])
            : json['emails'];
        emails = jsonList
            .where((json) => json != null)
            .map((json) => Email.fromMap(json))
            .toList();
      } else {
        emails = null;
      }

      status = json['status'];
      statusConnection = json['statusConnection'];
      username = json['username'];
      utcOffset = json['utcOffset'];
      active = json['active'];

      if (json['roles'] != null) {
        List<dynamic> jsonList = json['roles'].runtimeType == String //
            ? jsonDecode(json['roles'])
            : json['roles'];
        roles = jsonList
            .where((json) => json != null)
            .map((value) => value.toString())
            .toList();
      } else {
        roles = null;
      }

      if (json['settings'] != null) {
        Map<String, dynamic> jsonSettings =
            json['settings'].runtimeType == String //
                ? jsonDecode(json['settings'])
                : json['settings'];

        if (jsonSettings['preferences'] != null) {
          settings = {
            'preferences': Preferences.fromMap(jsonSettings['preferences'])
          };
        }
      }

      avatarUrl = json['avatarUrl'];
      if (json['lastLogin'] != null) {
        lastLogin = DateTime.tryParse(json['lastLogin']);
      }
      avatarETag = json['avatarETag'];
      if (json['customFields'] != null) {
        customFields = Map<String, String>.from(json['customFields']);
      }
      success = json['success'];
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {};

    if (id != null) {
      map['_id'] = id;
    }
    if (name != null) {
      map['name'] = name;
    }
    if (emails != null) {
      map['emails'] = emails
              ?.where((json) => json != null)
              .map((email) => email.toMap())
              .toList() ??
          [];
    }
    if (status != null) {
      map['status'] = status;
    }
    if (statusConnection != null) {
      map['statusConnection'] = statusConnection;
    }
    if (username != null) {
      map['username'] = username;
    }
    if (utcOffset != null) {
      map['utcOffset'] = utcOffset;
    }
    if (active != null) {
      map['active'] = active;
    }
    if (roles != null) {
      map['roles'] = roles?.where((json) => json != null).toList() ?? [];
    }
    if (settings != null) {
      map['settings'] = settings != null
          ? (settings!['preferences'] != null
              ? {'preferences': settings!['preferences']!.toMap()}
              : {'preferences': {}})
          : null;
    }
    if (avatarUrl != null) {
      map['avatarUrl'] = avatarUrl;
    }
    if (avatarETag != null) {
      map['avatarETag'] = avatarETag;
    }
    if (customFields != null) {
      map['customFields'] = customFields;
    }
    if (success != null) {
      map['success'] = success;
    }
    if (lastLogin != null) {
      map['lastLogin'] = lastLogin;
    }
    return map;
  }

  @override
  String toString() {
    return 'User{_id: $id, name: $name, emails: $emails, status: $status, statusConnection: $statusConnection, username: $username, utcOffset: $utcOffset, active: $active, roles: $roles, settings: $settings, avatarUrl: $avatarUrl, customFields: $customFields, success: $success}';
  }
}
