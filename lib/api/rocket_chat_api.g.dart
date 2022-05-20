// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_chat_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps

class _RocketChatApi implements RocketChatApi {
  _RocketChatApi(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://localhost:3000';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<VersionInfoResponse> info() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VersionInfoResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/info',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VersionInfoResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<LoginResponse> login(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<LoginResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/login',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DefaultResponse> logout() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DefaultResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/logout',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DefaultResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserModel> getMe() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserModel>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/me',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelNewResponse> createChannel(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelNewResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/channels.create',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelNewResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelMessages> channelMessages(roomId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'roomId': roomId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelMessages>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/channels.messages',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelMessages.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> markAsRead(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/subscriptions.read',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelMessages> channelHistory(
      {roomId = '',
      latest = '',
      oldest = '',
      inclusive = false,
      offset = 0,
      count = 20,
      unreads = false}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'roomId': roomId,
      r'latest': latest,
      r'oldest': oldest,
      r'inclusive': inclusive,
      r'offset': offset,
      r'count': count,
      r'unreads': unreads
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelMessages>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/channels.history',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelMessages.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelCounters> channelCounters(roomId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'roomId': roomId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelCounters>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/channels.counters',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelCounters.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MessageNewResponse> postMessage(message) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(message.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MessageNewResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/chat.postMessage',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MessageNewResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Subscription> getSubscriptions() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<Subscription>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/subscriptions.get',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Subscription.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CommandListResponse> commandsList() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CommandListResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/commands.list',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CommandListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomDisplayResponse> getRooms() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RoomDisplayResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/rooms.get',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RoomDisplayResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<MessageNewResponse> sendMessage(message) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(message.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MessageNewResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/chat.sendMessage',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = MessageNewResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CreateRoomResponse> createGroup(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CreateRoomResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.create',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CreateRoomResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> saveRoomSettings(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/rooms.saveRoomSettings',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelMessages> groupsHistory(
      {roomId = '',
      latest = '',
      oldest = '',
      inclusive = false,
      offset = 0,
      count = 20,
      unreads = false}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'roomId': roomId,
      r'latest': latest,
      r'oldest': oldest,
      r'inclusive': inclusive,
      r'offset': offset,
      r'count': count,
      r'unreads': unreads
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelMessages>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.history',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelMessages.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> deleteGroup(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.delete',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GroupMembersResponse> getGroupsMembers(roomId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'roomId': roomId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroupMembersResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.members',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroupMembersResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> groupsKick(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.kick',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UsersAutocompleteResponse> usersAutocomplete(selector) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'selector': selector};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UsersAutocompleteResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/users.autocomplete',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UsersAutocompleteResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
