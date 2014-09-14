part of games_v1_api;

abstract class Client extends ClientBase {
  core.String basePath = "/games/v1/";
  core.String rootUrl = "https://www.googleapis.com/";

  //
  // Resources
  //

  AchievementDefinitionsResource_ get achievementDefinitions => new AchievementDefinitionsResource_(this);
  AchievementsResource_ get achievements => new AchievementsResource_(this);
  ApplicationsResource_ get applications => new ApplicationsResource_(this);
  EventsResource_ get events => new EventsResource_(this);
  LeaderboardsResource_ get leaderboards => new LeaderboardsResource_(this);
  MetagameResource_ get metagame => new MetagameResource_(this);
  PlayersResource_ get players => new PlayersResource_(this);
  PushtokensResource_ get pushtokens => new PushtokensResource_(this);
  QuestMilestonesResource_ get questMilestones => new QuestMilestonesResource_(this);
  QuestsResource_ get quests => new QuestsResource_(this);
  RevisionsResource_ get revisions => new RevisionsResource_(this);
  RoomsResource_ get rooms => new RoomsResource_(this);
  ScoresResource_ get scores => new ScoresResource_(this);
  SnapshotsResource_ get snapshots => new SnapshotsResource_(this);
  TurnBasedMatchesResource_ get turnBasedMatches => new TurnBasedMatchesResource_(this);

  //
  // Parameters
  //

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;
}
