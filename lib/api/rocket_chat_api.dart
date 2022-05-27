import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:rocket_chat_client/models/method/create_direct_message_response.dart';
import 'package:rocket_chat_client/models/notification/push_token_request.dart';
import '../models/authen/login.dart';
import '../models/authentication.dart';
import '../models/channel_counters.dart';
import '../models/channel_messages.dart';
import '../models/default_response.dart';
import '../models/message/send_message_req.dart';
import '../models/method/add_user_to_room_request.dart';
import '../models/method/create_direct_message_request.dart';
import '../models/method/get_room_by_name_request.dart';
import '../models/new/channel_new.dart';
import '../models/new/message_new.dart';
import '../models/response/channel_new_response.dart';
import '../models/response/command_list_response.dart';
import '../models/response/message_new_response.dart';
import '../models/response/response.dart';
import '../models/room/create_room_response.dart';
import '../models/room/delete_room_request.dart';
import '../models/room/group_files_response.dart';
import '../models/room/group_member_response.dart';
import '../models/room/group_roles_response.dart';
import '../models/room/room_display_response.dart';
import '../models/room/room_info_response.dart';
import '../models/room/room_setting_request.dart';
import '../models/room/room_update_user_request.dart';
import '../models/subscription.dart';
import '../models/user.dart';
import '../models/users_autocomplete_response.dart';
import '../models/version_info_response.dart';

part 'rocket_chat_api.g.dart';

@RestApi(baseUrl: "https://localhost:3000")
abstract class RocketChatApi {
  factory RocketChatApi(Dio dio, {String baseUrl}) = _RocketChatApi;

  @GET("/api/info")
  Future<VersionInfoResponse> info();

  @POST("/api/v1/login")
  Future<LoginResponse> login(@Body() LoginModel body);

  @POST("/api/v1/logout")
  Future<DefaultResponse> logout();

  @GET("/api/v1/me")
  Future<UserModel> getMe();

  @POST("/api/v1/channels.create")
  Future<ChannelNewResponse> createChannel(@Body() ChannelNew body);

  @GET("/api/v1/channels.messages")
  Future<ChannelMessages> channelMessages(@Query("roomId") String roomId);

  @POST("/api/v1/subscriptions.read")
  Future<SuccessResponse> markAsRead(@Body() Map<String, String?> body);

  @GET("/api/v1/channels.history")
  Future<ChannelMessages> channelHistory({
    @Query("roomId") String roomId = '',
    @Query("latest") String latest = '',
    @Query("oldest") String oldest = '',
    @Query("inclusive") bool inclusive = false,
    @Query("offset") int offset = 0,
    @Query("count") int count = 20,
    @Query("unreads") bool unreads = false,
  });

  @GET("/api/v1/channels.counters")
  Future<ChannelCounters> channelCounters(
    @Query("roomId") String roomId,
  );

  @POST('/api/v1/chat.postMessage')
  Future<MessageNewResponse> postMessage(@Body() MessageNew message);

  // unread counter value depends on your settings at the Administration => General section.
  @GET("/api/v1/subscriptions.get")
  Future<Subscription> getSubscriptions();

  @GET("/api/v1/commands.list")
  Future<CommandListResponse> commandsList();

  @GET("/api/v1/rooms.get")
  Future<RoomDisplayResponse> getRooms();

  @POST('/api/v1/chat.sendMessage')
  Future<MessageNewResponse> sendMessage(@Body() SendMessageRequest message);

  @POST('/api/v1/groups.create')
  Future<CreateRoomResponse> createGroup(@Body() ChannelNew body);

  @POST('/api/v1/rooms.saveRoomSettings')
  Future<SuccessResponse> saveRoomSettings(@Body() RoomSettingRequest body);

  @GET("/api/v1/groups.history")
  Future<ChannelMessages> groupsHistory({
    @Query("roomId") String roomId = '',
    @Query("latest") String latest = '',
    @Query("oldest") String oldest = '',
    @Query("inclusive") bool inclusive = false,
    @Query("offset") int offset = 0,
    @Query("count") int count = 20,
    @Query("unreads") bool unreads = false,
  });

  @POST('/api/v1/groups.delete')
  Future<SuccessResponse> deleteGroup(@Body() DeleteRoomRequest body);

  @GET("/api/v1/groups.members")
  Future<GroupMembersResponse> getGroupsMembers(
    @Query("roomId") String roomId,
  );

  @GET("/api/v1/im.members")
  Future<GroupMembersResponse> getDirectMessageMembers(
      @Query("roomId") String roomId,
      );

  @POST('/api/v1/groups.kick')
  Future<SuccessResponse> groupsKick(@Body() RoomUpdateUserRequest body);

  @POST('/api/v1/rooms.leave')
  Future<SuccessResponse> roomsLeave(@Body() DeleteRoomRequest body);

  @GET('/api/v1/rooms.info')
  Future<RoomInfoResponse> getRoomsInfo(@Query("roomId") String roomId,);

  @GET('/api/v1/groups.roles')
  Future<GroupRolesResponse> groupsRoles(@Query("roomId") String roomId,);

  @POST('/api/v1/groups.addOwner')
  Future<SuccessResponse> groupsAddOwner(@Body() RoomUpdateUserRequest body);

  @POST('/api/v1/method.call/addUsersToRoom')
  Future<SuccessResponse> addUsersToRoom(@Body() AddUserToRoomRequest body);

  @GET('/api/v1/groups.files')
  Future<GroupFilesResponse> groupsFiles(
      {@Query("roomId") String roomId = '',
      @Query("offset") int offset = 0,
      @Query("count") int count = 40,
      @Query("sort") String? sort,
      @Query("query") String? query});

  @GET('/api/v1/im.files')
  Future<GroupFilesResponse> directMessageFiles(
      {@Query("roomId") String roomId = '',
        @Query("offset") int offset = 0,
        @Query("count") int count = 40,
        @Query("sort") String? sort,
        @Query("query") String? query});

  // AutoCompleteSelector
  @GET('/api/v1/users.autocomplete')
  Future<UsersAutocompleteResponse> usersAutocomplete(
    @Query("selector") String selector,
  );

  @POST('/api/v1/rooms.upload/{roomId}')
  Future<SuccessResponse> uploadFileToRoom(
      @Path("roomId") String roomId, @Body() FormData data, @SendProgress() ProgressCallback sendProgress);


  @POST('/api/v1/method.call/getRoomByTypeAndName')
  Future<UsersAutocompleteResponse> getRoomByTypeAndName(
      @Body() GetRoomByNameRequest body);


  @POST('/api/v1/method.call/createDirectMessage')
  Future<CreateDirectMessageResponse> createDirectMessage(
      @Body() CreateDirectMessageRequest body);

  @GET("/api/v1/im.history")
  Future<ChannelMessages> directMessageHistory({
    @Query("roomId") String roomId = '',
    @Query("latest") String latest = '',
    @Query("oldest") String oldest = '',
    @Query("inclusive") bool inclusive = false,
    @Query("offset") int offset = 0,
    @Query("count") int count = 20,
    @Query("unreads") bool unreads = false,
  });

  @POST('/api/v1/push.token')
  Future<SuccessResponse> pushToken(
      @Body() PushTokenRequest body);

}
