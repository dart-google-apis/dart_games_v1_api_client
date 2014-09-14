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
   * Sets the steps for the currently authenticated player towards unlocking an achievement. If the steps parameter is less than the current number of steps that the player already gained for the achievement, the achievement is not modified.
   *
   * [achievementId] - The ID of the achievement used by this method.
   *
   * [steps] - The minimum value to set the steps to.
   *   Minimum: 1
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementSetStepsAtLeastResponse> setStepsAtLeast(core.String achievementId, core.int steps, {core.Map optParams}) {
    var url = "achievements/{achievementId}/setStepsAtLeast";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (achievementId == null) paramErrors.add("achievementId is required");
    if (achievementId != null) urlParams["achievementId"] = achievementId;
    if (steps == null) paramErrors.add("steps is required");
    if (steps != null) queryParams["steps"] = steps;
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
      .then((data) => new AchievementSetStepsAtLeastResponse.fromJson(data));
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

  /**
   * Updates multiple achievements for the currently authenticated player.
   *
   * [request] - AchievementUpdateMultipleRequest to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<AchievementUpdateMultipleResponse> updateMultiple(AchievementUpdateMultipleRequest request, {core.Map optParams}) {
    var url = "achievements/updateMultiple";
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
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new AchievementUpdateMultipleResponse.fromJson(data));
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

class EventsResource_ {

  final Client _client;

  EventsResource_(Client client) :
      _client = client;

  /**
   * Returns a list showing the current progress on events in this application for the currently authenticated user.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of events to return in the response, used for paging. For any response, the actual number of events to return may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerEventListResponse> listByPlayer({core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "events";
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
      .then((data) => new PlayerEventListResponse.fromJson(data));
  }

  /**
   * Returns a list of the event definitions in this application.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of event definitions to return in the response, used for paging. For any response, the actual number of event definitions to return may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EventDefinitionListResponse> listDefinitions({core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "eventDefinitions";
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
      .then((data) => new EventDefinitionListResponse.fromJson(data));
  }

  /**
   * Records a batch of changes to the number of times events have occurred for the currently authenticated user of this application.
   *
   * [request] - EventRecordRequest to send in this request
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<EventUpdateResponse> record(EventRecordRequest request, {core.String language, core.Map optParams}) {
    var url = "events";
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
      .then((data) => new EventUpdateResponse.fromJson(data));
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
   *   Maximum: 200
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

class MetagameResource_ {

  final Client _client;

  MetagameResource_(Client client) :
      _client = client;

  /**
   * Return the metagame configuration data for the calling application.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<MetagameConfig> getMetagameConfig({core.Map optParams}) {
    var url = "metagameConfig";
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
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new MetagameConfig.fromJson(data));
  }

  /**
   * List play data aggregated per category for the player corresponding to playerId.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [collection] - The collection of categories for which data will be returned.
   *   Allowed values:
   *     all - Retrieve data for all categories. This is the default.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of category resources to return in the response, used for paging. For any response, the actual number of category resources returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 100
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CategoryListResponse> listCategoriesByPlayer(core.String playerId, core.String collection, {core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "players/{playerId}/categories/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["all"].contains(collection)) {
      paramErrors.add("Allowed values for collection: all");
    }
    if (collection != null) urlParams["collection"] = collection;
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
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
      .then((data) => new CategoryListResponse.fromJson(data));
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
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Player> get(core.String playerId, {core.String language, core.Map optParams}) {
    var url = "players/{playerId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
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

  /**
   * Get the collection of players for the currently authenticated user.
   *
   * [collection] - Collection of players being retrieved
   *   Allowed values:
   *     playedWith - (DEPRECATED: please use played_with!) Retrieve a list of players you have played a multiplayer game (realtime or turn-based) with recently.
   *     played_with - Retrieve a list of players you have played a multiplayer game (realtime or turn-based) with recently.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of player resources to return in the response, used for paging. For any response, the actual number of player resources returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 15
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerListResponse> list(core.String collection, {core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "players/me/players/{collection}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (collection == null) paramErrors.add("collection is required");
    if (collection != null && !["playedWith", "played_with"].contains(collection)) {
      paramErrors.add("Allowed values for collection: playedWith, played_with");
    }
    if (collection != null) urlParams["collection"] = collection;
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
      .then((data) => new PlayerListResponse.fromJson(data));
  }
}

class PushtokensResource_ {

  final Client _client;

  PushtokensResource_(Client client) :
      _client = client;

  /**
   * Removes a push token for the current user and application. Removing a non-existent push token will report success.
   *
   * [request] - PushTokenId to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> remove(PushTokenId request, {core.Map optParams}) {
    var url = "pushtokens/remove";
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
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Registers a push token for the current user and application.
   *
   * [request] - PushToken to send in this request
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> update(PushToken request, {core.Map optParams}) {
    var url = "pushtokens";
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
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class QuestMilestonesResource_ {

  final Client _client;

  QuestMilestonesResource_(Client client) :
      _client = client;

  /**
   * Report that a reward for the milestone corresponding to milestoneId for the quest corresponding to questId has been claimed by the currently authorized user.
   *
   * [questId] - The ID of the quest.
   *
   * [milestoneId] - The ID of the milestone.
   *
   * [requestId] - A numeric ID to ensure that the request is handled correctly across retries. Your client application must generate this ID randomly.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> claim(core.String questId, core.String milestoneId, core.int requestId, {core.Map optParams}) {
    var url = "quests/{questId}/milestones/{milestoneId}/claim";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (milestoneId == null) paramErrors.add("milestoneId is required");
    if (milestoneId != null) urlParams["milestoneId"] = milestoneId;
    if (questId == null) paramErrors.add("questId is required");
    if (questId != null) urlParams["questId"] = questId;
    if (requestId == null) paramErrors.add("requestId is required");
    if (requestId != null) queryParams["requestId"] = requestId;
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
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class QuestsResource_ {

  final Client _client;

  QuestsResource_(Client client) :
      _client = client;

  /**
   * Indicates that the currently authorized user will participate in the quest.
   *
   * [questId] - The ID of the quest.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Quest> accept(core.String questId, {core.String language, core.Map optParams}) {
    var url = "quests/{questId}/accept";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (questId == null) paramErrors.add("questId is required");
    if (questId != null) urlParams["questId"] = questId;
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
      .then((data) => new Quest.fromJson(data));
  }

  /**
   * Get a list of quests for your application and the currently authenticated player.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of quest resources to return in the response, used for paging. For any response, the actual number of quest resources returned may be less than the specified maxResults. Acceptable values are 1 to 50, inclusive. (Default: 50).
   *   Minimum: 1
   *   Maximum: 50
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<QuestListResponse> list(core.String playerId, {core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "players/{playerId}/quests";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
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
      .then((data) => new QuestListResponse.fromJson(data));
  }
}

class RevisionsResource_ {

  final Client _client;

  RevisionsResource_(Client client) :
      _client = client;

  /**
   * Checks whether the games client is out of date.
   *
   * [clientRevision] - The revision of the client SDK used by your application. Format:
[PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:
 
- "ANDROID" - Client is running the Android SDK. 
- "IOS" - Client is running the iOS SDK. 
- "WEB_APP" - Client is running as a Web App.
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
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> decline(core.String roomId, {core.String language, core.Map optParams}) {
    var url = "rooms/{roomId}/decline";
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
   * [language] - The preferred language to use for strings returned by this method.
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
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> join(RoomJoinRequest request, core.String roomId, {core.String language, core.Map optParams}) {
    var url = "rooms/{roomId}/join";
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
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Room> leave(RoomLeaveRequest request, core.String roomId, {core.String language, core.Map optParams}) {
    var url = "rooms/{roomId}/leave";
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
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<RoomStatus> reportStatus(RoomP2PStatuses request, core.String roomId, {core.String language, core.Map optParams}) {
    var url = "rooms/{roomId}/reportstatus";
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
   * [scoreTag] - Additional information about the score you're submitting. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlayerScoreResponse> submit(core.String leaderboardId, core.int score, {core.String language, core.String scoreTag, core.Map optParams}) {
    var url = "leaderboards/{leaderboardId}/scores";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (leaderboardId == null) paramErrors.add("leaderboardId is required");
    if (leaderboardId != null) urlParams["leaderboardId"] = leaderboardId;
    if (score == null) paramErrors.add("score is required");
    if (score != null) queryParams["score"] = score;
    if (scoreTag != null) queryParams["scoreTag"] = scoreTag;
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

class SnapshotsResource_ {

  final Client _client;

  SnapshotsResource_(Client client) :
      _client = client;

  /**
   * Retrieves the metadata for a given snapshot ID.
   *
   * [snapshotId] - The ID of the snapshot.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Snapshot> get(core.String snapshotId, {core.String language, core.Map optParams}) {
    var url = "snapshots/{snapshotId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (snapshotId == null) paramErrors.add("snapshotId is required");
    if (snapshotId != null) urlParams["snapshotId"] = snapshotId;
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
      .then((data) => new Snapshot.fromJson(data));
  }

  /**
   * Retrieves a list of snapshots created by your application for the player corresponding to the player ID.
   *
   * [playerId] - A player ID. A value of me may be used in place of the authenticated player's ID.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxResults] - The maximum number of snapshot resources to return in the response, used for paging. For any response, the actual number of snapshot resources returned may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 25
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SnapshotListResponse> list(core.String playerId, {core.String language, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "players/{playerId}/snapshots";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
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
      .then((data) => new SnapshotListResponse.fromJson(data));
  }
}

class TurnBasedMatchesResource_ {

  final Client _client;

  TurnBasedMatchesResource_(Client client) :
      _client = client;

  /**
   * Cancel a turn-based match.
   *
   * [matchId] - The ID of the match.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> cancel(core.String matchId, {core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/cancel";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Create a turn-based match.
   *
   * [request] - TurnBasedMatchCreateRequest to send in this request
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> create(TurnBasedMatchCreateRequest request, {core.String language, core.Map optParams}) {
    var url = "turnbasedmatches/create";
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
      .then((data) => new TurnBasedMatch.fromJson(data));
  }

  /**
   * Decline an invitation to play a turn-based match.
   *
   * [matchId] - The ID of the match.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> decline(core.String matchId, {core.String language, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/decline";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TurnBasedMatch.fromJson(data));
  }

  /**
   * Dismiss a turn-based match from the match list. The match will no longer show up in the list and will not generate notifications.
   *
   * [matchId] - The ID of the match.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> dismiss(core.String matchId, {core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/dismiss";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Finish a turn-based match. Each player should make this call once, after all results are in. Only the player whose turn it is may make the first call to Finish, and can pass in the final match state.
   *
   * [request] - TurnBasedMatchResults to send in this request
   *
   * [matchId] - The ID of the match.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> finish(TurnBasedMatchResults request, core.String matchId, {core.String language, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/finish";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TurnBasedMatch.fromJson(data));
  }

  /**
   * Get the data for a turn-based match.
   *
   * [matchId] - The ID of the match.
   *
   * [includeMatchData] - Get match data along with metadata.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> get(core.String matchId, {core.bool includeMatchData, core.String language, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (includeMatchData != null) queryParams["includeMatchData"] = includeMatchData;
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
      .then((data) => new TurnBasedMatch.fromJson(data));
  }

  /**
   * Join a turn-based match.
   *
   * [matchId] - The ID of the match.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> join(core.String matchId, {core.String language, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/join";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TurnBasedMatch.fromJson(data));
  }

  /**
   * Leave a turn-based match when it is not the current player's turn, without canceling the match.
   *
   * [matchId] - The ID of the match.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> leave(core.String matchId, {core.String language, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/leave";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TurnBasedMatch.fromJson(data));
  }

  /**
   * Leave a turn-based match during the current player's turn, without canceling the match.
   *
   * [matchId] - The ID of the match.
   *
   * [matchVersion] - The version of the match being updated.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [pendingParticipantId] - The ID of another participant who should take their turn next. If not set, the match will wait for other player(s) to join via automatching; this is only valid if automatch criteria is set on the match with remaining slots for automatched players.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> leaveTurn(core.String matchId, core.int matchVersion, {core.String language, core.String pendingParticipantId, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/leaveTurn";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
    if (matchVersion == null) paramErrors.add("matchVersion is required");
    if (matchVersion != null) queryParams["matchVersion"] = matchVersion;
    if (pendingParticipantId != null) queryParams["pendingParticipantId"] = pendingParticipantId;
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
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TurnBasedMatch.fromJson(data));
  }

  /**
   * Returns turn-based matches the player is or was involved in.
   *
   * [includeMatchData] - True if match data should be returned in the response. Note that not all data will necessarily be returned if include_match_data is true; the server may decide to only return data for some of the matches to limit download size for the client. The remainder of the data for these matches will be retrievable on request.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxCompletedMatches] - The maximum number of completed or canceled matches to return in the response. If not set, all matches returned could be completed or canceled.
   *   Minimum: 0
   *   Maximum: 500
   *
   * [maxResults] - The maximum number of matches to return in the response, used for paging. For any response, the actual number of matches to return may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 500
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatchList> list({core.bool includeMatchData, core.String language, core.int maxCompletedMatches, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "turnbasedmatches";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (includeMatchData != null) queryParams["includeMatchData"] = includeMatchData;
    if (language != null) queryParams["language"] = language;
    if (maxCompletedMatches != null) queryParams["maxCompletedMatches"] = maxCompletedMatches;
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
      .then((data) => new TurnBasedMatchList.fromJson(data));
  }

  /**
   * Create a rematch of a match that was previously completed, with the same participants. This can be called by only one player on a match still in their list; the player must have called Finish first. Returns the newly created match; it will be the caller's turn.
   *
   * [matchId] - The ID of the match.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [requestId] - A randomly generated numeric ID for each request specified by the caller. This number is used at the server to ensure that the request is handled correctly across retries.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatchRematch> rematch(core.String matchId, {core.String language, core.int requestId, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/rematch";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
    if (requestId != null) queryParams["requestId"] = requestId;
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
      .then((data) => new TurnBasedMatchRematch.fromJson(data));
  }

  /**
   * Returns turn-based matches the player is or was involved in that changed since the last sync call, with the least recent changes coming first. Matches that should be removed from the local cache will have a status of MATCH_DELETED.
   *
   * [includeMatchData] - True if match data should be returned in the response. Note that not all data will necessarily be returned if include_match_data is true; the server may decide to only return data for some of the matches to limit download size for the client. The remainder of the data for these matches will be retrievable on request.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [maxCompletedMatches] - The maximum number of completed or canceled matches to return in the response. If not set, all matches returned could be completed or canceled.
   *   Minimum: 0
   *   Maximum: 500
   *
   * [maxResults] - The maximum number of matches to return in the response, used for paging. For any response, the actual number of matches to return may be less than the specified maxResults.
   *   Minimum: 1
   *   Maximum: 500
   *
   * [pageToken] - The token returned by the previous request.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatchSync> sync({core.bool includeMatchData, core.String language, core.int maxCompletedMatches, core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "turnbasedmatches/sync";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (includeMatchData != null) queryParams["includeMatchData"] = includeMatchData;
    if (language != null) queryParams["language"] = language;
    if (maxCompletedMatches != null) queryParams["maxCompletedMatches"] = maxCompletedMatches;
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
      .then((data) => new TurnBasedMatchSync.fromJson(data));
  }

  /**
   * Commit the results of a player turn.
   *
   * [request] - TurnBasedMatchTurn to send in this request
   *
   * [matchId] - The ID of the match.
   *
   * [language] - The preferred language to use for strings returned by this method.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<TurnBasedMatch> takeTurn(TurnBasedMatchTurn request, core.String matchId, {core.String language, core.Map optParams}) {
    var url = "turnbasedmatches/{matchId}/turn";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (language != null) queryParams["language"] = language;
    if (matchId == null) paramErrors.add("matchId is required");
    if (matchId != null) urlParams["matchId"] = matchId;
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
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new TurnBasedMatch.fromJson(data));
  }
}

