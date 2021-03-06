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
  Future<MessageNewResponse> deleteChatMessage(message) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(message.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<MessageNewResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/chat.delete',
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
  Future<SuccessResponse> deleteDirectMessageRoom(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/im.delete',
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
  Future<GroupMembersResponse> getDirectMessageMembers(roomId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'roomId': roomId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroupMembersResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/im.members',
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
  Future<SuccessResponse> roomsLeave(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/rooms.leave',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RoomInfoResponse> getRoomsInfo(roomId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'roomId': roomId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RoomInfoResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/rooms.info',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RoomInfoResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GroupRolesResponse> groupsRoles(roomId) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'roomId': roomId};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroupRolesResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.roles',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroupRolesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> groupsAddOwner(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.addOwner',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> groupsRemoveOwner(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.removeOwner',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> addUsersToRoom(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/method.call/addUsersToRoom',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GroupFilesResponse> groupsFiles(
      {roomId = '', offset = 0, count = 40, sort, query}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'roomId': roomId,
      r'offset': offset,
      r'count': count,
      r'sort': sort,
      r'query': query
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroupFilesResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/groups.files',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroupFilesResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GroupFilesResponse> directMessageFiles(
      {roomId = '', offset = 0, count = 40, sort, query}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'roomId': roomId,
      r'offset': offset,
      r'count': count,
      r'sort': sort,
      r'query': query
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<GroupFilesResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/im.files',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GroupFilesResponse.fromJson(_result.data!);
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

  @override
  Future<ListUsersResponse> getListUser(selector, count) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'query': selector,
      r'count': count
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ListUsersResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/users.list',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ListUsersResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> uploadFileToRoom(roomId, data, sendProgress) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = data;
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/rooms.upload/${roomId}',
                    queryParameters: queryParameters,
                    data: _data,
                    onSendProgress: sendProgress)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UsersAutocompleteResponse> getRoomByTypeAndName(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UsersAutocompleteResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/api/v1/method.call/getRoomByTypeAndName',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UsersAutocompleteResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CreateDirectMessageResponse> createDirectMessage(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CreateDirectMessageResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(
                    _dio.options, '/api/v1/method.call/createDirectMessage',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CreateDirectMessageResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelMessages> directMessageHistory(
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
                .compose(_dio.options, '/api/v1/im.history',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelMessages.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> pushToken(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/push.token',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SuccessResponse> deleteToken(body) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<SuccessResponse>(
            Options(method: 'DELETE', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/push.token',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = SuccessResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ChannelMessages> searchMessage(
      {roomId = '', searchText = '', offset = 0, count = 20}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'roomId': roomId,
      r'searchText': searchText,
      r'offset': offset,
      r'count': count
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ChannelMessages>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/chat.search',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ChannelMessages.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserInfoResponse> getUserInfoById(username) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'username': username};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserInfoResponse>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, '/api/v1/users.info',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserInfoResponse.fromJson(_result.data!);
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
