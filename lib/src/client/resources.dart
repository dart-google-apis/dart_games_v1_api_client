part of games_v1_api;

class AchievementDefinitionsResource_ {

  final Client _client;

  AchievementDefinitionsResource_(Client client) :
      _client = client;

  /**
   * Lists all the achievement definitions for your application.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of achievement resources to return in the response, used for paging. For any response, the actual number of achievement resources returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 200
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementDefinitionsListResponse> list({core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "achievements";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AchievementDefinitionsListResponse.fromJson(data));
  }
}

class AchievementsResource_ {

  final Client _client;

  AchievementsResource_(Client client) :
      _client = client;

  /**
   * Increments the steps of the achievement with the given ID for the currently authenticated player.
   *
   * [achievementId] - The ID of the achievement used by this method.
   *
   * [stepsToIncrement] - The number of steps to increment.
   *   Minimum: 1
   *
   * [requestId] - A randomly generated numeric ID for each request specified by the caller. This number is used at the server to ensure that the request is handled correctly across retries.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementIncrementResponse> increment(core.String achievementId, core.int stepsToIncrement, {core.int requestId, core.Map optParams}) {
    var url = "achievements/{achievementId}/increment";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (achievementId == null) paramErrors.add("achievementId is required");
    if (achievementId != null) urlParams["achievementId"] = achievementId;
    if (requestId != null) queryParams["requestId"] = requestId;
    if (stepsToIncrement == null) paramErrors.add("stepsToIncrement is required");
    if (stepsToIncrement != null) queryParams["stepsToIncrement"] = stepsToIncrement;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AchievementIncrementResponse.fromJson(data));
  }

  /**
   * Lists the progress for all your application's achievements for the currently authenticated player.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of achievement resources to return in the response, used for paging. For any response, the actual number of achievement resources returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 200
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [state] - Tells the server to return only achievements with the specified state. If this parameter isn't specified, all achievements are returned.
   *   Allowed values:
   *     ALL - List all achievements. This is the default.
   *     HIDDEN - List only hidden achievements.
   *     REVEALED - List only revealed achievements.
   *     UNLOCKED - List only unlocked achievements.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerAchievementListResponse> list(core.String playerId, {core.String language, core.int maxResults, core.String pageToken, core.String state, core.Map optParams}) {
    var url = "players/{playerId}/achievements";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (playerId == null) paramErrors.add("playerId is required");
    if (playerId != null) urlParams["playerId"] = playerId;
    if (state != null && !["ALL", "HIDDEN", "REVEALED", "UNLOCKED"].contains(state)) {
      paramErrors.add("Allowed values for state: ALL, HIDDEN, REVEALED, UNLOCKED");
    }
    if (state != null) queryParams["state"] = state;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlayerAchievementListResponse.fromJson(data));
  }

  /**
   * Sets the state of the achievement with the given ID to REVEALED for the currently authenticated player.
   *
   * [achievementId] - The ID of the achievement used by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementRevealResponse> reveal(core.String achievementId, {core.Map optParams}) {
    var url = "achievements/{achievementId}/reveal";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (achievementId == null) paramErrors.add("achievementId is required");
    if (achievementId != null) urlParams["achievementId"] = achievementId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AchievementRevealResponse.fromJson(data));
  }

  /**
   * Unlocks this achievement for the currently authenticated player.
   *
   * [achievementId] - The ID of the achievement used by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementUnlockResponse> unlock(core.String achievementId, {core.Map optParams}) {
    var url = "achievements/{achievementId}/unlock";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (achievementId == null) paramErrors.add("achievementId is required");
    if (achievementId != null) urlParams["achievementId"] = achievementId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AchievementUnlockResponse.fromJson(data));
  }
}

class ApplicationsResource_ {

  final Client _client;

  ApplicationsResource_(Client client) :
      _client = client;

  /**
   * Retrieves the metadata of the application with the given ID. If the requested application is not available for the specified platformType, the returned response will not include any instance data.
   *
   * [applicationId] - The application being requested.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [platformType] - Restrict application details returned to the specific platform.
   *   Allowed values:
   *     ANDROID - Retrieve applications that can be played on Android.
   *     IOS - Retrieve applications that can be played on iOS.
   *     WEB_APP - Retrieve applications that can be played on desktop web.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Application> get(core.String applicationId, {core.String language, core.String platformType, core.Map optParams}) {
    var url = "applications/{applicationId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (applicationId == null) paramErrors.add("applicationId is required");
    if (applicationId != null) urlParams["applicationId"] = applicationId;
    if (language != null) queryParams["language"] = language;
    if (platformType != null && !["ANDROID", "IOS", "WEB_APP"].contains(platformType)) {
      paramErrors.add("Allowed values for platformType: ANDROID, IOS, WEB_APP");
    }
    if (platformType != null) queryParams["platformType"] = platformType;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Application.fromJson(data));
  }

  /**
   * Indicate that the the currently authenticated user is playing your application.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> played({core.Map optParams}) {
    var url = "applications/played";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class LeaderboardsResource_ {

  final Client _client;

  LeaderboardsResource_(Client client) :
      _client = client;

  /**
   * Retrieves the metadata of the leaderboard with the given ID.
   *
   * [leaderboardId] - The ID of the leaderboard.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Leaderboard> get(core.String leaderboardId, {core.String language, core.Map optParams}) {
    var url = "leaderboards/{leaderboardId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Leaderboard.fromJson(data));
  }

  /**
   * Lists all the leaderboard metadata for your application.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of leaderboards to return in the response. For any response, the actual number of leaderboards returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LeaderboardListResponse> list({core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "leaderboards";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LeaderboardListResponse.fromJson(data));
  }
}

class PlayersResource_ {

  final Client _client;

  PlayersResource_(Client client) :
      _client = client;

  /**
   * Retrieves the Player resource with the given ID. To retrieve the player for the currently authenticated user, set playerId to me.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Player> get(core.String playerId, {core.Map optParams}) {
    var url = "players/{playerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (playerId == null) paramErrors.add("playerId is required");
    if (playerId != null) urlParams["playerId"] = playerId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Player.fromJson(data));
  }
}

class RevisionsResource_ {

  final Client _client;

  RevisionsResource_(Client client) :
      _client = client;

  /**
   * Checks whether the games client is out of date.
   *
   * [clientRevision] - The revision of the client SDK used by your application.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RevisionCheckResponse> check(core.String clientRevision, {core.Map optParams}) {
    var url = "revisions/check";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (clientRevision == null) paramErrors.add("clientRevision is required");
    if (clientRevision != null) queryParams["clientRevision"] = clientRevision;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RevisionCheckResponse.fromJson(data));
  }
}

class RoomsResource_ {

  final Client _client;

  RoomsResource_(Client client) :
      _client = client;

  /**
   * Create a room. For internal use by the Games SDK only. Calling this method directly is unsupported.
   *
   * [request] - RoomCreateRequest to send in this request
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> create(RoomCreateRequest request, {core.String language, core.Map optParams}) {
    var url = "rooms/create";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Room.fromJson(data));
  }

  /**
   * Decline an invitation to join a room. For internal use by the Games SDK only. Calling this method directly is unsupported.
   *
   * [roomId] - The ID of the room.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> decline(core.String roomId, {core.Map optParams}) {
    var url = "rooms/{roomId}/decline";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (roomId == null) paramErrors.add("roomId is required");
    if (roomId != null) urlParams["roomId"] = roomId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Room.fromJson(data));
  }

  /**
   * Dismiss an invitation to join a room. For internal use by the Games SDK only. Calling this method directly is unsupported.
   *
   * [roomId] - The ID of the room.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> dismiss(core.String roomId, {core.Map optParams}) {
    var url = "rooms/{roomId}/dismiss";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (roomId == null) paramErrors.add("roomId is required");
    if (roomId != null) urlParams["roomId"] = roomId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Get the data for a room.
   *
   * [roomId] - The ID of the room.
   *
   * [language] - Specify the preferred language to use to format room info.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> get(core.String roomId, {core.String language, core.Map optParams}) {
    var url = "rooms/{roomId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (roomId == null) paramErrors.add("roomId is required");
    if (roomId != null) urlParams["roomId"] = roomId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Room.fromJson(data));
  }

  /**
   * Join a room. For internal use by the Games SDK only. Calling this method directly is unsupported.
   *
   * [request] - RoomJoinRequest to send in this request
   *
   * [roomId] - The ID of the room.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> join(RoomJoinRequest request, core.String roomId, {core.Map optParams}) {
    var url = "rooms/{roomId}/join";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (roomId == null) paramErrors.add("roomId is required");
    if (roomId != null) urlParams["roomId"] = roomId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Room.fromJson(data));
  }

  /**
   * Leave a room. For internal use by the Games SDK only. Calling this method directly is unsupported.
   *
   * [request] - RoomLeaveRequest to send in this request
   *
   * [roomId] - The ID of the room.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> leave(RoomLeaveRequest request, core.String roomId, {core.Map optParams}) {
    var url = "rooms/{roomId}/leave";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (roomId == null) paramErrors.add("roomId is required");
    if (roomId != null) urlParams["roomId"] = roomId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Room.fromJson(data));
  }

  /**
   * Returns invitations to join rooms.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of rooms to return in the response, used for paging. For any response, the actual number of rooms to return may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 500
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RoomList> list({core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "rooms";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RoomList.fromJson(data));
  }

  /**
   * Updates sent by a client reporting the status of peers in a room. For internal use by the Games SDK only. Calling this method directly is unsupported.
   *
   * [request] - RoomP2PStatuses to send in this request
   *
   * [roomId] - The ID of the room.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RoomStatus> reportStatus(RoomP2PStatuses request, core.String roomId, {core.Map optParams}) {
    var url = "rooms/{roomId}/reportstatus";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (roomId == null) paramErrors.add("roomId is required");
    if (roomId != null) urlParams["roomId"] = roomId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new RoomStatus.fromJson(data));
  }
}

class ScoresResource_ {

  final Client _client;

  ScoresResource_(Client client) :
      _client = client;

  /**
   * Get high scores, and optionally ranks, in leaderboards for the currently authenticated player. For a specific time span, leaderboardId can be set to ALL to retrieve data for all leaderboards in a given time span.
NOTE: You cannot ask for 'ALL' leaderboards and 'ALL' timeSpans in the same request; only one parameter may be set to 'ALL'.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [leaderboardId] - The ID of the leaderboard. Can be set to 'ALL' to retrieve data for all leaderboards for this application.
   *
   * [timeSpan] - The time span for the scores and ranks you're requesting.
   *   Allowed values:
   *     ALL - Get the high scores for all time spans. If this is used, maxResults values will be ignored.
   *     ALL_TIME - Get the all time high score.
   *     DAILY - List the top scores for the current day.
   *     WEEKLY - List the top scores for the current week.
   *
   * [includeRankType] - The types of ranks to return. If the parameter is omitted, no ranks will be returned.
   *   Allowed values:
   *     ALL - Retrieve public and social ranks.
   *     PUBLIC - Retrieve public ranks, if the player is sharing their gameplay activity publicly.
   *     SOCIAL - Retrieve the social rank.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 25
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerLeaderboardScoreListResponse> get(core.String playerId, core.String leaderboardId, core.String timeSpan, {core.String includeRankType, core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "players/{playerId}/leaderboards/{leaderboardId}/scores/{timeSpan}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (includeRankType != null && !["ALL", "PUBLIC", "SOCIAL"].contains(includeRankType)) {
      paramErrors.add("Allowed values for includeRankType: ALL, PUBLIC, SOCIAL");
    }
    if (includeRankType != null) queryParams["includeRankType"] = includeRankType;
    if (language != null) queryParams["language"] = language;
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (playerId == null) paramErrors.add("playerId is required");
    if (playerId != null) urlParams["playerId"] = playerId;
    if (timeSpan == null) paramErrors.add("timeSpan is required");
    if (timeSpan != null && !["ALL", "ALL_TIME", "DAILY", "WEEKLY"].contains(timeSpan)) {
      paramErrors.add("Allowed values for timeSpan: ALL, ALL_TIME, DAILY, WEEKLY");
    }
    if (timeSpan != null) urlParams["timeSpan"] = timeSpan;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlayerLeaderboardScoreListResponse.fromJson(data));
  }

  /**
   * Lists the scores in a leaderboard, starting from the top.
   *
   * [leaderboardId] - The ID of the leaderboard.
   *
   * [collection] - The collection of scores you're requesting.
   *   Allowed values:
   *     PUBLIC - List all scores in the public leaderboard.
   *     SOCIAL - List only social scores.
   *
   * [timeSpan] - The time span for the scores and ranks you're requesting.
   *   Allowed values:
   *     ALL_TIME - List the all-time top scores.
   *     DAILY - List the top scores for the current day.
   *     WEEKLY - List the top scores for the current week.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 25
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LeaderboardScores> list(core.String leaderboardId, core.String collection, core.String timeSpan, {core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "leaderboards/{leaderboardId}/scores/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["PUBLIC", "SOCIAL"].contains(collection)) {
      paramErrors.add("Allowed values for collection: PUBLIC, SOCIAL");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (language != null) queryParams["language"] = language;
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (timeSpan == null) paramErrors.add("timeSpan is required");
    if (timeSpan != null && !["ALL_TIME", "DAILY", "WEEKLY"].contains(timeSpan)) {
      paramErrors.add("Allowed values for timeSpan: ALL_TIME, DAILY, WEEKLY");
    }
    if (timeSpan != null) queryParams["timeSpan"] = timeSpan;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LeaderboardScores.fromJson(data));
  }

  /**
   * Lists the scores in a leaderboard around (and including) a player's score.
   *
   * [leaderboardId] - The ID of the leaderboard.
   *
   * [collection] - The collection of scores you're requesting.
   *   Allowed values:
   *     PUBLIC - List all scores in the public leaderboard.
   *     SOCIAL - List only social scores.
   *
   * [timeSpan] - The time span for the scores and ranks you're requesting.
   *   Allowed values:
   *     ALL_TIME - List the all-time top scores.
   *     DAILY - List the top scores for the current day.
   *     WEEKLY - List the top scores for the current week.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of leaderboard scores to return in the response. For any response, the actual number of leaderboard scores returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 25
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [resultsAbove] - The preferred number of scores to return above the player's score. More scores may be returned if the player is at the bottom of the leaderboard; fewer may be returned if the player is at the top. Must be less than or equal to maxResults.
   *
   * [returnTopIfAbsent] - True if the top scores should be returned when the player is not in the leaderboard. Defaults to true.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LeaderboardScores> listWindow(core.String leaderboardId, core.String collection, core.String timeSpan, {core.String language, core.int maxResults, core.String pageToken, core.int resultsAbove, core.bool returnTopIfAbsent, core.Map optParams}) {
    var url = "leaderboards/{leaderboardId}/window/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["PUBLIC", "SOCIAL"].contains(collection)) {
      paramErrors.add("Allowed values for collection: PUBLIC, SOCIAL");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (language != null) queryParams["language"] = language;
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (resultsAbove != null) queryParams["resultsAbove"] = resultsAbove;
    if (returnTopIfAbsent != null) queryParams["returnTopIfAbsent"] = returnTopIfAbsent;
    if (timeSpan == null) paramErrors.add("timeSpan is required");
    if (timeSpan != null && !["ALL_TIME", "DAILY", "WEEKLY"].contains(timeSpan)) {
      paramErrors.add("Allowed values for timeSpan: ALL_TIME, DAILY, WEEKLY");
    }
    if (timeSpan != null) queryParams["timeSpan"] = timeSpan;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LeaderboardScores.fromJson(data));
  }

  /**
   * Submits a score to the specified leaderboard.
   *
   * [leaderboardId] - The ID of the leaderboard.
   *
   * [score] - The score you're submitting. The submitted score is ignored if it is worse than a previously submitted score, where worse depends on the leaderboard sort order. The meaning of the score value depends on the leaderboard format type. For fixed-point, the score represents the raw value. For time, the score represents elapsed time in milliseconds. For currency, the score represents a value in micro units.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerScoreResponse> submit(core.String leaderboardId, core.int score, {core.String language, core.Map optParams}) {
    var url = "leaderboards/{leaderboardId}/scores";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (score == null) paramErrors.add("score is required");
    if (score != null) queryParams["score"] = score;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlayerScoreResponse.fromJson(data));
  }

  /**
   * Submits multiple scores to leaderboards.
   *
   * [request] - PlayerScoreSubmissionList to send in this request
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerScoreListResponse> submitMultiple(PlayerScoreSubmissionList request, {core.String language, core.Map optParams}) {
    var url = "leaderboards/scores";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlayerScoreListResponse.fromJson(data));
  }
}

