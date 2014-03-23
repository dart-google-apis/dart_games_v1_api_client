part of games_v1_api;

/** This is a JSON template for an achievement definition object. */
class AchievementDefinition {

  /** The type of the achievement.
Possible values are:  
- "STANDARD" - Achievement is either locked or unlocked. 
- "INCREMENTAL" - Achievement is incremental. */
  core.String achievementType;

  /** The description of the achievement. */
  core.String description;

  /** The total steps for an incremental achievement as a string. */
  core.String formattedTotalSteps;

  /** The ID of the achievement. */
  core.String id;

  /** The initial state of the achievement.
Possible values are:  
- "HIDDEN" - Achievement is hidden. 
- "REVEALED" - Achievement is revealed. 
- "UNLOCKED" - Achievement is unlocked. */
  core.String initialState;

  /** Indicates whether the revealed icon image being returned is a default image, or is provided by the game. */
  core.bool isRevealedIconUrlDefault;

  /** Indicates whether the unlocked icon image being returned is a default image, or is game-provided. */
  core.bool isUnlockedIconUrlDefault;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementDefinition. */
  core.String kind;

  /** The name of the achievement. */
  core.String name;

  /** The image URL for the revealed achievement icon. */
  core.String revealedIconUrl;

  /** The total steps for an incremental achievement. */
  core.int totalSteps;

  /** The image URL for the unlocked achievement icon. */
  core.String unlockedIconUrl;

  /** Create new AchievementDefinition from JSON data */
  AchievementDefinition.fromJson(core.Map json) {
    if (json.containsKey("achievementType")) {
      achievementType = json["achievementType"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("formattedTotalSteps")) {
      formattedTotalSteps = json["formattedTotalSteps"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("initialState")) {
      initialState = json["initialState"];
    }
    if (json.containsKey("isRevealedIconUrlDefault")) {
      isRevealedIconUrlDefault = json["isRevealedIconUrlDefault"];
    }
    if (json.containsKey("isUnlockedIconUrlDefault")) {
      isUnlockedIconUrlDefault = json["isUnlockedIconUrlDefault"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("revealedIconUrl")) {
      revealedIconUrl = json["revealedIconUrl"];
    }
    if (json.containsKey("totalSteps")) {
      totalSteps = json["totalSteps"];
    }
    if (json.containsKey("unlockedIconUrl")) {
      unlockedIconUrl = json["unlockedIconUrl"];
    }
  }

  /** Create JSON Object for AchievementDefinition */
  core.Map toJson() {
    var output = new core.Map();

    if (achievementType != null) {
      output["achievementType"] = achievementType;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (formattedTotalSteps != null) {
      output["formattedTotalSteps"] = formattedTotalSteps;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (initialState != null) {
      output["initialState"] = initialState;
    }
    if (isRevealedIconUrlDefault != null) {
      output["isRevealedIconUrlDefault"] = isRevealedIconUrlDefault;
    }
    if (isUnlockedIconUrlDefault != null) {
      output["isUnlockedIconUrlDefault"] = isUnlockedIconUrlDefault;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (revealedIconUrl != null) {
      output["revealedIconUrl"] = revealedIconUrl;
    }
    if (totalSteps != null) {
      output["totalSteps"] = totalSteps;
    }
    if (unlockedIconUrl != null) {
      output["unlockedIconUrl"] = unlockedIconUrl;
    }

    return output;
  }

  /** Return String representation of AchievementDefinition */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of achievement definition objects. */
class AchievementDefinitionsListResponse {

  /** The achievement definitions. */
  core.List<AchievementDefinition> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementDefinitionsListResponse. */
  core.String kind;

  /** Token corresponding to the next page of results. */
  core.String nextPageToken;

  /** Create new AchievementDefinitionsListResponse from JSON data */
  AchievementDefinitionsListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new AchievementDefinition.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for AchievementDefinitionsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of AchievementDefinitionsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement increment response */
class AchievementIncrementResponse {

  /** The current steps recorded for this incremental achievement. */
  core.int currentSteps;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementIncrementResponse. */
  core.String kind;

  /** Whether the the current steps for the achievement has reached the number of steps required to unlock. */
  core.bool newlyUnlocked;

  /** Create new AchievementIncrementResponse from JSON data */
  AchievementIncrementResponse.fromJson(core.Map json) {
    if (json.containsKey("currentSteps")) {
      currentSteps = json["currentSteps"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("newlyUnlocked")) {
      newlyUnlocked = json["newlyUnlocked"];
    }
  }

  /** Create JSON Object for AchievementIncrementResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (currentSteps != null) {
      output["currentSteps"] = currentSteps;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (newlyUnlocked != null) {
      output["newlyUnlocked"] = newlyUnlocked;
    }

    return output;
  }

  /** Return String representation of AchievementIncrementResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement reveal response */
class AchievementRevealResponse {

  /** The current state of the achievement for which a reveal was attempted. This might be UNLOCKED if the achievement was already unlocked.
Possible values are:  
- "REVEALED" - Achievement is revealed. 
- "UNLOCKED" - Achievement is unlocked. */
  core.String currentState;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementRevealResponse. */
  core.String kind;

  /** Create new AchievementRevealResponse from JSON data */
  AchievementRevealResponse.fromJson(core.Map json) {
    if (json.containsKey("currentState")) {
      currentState = json["currentState"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AchievementRevealResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (currentState != null) {
      output["currentState"] = currentState;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AchievementRevealResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement set steps at least response. */
class AchievementSetStepsAtLeastResponse {

  /** The current steps recorded for this incremental achievement. */
  core.int currentSteps;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementSetStepsAtLeastResponse. */
  core.String kind;

  /** Whether the the current steps for the achievement has reached the number of steps required to unlock. */
  core.bool newlyUnlocked;

  /** Create new AchievementSetStepsAtLeastResponse from JSON data */
  AchievementSetStepsAtLeastResponse.fromJson(core.Map json) {
    if (json.containsKey("currentSteps")) {
      currentSteps = json["currentSteps"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("newlyUnlocked")) {
      newlyUnlocked = json["newlyUnlocked"];
    }
  }

  /** Create JSON Object for AchievementSetStepsAtLeastResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (currentSteps != null) {
      output["currentSteps"] = currentSteps;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (newlyUnlocked != null) {
      output["newlyUnlocked"] = newlyUnlocked;
    }

    return output;
  }

  /** Return String representation of AchievementSetStepsAtLeastResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement unlock response */
class AchievementUnlockResponse {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementUnlockResponse. */
  core.String kind;

  /** Whether this achievement was newly unlocked (that is, whether the unlock request for the achievement was the first for the player). */
  core.bool newlyUnlocked;

  /** Create new AchievementUnlockResponse from JSON data */
  AchievementUnlockResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("newlyUnlocked")) {
      newlyUnlocked = json["newlyUnlocked"];
    }
  }

  /** Create JSON Object for AchievementUnlockResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (newlyUnlocked != null) {
      output["newlyUnlocked"] = newlyUnlocked;
    }

    return output;
  }

  /** Return String representation of AchievementUnlockResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of achievement update requests. */
class AchievementUpdateMultipleRequest {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementUpdateMultipleRequest. */
  core.String kind;

  /** The individual achievement update requests. */
  core.List<AchievementUpdateRequest> updates;

  /** Create new AchievementUpdateMultipleRequest from JSON data */
  AchievementUpdateMultipleRequest.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("updates")) {
      updates = json["updates"].map((updatesItem) => new AchievementUpdateRequest.fromJson(updatesItem)).toList();
    }
  }

  /** Create JSON Object for AchievementUpdateMultipleRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (updates != null) {
      output["updates"] = updates.map((updatesItem) => updatesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AchievementUpdateMultipleRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement unlock response. */
class AchievementUpdateMultipleResponse {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementUpdateListResponse. */
  core.String kind;

  /** The updated state of the achievements. */
  core.List<AchievementUpdateResponse> updatedAchievements;

  /** Create new AchievementUpdateMultipleResponse from JSON data */
  AchievementUpdateMultipleResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("updatedAchievements")) {
      updatedAchievements = json["updatedAchievements"].map((updatedAchievementsItem) => new AchievementUpdateResponse.fromJson(updatedAchievementsItem)).toList();
    }
  }

  /** Create JSON Object for AchievementUpdateMultipleResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (updatedAchievements != null) {
      output["updatedAchievements"] = updatedAchievements.map((updatedAchievementsItem) => updatedAchievementsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of AchievementUpdateMultipleResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a request to update an achievement. */
class AchievementUpdateRequest {

  /** The achievement this update is being applied to. */
  core.String achievementId;

  /** The payload if an update of type INCREMENT was requested for the achievement. */
  GamesAchievementIncrement incrementPayload;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementUpdateRequest. */
  core.String kind;

  /** The payload if an update of type SET_STEPS_AT_LEAST was requested for the achievement. */
  GamesAchievementSetStepsAtLeast setStepsAtLeastPayload;

  /** The type of update being applied.
Possible values are:  
- "REVEAL" - Achievement is revealed. 
- "UNLOCK" - Achievement is unlocked. 
- "INCREMENT" - Achievement is incremented. 
- "SET_STEPS_AT_LEAST" - Achievement progress is set to at least the passed value. */
  core.String updateType;

  /** Create new AchievementUpdateRequest from JSON data */
  AchievementUpdateRequest.fromJson(core.Map json) {
    if (json.containsKey("achievementId")) {
      achievementId = json["achievementId"];
    }
    if (json.containsKey("incrementPayload")) {
      incrementPayload = new GamesAchievementIncrement.fromJson(json["incrementPayload"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("setStepsAtLeastPayload")) {
      setStepsAtLeastPayload = new GamesAchievementSetStepsAtLeast.fromJson(json["setStepsAtLeastPayload"]);
    }
    if (json.containsKey("updateType")) {
      updateType = json["updateType"];
    }
  }

  /** Create JSON Object for AchievementUpdateRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (achievementId != null) {
      output["achievementId"] = achievementId;
    }
    if (incrementPayload != null) {
      output["incrementPayload"] = incrementPayload.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (setStepsAtLeastPayload != null) {
      output["setStepsAtLeastPayload"] = setStepsAtLeastPayload.toJson();
    }
    if (updateType != null) {
      output["updateType"] = updateType;
    }

    return output;
  }

  /** Return String representation of AchievementUpdateRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement update response. */
class AchievementUpdateResponse {

  /** The achievement this update is was applied to. */
  core.String achievementId;

  /** The current state of the achievement.
Possible values are:  
- "HIDDEN" - Achievement is hidden. 
- "REVEALED" - Achievement is revealed. 
- "UNLOCKED" - Achievement is unlocked. */
  core.String currentState;

  /** The current steps recorded for this achievement if it is incremental. */
  core.int currentSteps;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#achievementUpdateResponse. */
  core.String kind;

  /** Whether this achievement was newly unlocked (that is, whether the unlock request for the achievement was the first for the player). */
  core.bool newlyUnlocked;

  /** Whether the requested updates actually affected the achievement. */
  core.bool updateOccurred;

  /** Create new AchievementUpdateResponse from JSON data */
  AchievementUpdateResponse.fromJson(core.Map json) {
    if (json.containsKey("achievementId")) {
      achievementId = json["achievementId"];
    }
    if (json.containsKey("currentState")) {
      currentState = json["currentState"];
    }
    if (json.containsKey("currentSteps")) {
      currentSteps = json["currentSteps"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("newlyUnlocked")) {
      newlyUnlocked = json["newlyUnlocked"];
    }
    if (json.containsKey("updateOccurred")) {
      updateOccurred = json["updateOccurred"];
    }
  }

  /** Create JSON Object for AchievementUpdateResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (achievementId != null) {
      output["achievementId"] = achievementId;
    }
    if (currentState != null) {
      output["currentState"] = currentState;
    }
    if (currentSteps != null) {
      output["currentSteps"] = currentSteps;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (newlyUnlocked != null) {
      output["newlyUnlocked"] = newlyUnlocked;
    }
    if (updateOccurred != null) {
      output["updateOccurred"] = updateOccurred;
    }

    return output;
  }

  /** Return String representation of AchievementUpdateResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for aggregate stats. */
class AggregateStats {

  /** The number of messages sent between a pair of peers. */
  core.int count;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#aggregateStats. */
  core.String kind;

  /** The maximum amount. */
  core.int max;

  /** The minimum amount. */
  core.int min;

  /** The total number of bytes sent for messages between a pair of peers. */
  core.int sum;

  /** Create new AggregateStats from JSON data */
  AggregateStats.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("max")) {
      max = (json["max"] is core.String) ? core.int.parse(json["max"]) : json["max"];
    }
    if (json.containsKey("min")) {
      min = (json["min"] is core.String) ? core.int.parse(json["min"]) : json["min"];
    }
    if (json.containsKey("sum")) {
      sum = (json["sum"] is core.String) ? core.int.parse(json["sum"]) : json["sum"];
    }
  }

  /** Create JSON Object for AggregateStats */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (max != null) {
      output["max"] = max;
    }
    if (min != null) {
      output["min"] = min;
    }
    if (sum != null) {
      output["sum"] = sum;
    }

    return output;
  }

  /** Return String representation of AggregateStats */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an anonymous player */
class AnonymousPlayer {

  /** The base URL for the image to display for the anonymous player. */
  core.String avatarImageUrl;

  /** The name to display for the anonymous player. */
  core.String displayName;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#anonymousPlayer. */
  core.String kind;

  /** Create new AnonymousPlayer from JSON data */
  AnonymousPlayer.fromJson(core.Map json) {
    if (json.containsKey("avatarImageUrl")) {
      avatarImageUrl = json["avatarImageUrl"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for AnonymousPlayer */
  core.Map toJson() {
    var output = new core.Map();

    if (avatarImageUrl != null) {
      output["avatarImageUrl"] = avatarImageUrl;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of AnonymousPlayer */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the Application resource. */
class Application {

  /** The number of achievements visible to the currently authenticated player. */
  core.int achievement_count;

  /** The assets of the application. */
  core.List<ImageAsset> assets;

  /** The author of the application. */
  core.String author;

  /** The category of the application. */
  ApplicationCategory category;

  /** The description of the application. */
  core.String description;

  /** The ID of the application. */
  core.String id;

  /** The instances of the application. */
  core.List<Instance> instances;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#application. */
  core.String kind;

  /** The last updated timestamp of the application. */
  core.int lastUpdatedTimestamp;

  /** The number of leaderboards visible to the currently authenticated player. */
  core.int leaderboard_count;

  /** The name of the application. */
  core.String name;

  /** Create new Application from JSON data */
  Application.fromJson(core.Map json) {
    if (json.containsKey("achievement_count")) {
      achievement_count = json["achievement_count"];
    }
    if (json.containsKey("assets")) {
      assets = json["assets"].map((assetsItem) => new ImageAsset.fromJson(assetsItem)).toList();
    }
    if (json.containsKey("author")) {
      author = json["author"];
    }
    if (json.containsKey("category")) {
      category = new ApplicationCategory.fromJson(json["category"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("instances")) {
      instances = json["instances"].map((instancesItem) => new Instance.fromJson(instancesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastUpdatedTimestamp")) {
      lastUpdatedTimestamp = (json["lastUpdatedTimestamp"] is core.String) ? core.int.parse(json["lastUpdatedTimestamp"]) : json["lastUpdatedTimestamp"];
    }
    if (json.containsKey("leaderboard_count")) {
      leaderboard_count = json["leaderboard_count"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Application */
  core.Map toJson() {
    var output = new core.Map();

    if (achievement_count != null) {
      output["achievement_count"] = achievement_count;
    }
    if (assets != null) {
      output["assets"] = assets.map((assetsItem) => assetsItem.toJson()).toList();
    }
    if (author != null) {
      output["author"] = author;
    }
    if (category != null) {
      output["category"] = category.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (instances != null) {
      output["instances"] = instances.map((instancesItem) => instancesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastUpdatedTimestamp != null) {
      output["lastUpdatedTimestamp"] = lastUpdatedTimestamp;
    }
    if (leaderboard_count != null) {
      output["leaderboard_count"] = leaderboard_count;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Application */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an application category object. */
class ApplicationCategory {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#applicationCategory. */
  core.String kind;

  /** The primary category. */
  core.String primary;

  /** The secondary category. */
  core.String secondary;

  /** Create new ApplicationCategory from JSON data */
  ApplicationCategory.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("primary")) {
      primary = json["primary"];
    }
    if (json.containsKey("secondary")) {
      secondary = json["secondary"];
    }
  }

  /** Create JSON Object for ApplicationCategory */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (primary != null) {
      output["primary"] = primary;
    }
    if (secondary != null) {
      output["secondary"] = secondary;
    }

    return output;
  }

  /** Return String representation of ApplicationCategory */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the payload to request to increment an achievement. */
class GamesAchievementIncrement {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#GamesAchievementIncrement. */
  core.String kind;

  /** The requestId associated with an increment to an achievement. */
  core.int requestId;

  /** The number of steps to be incremented. */
  core.int steps;

  /** Create new GamesAchievementIncrement from JSON data */
  GamesAchievementIncrement.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("requestId")) {
      requestId = (json["requestId"] is core.String) ? core.int.parse(json["requestId"]) : json["requestId"];
    }
    if (json.containsKey("steps")) {
      steps = json["steps"];
    }
  }

  /** Create JSON Object for GamesAchievementIncrement */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (requestId != null) {
      output["requestId"] = requestId;
    }
    if (steps != null) {
      output["steps"] = steps;
    }

    return output;
  }

  /** Return String representation of GamesAchievementIncrement */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the payload to request to increment an achievement. */
class GamesAchievementSetStepsAtLeast {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#GamesAchievementSetStepsAtLeast. */
  core.String kind;

  /** The minimum number of steps for the achievement to be set to. */
  core.int steps;

  /** Create new GamesAchievementSetStepsAtLeast from JSON data */
  GamesAchievementSetStepsAtLeast.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("steps")) {
      steps = json["steps"];
    }
  }

  /** Create JSON Object for GamesAchievementSetStepsAtLeast */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (steps != null) {
      output["steps"] = steps;
    }

    return output;
  }

  /** Return String representation of GamesAchievementSetStepsAtLeast */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an image asset object. */
class ImageAsset {

  /** The height of the asset. */
  core.int height;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#imageAsset. */
  core.String kind;

  /** The name of the asset. */
  core.String name;

  /** The URL of the asset. */
  core.String url;

  /** The width of the asset. */
  core.int width;

  /** Create new ImageAsset from JSON data */
  ImageAsset.fromJson(core.Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for ImageAsset */
  core.Map toJson() {
    var output = new core.Map();

    if (height != null) {
      output["height"] = height;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of ImageAsset */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the Instance resource. */
class Instance {

  /** URI which shows where a user can acquire this instance. */
  core.String acquisitionUri;

  /** Platform dependent details for Android. */
  InstanceAndroidDetails androidInstance;

  /** Platform dependent details for iOS. */
  InstanceIosDetails iosInstance;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#instance. */
  core.String kind;

  /** Localized display name. */
  core.String name;

  /** The platform type.
Possible values are:  
- "ANDROID" - Instance is for Android. 
- "IOS" - Instance is for iOS 
- "WEB_APP" - Instance is for Web App. */
  core.String platformType;

  /** Flag to show if this game instance supports realtime play. */
  core.bool realtimePlay;

  /** Flag to show if this game instance supports turn based play. */
  core.bool turnBasedPlay;

  /** Platform dependent details for Web. */
  InstanceWebDetails webInstance;

  /** Create new Instance from JSON data */
  Instance.fromJson(core.Map json) {
    if (json.containsKey("acquisitionUri")) {
      acquisitionUri = json["acquisitionUri"];
    }
    if (json.containsKey("androidInstance")) {
      androidInstance = new InstanceAndroidDetails.fromJson(json["androidInstance"]);
    }
    if (json.containsKey("iosInstance")) {
      iosInstance = new InstanceIosDetails.fromJson(json["iosInstance"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("platformType")) {
      platformType = json["platformType"];
    }
    if (json.containsKey("realtimePlay")) {
      realtimePlay = json["realtimePlay"];
    }
    if (json.containsKey("turnBasedPlay")) {
      turnBasedPlay = json["turnBasedPlay"];
    }
    if (json.containsKey("webInstance")) {
      webInstance = new InstanceWebDetails.fromJson(json["webInstance"]);
    }
  }

  /** Create JSON Object for Instance */
  core.Map toJson() {
    var output = new core.Map();

    if (acquisitionUri != null) {
      output["acquisitionUri"] = acquisitionUri;
    }
    if (androidInstance != null) {
      output["androidInstance"] = androidInstance.toJson();
    }
    if (iosInstance != null) {
      output["iosInstance"] = iosInstance.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (platformType != null) {
      output["platformType"] = platformType;
    }
    if (realtimePlay != null) {
      output["realtimePlay"] = realtimePlay;
    }
    if (turnBasedPlay != null) {
      output["turnBasedPlay"] = turnBasedPlay;
    }
    if (webInstance != null) {
      output["webInstance"] = webInstance.toJson();
    }

    return output;
  }

  /** Return String representation of Instance */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the Android instance details resource. */
class InstanceAndroidDetails {

  /** Flag indicating whether the anti-piracy check is enabled. */
  core.bool enablePiracyCheck;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#instanceAndroidDetails. */
  core.String kind;

  /** Android package name which maps to Google Play URL. */
  core.String packageName;

  /** Indicates that this instance is the default for new installations. */
  core.bool preferred;

  /** Create new InstanceAndroidDetails from JSON data */
  InstanceAndroidDetails.fromJson(core.Map json) {
    if (json.containsKey("enablePiracyCheck")) {
      enablePiracyCheck = json["enablePiracyCheck"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("packageName")) {
      packageName = json["packageName"];
    }
    if (json.containsKey("preferred")) {
      preferred = json["preferred"];
    }
  }

  /** Create JSON Object for InstanceAndroidDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (enablePiracyCheck != null) {
      output["enablePiracyCheck"] = enablePiracyCheck;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (packageName != null) {
      output["packageName"] = packageName;
    }
    if (preferred != null) {
      output["preferred"] = preferred;
    }

    return output;
  }

  /** Return String representation of InstanceAndroidDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the iOS details resource. */
class InstanceIosDetails {

  /** Bundle identifier. */
  core.String bundleIdentifier;

  /** iTunes App ID. */
  core.String itunesAppId;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#instanceIosDetails. */
  core.String kind;

  /** Indicates that this instance is the default for new installations on iPad devices. */
  core.bool preferredForIpad;

  /** Indicates that this instance is the default for new installations on iPhone devices. */
  core.bool preferredForIphone;

  /** Flag to indicate if this instance supports iPad. */
  core.bool supportIpad;

  /** Flag to indicate if this instance supports iPhone. */
  core.bool supportIphone;

  /** Create new InstanceIosDetails from JSON data */
  InstanceIosDetails.fromJson(core.Map json) {
    if (json.containsKey("bundleIdentifier")) {
      bundleIdentifier = json["bundleIdentifier"];
    }
    if (json.containsKey("itunesAppId")) {
      itunesAppId = json["itunesAppId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("preferredForIpad")) {
      preferredForIpad = json["preferredForIpad"];
    }
    if (json.containsKey("preferredForIphone")) {
      preferredForIphone = json["preferredForIphone"];
    }
    if (json.containsKey("supportIpad")) {
      supportIpad = json["supportIpad"];
    }
    if (json.containsKey("supportIphone")) {
      supportIphone = json["supportIphone"];
    }
  }

  /** Create JSON Object for InstanceIosDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (bundleIdentifier != null) {
      output["bundleIdentifier"] = bundleIdentifier;
    }
    if (itunesAppId != null) {
      output["itunesAppId"] = itunesAppId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (preferredForIpad != null) {
      output["preferredForIpad"] = preferredForIpad;
    }
    if (preferredForIphone != null) {
      output["preferredForIphone"] = preferredForIphone;
    }
    if (supportIpad != null) {
      output["supportIpad"] = supportIpad;
    }
    if (supportIphone != null) {
      output["supportIphone"] = supportIphone;
    }

    return output;
  }

  /** Return String representation of InstanceIosDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the Web details resource. */
class InstanceWebDetails {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#instanceWebDetails. */
  core.String kind;

  /** Launch URL for the game. */
  core.String launchUrl;

  /** Indicates that this instance is the default for new installations. */
  core.bool preferred;

  /** Create new InstanceWebDetails from JSON data */
  InstanceWebDetails.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("launchUrl")) {
      launchUrl = json["launchUrl"];
    }
    if (json.containsKey("preferred")) {
      preferred = json["preferred"];
    }
  }

  /** Create JSON Object for InstanceWebDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (launchUrl != null) {
      output["launchUrl"] = launchUrl;
    }
    if (preferred != null) {
      output["preferred"] = preferred;
    }

    return output;
  }

  /** Return String representation of InstanceWebDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the Leaderboard resource. */
class Leaderboard {

  /** The icon for the leaderboard. */
  core.String iconUrl;

  /** The leaderboard ID. */
  core.String id;

  /** Indicates whether the icon image being returned is a default image, or is game-provided. */
  core.bool isIconUrlDefault;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#leaderboard. */
  core.String kind;

  /** The name of the leaderboard. */
  core.String name;

  /** How scores are ordered.
Possible values are:  
- "LARGER_IS_BETTER" - Larger values are better; scores are sorted in descending order. 
- "SMALLER_IS_BETTER" - Smaller values are better; scores are sorted in ascending order. */
  core.String order;

  /** Create new Leaderboard from JSON data */
  Leaderboard.fromJson(core.Map json) {
    if (json.containsKey("iconUrl")) {
      iconUrl = json["iconUrl"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("isIconUrlDefault")) {
      isIconUrlDefault = json["isIconUrlDefault"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("order")) {
      order = json["order"];
    }
  }

  /** Create JSON Object for Leaderboard */
  core.Map toJson() {
    var output = new core.Map();

    if (iconUrl != null) {
      output["iconUrl"] = iconUrl;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (isIconUrlDefault != null) {
      output["isIconUrlDefault"] = isIconUrlDefault;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (order != null) {
      output["order"] = order;
    }

    return output;
  }

  /** Return String representation of Leaderboard */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the Leaderboard Entry resource. */
class LeaderboardEntry {

  /** The localized string for the numerical value of this score. */
  core.String formattedScore;

  /** The localized string for the rank of this score for this leaderboard. */
  core.String formattedScoreRank;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#leaderboardEntry. */
  core.String kind;

  /** The player who holds this score. */
  Player player;

  /** The rank of this score for this leaderboard. */
  core.int scoreRank;

  /** Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986. */
  core.String scoreTag;

  /** The numerical value of this score. */
  core.int scoreValue;

  /** The time span of this high score.
Possible values are:  
- "ALL_TIME" - The score is an all-time high score. 
- "WEEKLY" - The score is a weekly high score. 
- "DAILY" - The score is a daily high score. */
  core.String timeSpan;

  /** The timestamp at which this score was recorded, in milliseconds since the epoch in UTC. */
  core.int writeTimestampMillis;

  /** Create new LeaderboardEntry from JSON data */
  LeaderboardEntry.fromJson(core.Map json) {
    if (json.containsKey("formattedScore")) {
      formattedScore = json["formattedScore"];
    }
    if (json.containsKey("formattedScoreRank")) {
      formattedScoreRank = json["formattedScoreRank"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("player")) {
      player = new Player.fromJson(json["player"]);
    }
    if (json.containsKey("scoreRank")) {
      scoreRank = (json["scoreRank"] is core.String) ? core.int.parse(json["scoreRank"]) : json["scoreRank"];
    }
    if (json.containsKey("scoreTag")) {
      scoreTag = json["scoreTag"];
    }
    if (json.containsKey("scoreValue")) {
      scoreValue = (json["scoreValue"] is core.String) ? core.int.parse(json["scoreValue"]) : json["scoreValue"];
    }
    if (json.containsKey("timeSpan")) {
      timeSpan = json["timeSpan"];
    }
    if (json.containsKey("writeTimestampMillis")) {
      writeTimestampMillis = (json["writeTimestampMillis"] is core.String) ? core.int.parse(json["writeTimestampMillis"]) : json["writeTimestampMillis"];
    }
  }

  /** Create JSON Object for LeaderboardEntry */
  core.Map toJson() {
    var output = new core.Map();

    if (formattedScore != null) {
      output["formattedScore"] = formattedScore;
    }
    if (formattedScoreRank != null) {
      output["formattedScoreRank"] = formattedScoreRank;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (player != null) {
      output["player"] = player.toJson();
    }
    if (scoreRank != null) {
      output["scoreRank"] = scoreRank;
    }
    if (scoreTag != null) {
      output["scoreTag"] = scoreTag;
    }
    if (scoreValue != null) {
      output["scoreValue"] = scoreValue;
    }
    if (timeSpan != null) {
      output["timeSpan"] = timeSpan;
    }
    if (writeTimestampMillis != null) {
      output["writeTimestampMillis"] = writeTimestampMillis;
    }

    return output;
  }

  /** Return String representation of LeaderboardEntry */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of leaderboard objects. */
class LeaderboardListResponse {

  /** The leaderboards. */
  core.List<Leaderboard> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#leaderboardListResponse. */
  core.String kind;

  /** Token corresponding to the next page of results. */
  core.String nextPageToken;

  /** Create new LeaderboardListResponse from JSON data */
  LeaderboardListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Leaderboard.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for LeaderboardListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of LeaderboardListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a score rank in a leaderboard. */
class LeaderboardScoreRank {

  /** The number of scores in the leaderboard as a string. */
  core.String formattedNumScores;

  /** The rank in the leaderboard as a string. */
  core.String formattedRank;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#leaderboardScoreRank. */
  core.String kind;

  /** The number of scores in the leaderboard. */
  core.int numScores;

  /** The rank in the leaderboard. */
  core.int rank;

  /** Create new LeaderboardScoreRank from JSON data */
  LeaderboardScoreRank.fromJson(core.Map json) {
    if (json.containsKey("formattedNumScores")) {
      formattedNumScores = json["formattedNumScores"];
    }
    if (json.containsKey("formattedRank")) {
      formattedRank = json["formattedRank"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("numScores")) {
      numScores = (json["numScores"] is core.String) ? core.int.parse(json["numScores"]) : json["numScores"];
    }
    if (json.containsKey("rank")) {
      rank = (json["rank"] is core.String) ? core.int.parse(json["rank"]) : json["rank"];
    }
  }

  /** Create JSON Object for LeaderboardScoreRank */
  core.Map toJson() {
    var output = new core.Map();

    if (formattedNumScores != null) {
      output["formattedNumScores"] = formattedNumScores;
    }
    if (formattedRank != null) {
      output["formattedRank"] = formattedRank;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (numScores != null) {
      output["numScores"] = numScores;
    }
    if (rank != null) {
      output["rank"] = rank;
    }

    return output;
  }

  /** Return String representation of LeaderboardScoreRank */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a ListScores response. */
class LeaderboardScores {

  /** The scores in the leaderboard. */
  core.List<LeaderboardEntry> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#leaderboardScores. */
  core.String kind;

  /** The pagination token for the next page of results. */
  core.String nextPageToken;

  /** The total number of scores in the leaderboard. */
  core.int numScores;

  /** The score of the requesting player on the leaderboard. The player's score may appear both here and in the list of scores above. If you are viewing a public leaderboard and the player is not sharing their gameplay information publicly, the scoreRank and formattedScoreRank values will not be present. */
  LeaderboardEntry playerScore;

  /** The pagination token for the previous page of results. */
  core.String prevPageToken;

  /** Create new LeaderboardScores from JSON data */
  LeaderboardScores.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new LeaderboardEntry.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("numScores")) {
      numScores = (json["numScores"] is core.String) ? core.int.parse(json["numScores"]) : json["numScores"];
    }
    if (json.containsKey("playerScore")) {
      playerScore = new LeaderboardEntry.fromJson(json["playerScore"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
  }

  /** Create JSON Object for LeaderboardScores */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (numScores != null) {
      output["numScores"] = numScores;
    }
    if (playerScore != null) {
      output["playerScore"] = playerScore.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }

    return output;
  }

  /** Return String representation of LeaderboardScores */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for network diagnostics reported for a client. */
class NetworkDiagnostics {

  /** The Android network subtype. */
  core.int androidNetworkSubtype;

  /** The Android network type. */
  core.int androidNetworkType;

  /** iOS network type. */
  core.int iosNetworkType;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#networkDiagnostics. */
  core.String kind;

  /** The amount of time in milliseconds it took for the client to establish a connection with the XMPP server. */
  core.int registrationLatencyMillis;

  /** Create new NetworkDiagnostics from JSON data */
  NetworkDiagnostics.fromJson(core.Map json) {
    if (json.containsKey("androidNetworkSubtype")) {
      androidNetworkSubtype = json["androidNetworkSubtype"];
    }
    if (json.containsKey("androidNetworkType")) {
      androidNetworkType = json["androidNetworkType"];
    }
    if (json.containsKey("iosNetworkType")) {
      iosNetworkType = json["iosNetworkType"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("registrationLatencyMillis")) {
      registrationLatencyMillis = json["registrationLatencyMillis"];
    }
  }

  /** Create JSON Object for NetworkDiagnostics */
  core.Map toJson() {
    var output = new core.Map();

    if (androidNetworkSubtype != null) {
      output["androidNetworkSubtype"] = androidNetworkSubtype;
    }
    if (androidNetworkType != null) {
      output["androidNetworkType"] = androidNetworkType;
    }
    if (iosNetworkType != null) {
      output["iosNetworkType"] = iosNetworkType;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (registrationLatencyMillis != null) {
      output["registrationLatencyMillis"] = registrationLatencyMillis;
    }

    return output;
  }

  /** Return String representation of NetworkDiagnostics */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a result for a match participant. */
class ParticipantResult {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#participantResult. */
  core.String kind;

  /** The ID of the participant. */
  core.String participantId;

  /** The placement or ranking of the participant in the match results; a number from one to the number of participants in the match. Multiple participants may have the same placing value in case of a type. */
  core.int placing;

  /** The result of the participant for this match.
Possible values are:  
- "MATCH_RESULT_WIN" - The participant won the match. 
- "MATCH_RESULT_LOSS" - The participant lost the match. 
- "MATCH_RESULT_TIE" - The participant tied the match. 
- "MATCH_RESULT_NONE" - There was no winner for the match (nobody wins or loses this kind of game.) 
- "MATCH_RESULT_DISCONNECT" - The participant disconnected / left during the match. 
- "MATCH_RESULT_DISAGREED" - Different clients reported different results for this participant. */
  core.String result;

  /** Create new ParticipantResult from JSON data */
  ParticipantResult.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("participantId")) {
      participantId = json["participantId"];
    }
    if (json.containsKey("placing")) {
      placing = json["placing"];
    }
    if (json.containsKey("result")) {
      result = json["result"];
    }
  }

  /** Create JSON Object for ParticipantResult */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (participantId != null) {
      output["participantId"] = participantId;
    }
    if (placing != null) {
      output["placing"] = placing;
    }
    if (result != null) {
      output["result"] = result;
    }

    return output;
  }

  /** Return String representation of ParticipantResult */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for peer channel diagnostics. */
class PeerChannelDiagnostics {

  /** Number of bytes received. */
  AggregateStats bytesReceived;

  /** Number of bytes sent. */
  AggregateStats bytesSent;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#peerChannelDiagnostics. */
  core.String kind;

  /** Number of messages lost. */
  core.int numMessagesLost;

  /** Number of messages received. */
  core.int numMessagesReceived;

  /** Number of messages sent. */
  core.int numMessagesSent;

  /** Number of send failures. */
  core.int numSendFailures;

  /** Roundtrip latency stats in milliseconds. */
  AggregateStats roundtripLatencyMillis;

  /** Create new PeerChannelDiagnostics from JSON data */
  PeerChannelDiagnostics.fromJson(core.Map json) {
    if (json.containsKey("bytesReceived")) {
      bytesReceived = new AggregateStats.fromJson(json["bytesReceived"]);
    }
    if (json.containsKey("bytesSent")) {
      bytesSent = new AggregateStats.fromJson(json["bytesSent"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("numMessagesLost")) {
      numMessagesLost = json["numMessagesLost"];
    }
    if (json.containsKey("numMessagesReceived")) {
      numMessagesReceived = json["numMessagesReceived"];
    }
    if (json.containsKey("numMessagesSent")) {
      numMessagesSent = json["numMessagesSent"];
    }
    if (json.containsKey("numSendFailures")) {
      numSendFailures = json["numSendFailures"];
    }
    if (json.containsKey("roundtripLatencyMillis")) {
      roundtripLatencyMillis = new AggregateStats.fromJson(json["roundtripLatencyMillis"]);
    }
  }

  /** Create JSON Object for PeerChannelDiagnostics */
  core.Map toJson() {
    var output = new core.Map();

    if (bytesReceived != null) {
      output["bytesReceived"] = bytesReceived.toJson();
    }
    if (bytesSent != null) {
      output["bytesSent"] = bytesSent.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (numMessagesLost != null) {
      output["numMessagesLost"] = numMessagesLost;
    }
    if (numMessagesReceived != null) {
      output["numMessagesReceived"] = numMessagesReceived;
    }
    if (numMessagesSent != null) {
      output["numMessagesSent"] = numMessagesSent;
    }
    if (numSendFailures != null) {
      output["numSendFailures"] = numSendFailures;
    }
    if (roundtripLatencyMillis != null) {
      output["roundtripLatencyMillis"] = roundtripLatencyMillis.toJson();
    }

    return output;
  }

  /** Return String representation of PeerChannelDiagnostics */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for peer session diagnostics. */
class PeerSessionDiagnostics {

  /** Connected time in milliseconds. */
  core.int connectedTimestampMillis;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#peerSessionDiagnostics. */
  core.String kind;

  /** The participant ID of the peer. */
  core.String participantId;

  /** Reliable channel diagnostics. */
  PeerChannelDiagnostics reliableChannel;

  /** Unreliable channel diagnostics. */
  PeerChannelDiagnostics unreliableChannel;

  /** Create new PeerSessionDiagnostics from JSON data */
  PeerSessionDiagnostics.fromJson(core.Map json) {
    if (json.containsKey("connectedTimestampMillis")) {
      connectedTimestampMillis = (json["connectedTimestampMillis"] is core.String) ? core.int.parse(json["connectedTimestampMillis"]) : json["connectedTimestampMillis"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("participantId")) {
      participantId = json["participantId"];
    }
    if (json.containsKey("reliableChannel")) {
      reliableChannel = new PeerChannelDiagnostics.fromJson(json["reliableChannel"]);
    }
    if (json.containsKey("unreliableChannel")) {
      unreliableChannel = new PeerChannelDiagnostics.fromJson(json["unreliableChannel"]);
    }
  }

  /** Create JSON Object for PeerSessionDiagnostics */
  core.Map toJson() {
    var output = new core.Map();

    if (connectedTimestampMillis != null) {
      output["connectedTimestampMillis"] = connectedTimestampMillis;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (participantId != null) {
      output["participantId"] = participantId;
    }
    if (reliableChannel != null) {
      output["reliableChannel"] = reliableChannel.toJson();
    }
    if (unreliableChannel != null) {
      output["unreliableChannel"] = unreliableChannel.toJson();
    }

    return output;
  }

  /** Return String representation of PeerSessionDiagnostics */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for 3P metadata about a player playing a game. */
class Played {

  /** True if the player was auto-matched with the currently authenticated user. */
  core.bool autoMatched;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#played. */
  core.String kind;

  /** The last time the player played the game in milliseconds since the epoch in UTC. */
  core.int timeMillis;

  /** Create new Played from JSON data */
  Played.fromJson(core.Map json) {
    if (json.containsKey("autoMatched")) {
      autoMatched = json["autoMatched"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("timeMillis")) {
      timeMillis = (json["timeMillis"] is core.String) ? core.int.parse(json["timeMillis"]) : json["timeMillis"];
    }
  }

  /** Create JSON Object for Played */
  core.Map toJson() {
    var output = new core.Map();

    if (autoMatched != null) {
      output["autoMatched"] = autoMatched;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (timeMillis != null) {
      output["timeMillis"] = timeMillis;
    }

    return output;
  }

  /** Return String representation of Played */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a Player resource. */
class Player {

  /** The base URL for the image that represents the player. */
  core.String avatarImageUrl;

  /** The name to display for the player. */
  core.String displayName;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#player. */
  core.String kind;

  /** Details about the last time this player played a multiplayer game with the currently authenticated player. Populated for PLAYED_WITH player collection members. */
  Played lastPlayedWith;

  /** An object representation of the individual components of the player's name. */
  PlayerName name;

  /** The ID of the player. */
  core.String playerId;

  /** Create new Player from JSON data */
  Player.fromJson(core.Map json) {
    if (json.containsKey("avatarImageUrl")) {
      avatarImageUrl = json["avatarImageUrl"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastPlayedWith")) {
      lastPlayedWith = new Played.fromJson(json["lastPlayedWith"]);
    }
    if (json.containsKey("name")) {
      name = new PlayerName.fromJson(json["name"]);
    }
    if (json.containsKey("playerId")) {
      playerId = json["playerId"];
    }
  }

  /** Create JSON Object for Player */
  core.Map toJson() {
    var output = new core.Map();

    if (avatarImageUrl != null) {
      output["avatarImageUrl"] = avatarImageUrl;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastPlayedWith != null) {
      output["lastPlayedWith"] = lastPlayedWith.toJson();
    }
    if (name != null) {
      output["name"] = name.toJson();
    }
    if (playerId != null) {
      output["playerId"] = playerId;
    }

    return output;
  }

  /** Return String representation of Player */
  core.String toString() => JSON.encode(this.toJson());

}

/** An object representation of the individual components of the player's name. */
class PlayerName {

  /** The family name (last name) of this player. */
  core.String familyName;

  /** The given name (first name) of this player. */
  core.String givenName;

  /** Create new PlayerName from JSON data */
  PlayerName.fromJson(core.Map json) {
    if (json.containsKey("familyName")) {
      familyName = json["familyName"];
    }
    if (json.containsKey("givenName")) {
      givenName = json["givenName"];
    }
  }

  /** Create JSON Object for PlayerName */
  core.Map toJson() {
    var output = new core.Map();

    if (familyName != null) {
      output["familyName"] = familyName;
    }
    if (givenName != null) {
      output["givenName"] = givenName;
    }

    return output;
  }

  /** Return String representation of PlayerName */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an achievement object. */
class PlayerAchievement {

  /** The state of the achievement.
Possible values are:  
- "HIDDEN" - Achievement is hidden. 
- "REVEALED" - Achievement is revealed. 
- "UNLOCKED" - Achievement is unlocked. */
  core.String achievementState;

  /** The current steps for an incremental achievement. */
  core.int currentSteps;

  /** The current steps for an incremental achievement as a string. */
  core.String formattedCurrentStepsString;

  /** The ID of the achievement. */
  core.String id;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerAchievement. */
  core.String kind;

  /** The timestamp of the last modification to this achievement's state. */
  core.int lastUpdatedTimestamp;

  /** Create new PlayerAchievement from JSON data */
  PlayerAchievement.fromJson(core.Map json) {
    if (json.containsKey("achievementState")) {
      achievementState = json["achievementState"];
    }
    if (json.containsKey("currentSteps")) {
      currentSteps = json["currentSteps"];
    }
    if (json.containsKey("formattedCurrentStepsString")) {
      formattedCurrentStepsString = json["formattedCurrentStepsString"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastUpdatedTimestamp")) {
      lastUpdatedTimestamp = (json["lastUpdatedTimestamp"] is core.String) ? core.int.parse(json["lastUpdatedTimestamp"]) : json["lastUpdatedTimestamp"];
    }
  }

  /** Create JSON Object for PlayerAchievement */
  core.Map toJson() {
    var output = new core.Map();

    if (achievementState != null) {
      output["achievementState"] = achievementState;
    }
    if (currentSteps != null) {
      output["currentSteps"] = currentSteps;
    }
    if (formattedCurrentStepsString != null) {
      output["formattedCurrentStepsString"] = formattedCurrentStepsString;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastUpdatedTimestamp != null) {
      output["lastUpdatedTimestamp"] = lastUpdatedTimestamp;
    }

    return output;
  }

  /** Return String representation of PlayerAchievement */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of achievement objects. */
class PlayerAchievementListResponse {

  /** The achievements. */
  core.List<PlayerAchievement> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerAchievementListResponse. */
  core.String kind;

  /** Token corresponding to the next page of results. */
  core.String nextPageToken;

  /** Create new PlayerAchievementListResponse from JSON data */
  PlayerAchievementListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new PlayerAchievement.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for PlayerAchievementListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of PlayerAchievementListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a player leaderboard score object. */
class PlayerLeaderboardScore {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerLeaderboardScore. */
  core.String kind;

  /** The ID of the leaderboard this score is in. */
  core.String leaderboard_id;

  /** The public rank of the score in this leaderboard. This object will not be present if the user is not sharing their scores publicly. */
  LeaderboardScoreRank publicRank;

  /** The formatted value of this score. */
  core.String scoreString;

  /** Additional information about the score. Values must contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986. */
  core.String scoreTag;

  /** The numerical value of this score. */
  core.int scoreValue;

  /** The social rank of the score in this leaderboard. */
  LeaderboardScoreRank socialRank;

  /** The time span of this score.
Possible values are:  
- "ALL_TIME" - The score is an all-time score. 
- "WEEKLY" - The score is a weekly score. 
- "DAILY" - The score is a daily score. */
  core.String timeSpan;

  /** The timestamp at which this score was recorded, in milliseconds since the epoch in UTC. */
  core.int writeTimestamp;

  /** Create new PlayerLeaderboardScore from JSON data */
  PlayerLeaderboardScore.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("leaderboard_id")) {
      leaderboard_id = json["leaderboard_id"];
    }
    if (json.containsKey("publicRank")) {
      publicRank = new LeaderboardScoreRank.fromJson(json["publicRank"]);
    }
    if (json.containsKey("scoreString")) {
      scoreString = json["scoreString"];
    }
    if (json.containsKey("scoreTag")) {
      scoreTag = json["scoreTag"];
    }
    if (json.containsKey("scoreValue")) {
      scoreValue = (json["scoreValue"] is core.String) ? core.int.parse(json["scoreValue"]) : json["scoreValue"];
    }
    if (json.containsKey("socialRank")) {
      socialRank = new LeaderboardScoreRank.fromJson(json["socialRank"]);
    }
    if (json.containsKey("timeSpan")) {
      timeSpan = json["timeSpan"];
    }
    if (json.containsKey("writeTimestamp")) {
      writeTimestamp = (json["writeTimestamp"] is core.String) ? core.int.parse(json["writeTimestamp"]) : json["writeTimestamp"];
    }
  }

  /** Create JSON Object for PlayerLeaderboardScore */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (leaderboard_id != null) {
      output["leaderboard_id"] = leaderboard_id;
    }
    if (publicRank != null) {
      output["publicRank"] = publicRank.toJson();
    }
    if (scoreString != null) {
      output["scoreString"] = scoreString;
    }
    if (scoreTag != null) {
      output["scoreTag"] = scoreTag;
    }
    if (scoreValue != null) {
      output["scoreValue"] = scoreValue;
    }
    if (socialRank != null) {
      output["socialRank"] = socialRank.toJson();
    }
    if (timeSpan != null) {
      output["timeSpan"] = timeSpan;
    }
    if (writeTimestamp != null) {
      output["writeTimestamp"] = writeTimestamp;
    }

    return output;
  }

  /** Return String representation of PlayerLeaderboardScore */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of player leaderboard scores. */
class PlayerLeaderboardScoreListResponse {

  /** The leaderboard scores. */
  core.List<PlayerLeaderboardScore> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerLeaderboardScoreListResponse. */
  core.String kind;

  /** The pagination token for the next page of results. */
  core.String nextPageToken;

  /** The Player resources for the owner of this score. */
  Player player;

  /** Create new PlayerLeaderboardScoreListResponse from JSON data */
  PlayerLeaderboardScoreListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new PlayerLeaderboardScore.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("player")) {
      player = new Player.fromJson(json["player"]);
    }
  }

  /** Create JSON Object for PlayerLeaderboardScoreListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (player != null) {
      output["player"] = player.toJson();
    }

    return output;
  }

  /** Return String representation of PlayerLeaderboardScoreListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a third party player list response. */
class PlayerListResponse {

  /** The players. */
  core.List<Player> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerListResponse. */
  core.String kind;

  /** Token corresponding to the next page of results. */
  core.String nextPageToken;

  /** Create new PlayerListResponse from JSON data */
  PlayerListResponse.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Player.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for PlayerListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of PlayerListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a player score. */
class PlayerScore {

  /** The formatted score for this player score. */
  core.String formattedScore;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerScore. */
  core.String kind;

  /** The numerical value for this player score. */
  core.int score;

  /** Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986. */
  core.String scoreTag;

  /** The time span for this player score.
Possible values are:  
- "ALL_TIME" - The score is an all-time score. 
- "WEEKLY" - The score is a weekly score. 
- "DAILY" - The score is a daily score. */
  core.String timeSpan;

  /** Create new PlayerScore from JSON data */
  PlayerScore.fromJson(core.Map json) {
    if (json.containsKey("formattedScore")) {
      formattedScore = json["formattedScore"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("score")) {
      score = (json["score"] is core.String) ? core.int.parse(json["score"]) : json["score"];
    }
    if (json.containsKey("scoreTag")) {
      scoreTag = json["scoreTag"];
    }
    if (json.containsKey("timeSpan")) {
      timeSpan = json["timeSpan"];
    }
  }

  /** Create JSON Object for PlayerScore */
  core.Map toJson() {
    var output = new core.Map();

    if (formattedScore != null) {
      output["formattedScore"] = formattedScore;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (score != null) {
      output["score"] = score;
    }
    if (scoreTag != null) {
      output["scoreTag"] = scoreTag;
    }
    if (timeSpan != null) {
      output["timeSpan"] = timeSpan;
    }

    return output;
  }

  /** Return String representation of PlayerScore */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of score submission statuses. */
class PlayerScoreListResponse {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerScoreListResponse. */
  core.String kind;

  /** The score submissions statuses. */
  core.List<PlayerScoreResponse> submittedScores;

  /** Create new PlayerScoreListResponse from JSON data */
  PlayerScoreListResponse.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("submittedScores")) {
      submittedScores = json["submittedScores"].map((submittedScoresItem) => new PlayerScoreResponse.fromJson(submittedScoresItem)).toList();
    }
  }

  /** Create JSON Object for PlayerScoreListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (submittedScores != null) {
      output["submittedScores"] = submittedScores.map((submittedScoresItem) => submittedScoresItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of PlayerScoreListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of leaderboard entry resources. */
class PlayerScoreResponse {

  /** The time spans where the submitted score is better than the existing score for that time span.
Possible values are:  
- "ALL_TIME" - The score is an all-time score. 
- "WEEKLY" - The score is a weekly score. 
- "DAILY" - The score is a daily score. */
  core.List<core.String> beatenScoreTimeSpans;

  /** The formatted value of the submitted score. */
  core.String formattedScore;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerScoreResponse. */
  core.String kind;

  /** The leaderboard ID that this score was submitted to. */
  core.String leaderboardId;

  /** Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986. */
  core.String scoreTag;

  /** The scores in time spans that have not been beaten. As an example, the submitted score may be better than the player's DAILY score, but not better than the player's scores for the WEEKLY or ALL_TIME time spans. */
  core.List<PlayerScore> unbeatenScores;

  /** Create new PlayerScoreResponse from JSON data */
  PlayerScoreResponse.fromJson(core.Map json) {
    if (json.containsKey("beatenScoreTimeSpans")) {
      beatenScoreTimeSpans = json["beatenScoreTimeSpans"].toList();
    }
    if (json.containsKey("formattedScore")) {
      formattedScore = json["formattedScore"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("leaderboardId")) {
      leaderboardId = json["leaderboardId"];
    }
    if (json.containsKey("scoreTag")) {
      scoreTag = json["scoreTag"];
    }
    if (json.containsKey("unbeatenScores")) {
      unbeatenScores = json["unbeatenScores"].map((unbeatenScoresItem) => new PlayerScore.fromJson(unbeatenScoresItem)).toList();
    }
  }

  /** Create JSON Object for PlayerScoreResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (beatenScoreTimeSpans != null) {
      output["beatenScoreTimeSpans"] = beatenScoreTimeSpans.toList();
    }
    if (formattedScore != null) {
      output["formattedScore"] = formattedScore;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (leaderboardId != null) {
      output["leaderboardId"] = leaderboardId;
    }
    if (scoreTag != null) {
      output["scoreTag"] = scoreTag;
    }
    if (unbeatenScores != null) {
      output["unbeatenScores"] = unbeatenScores.map((unbeatenScoresItem) => unbeatenScoresItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of PlayerScoreResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of score submission requests */
class PlayerScoreSubmissionList {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#playerScoreSubmissionList. */
  core.String kind;

  /** The score submissions. */
  core.List<ScoreSubmission> scores;

  /** Create new PlayerScoreSubmissionList from JSON data */
  PlayerScoreSubmissionList.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("scores")) {
      scores = json["scores"].map((scoresItem) => new ScoreSubmission.fromJson(scoresItem)).toList();
    }
  }

  /** Create JSON Object for PlayerScoreSubmissionList */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (scores != null) {
      output["scores"] = scores.map((scoresItem) => scoresItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of PlayerScoreSubmissionList */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a push token resource. */
class PushToken {

  /** The revision of the client SDK used by your application, in the same format that's used by revisions.check. Used to send backward compatible messages. Format: [PLATFORM_TYPE]:[VERSION_NUMBER]. Possible values of PLATFORM_TYPE are:  
- IOS - Push token is for iOS */
  core.String clientRevision;

  /** Unique identifier for this push token. */
  PushTokenId id;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#pushToken. */
  core.String kind;

  /** The preferred language for notifications that are sent using this token. */
  core.String language;

  /** Create new PushToken from JSON data */
  PushToken.fromJson(core.Map json) {
    if (json.containsKey("clientRevision")) {
      clientRevision = json["clientRevision"];
    }
    if (json.containsKey("id")) {
      id = new PushTokenId.fromJson(json["id"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
  }

  /** Create JSON Object for PushToken */
  core.Map toJson() {
    var output = new core.Map();

    if (clientRevision != null) {
      output["clientRevision"] = clientRevision;
    }
    if (id != null) {
      output["id"] = id.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (language != null) {
      output["language"] = language;
    }

    return output;
  }

  /** Return String representation of PushToken */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a push token ID resource. */
class PushTokenId {

  /** A push token ID for iOS devices. */
  PushTokenIdIos ios;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#pushTokenId. */
  core.String kind;

  /** Create new PushTokenId from JSON data */
  PushTokenId.fromJson(core.Map json) {
    if (json.containsKey("ios")) {
      ios = new PushTokenIdIos.fromJson(json["ios"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for PushTokenId */
  core.Map toJson() {
    var output = new core.Map();

    if (ios != null) {
      output["ios"] = ios.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of PushTokenId */
  core.String toString() => JSON.encode(this.toJson());

}

/** A push token ID for iOS devices. */
class PushTokenIdIos {

  /** Device token supplied by an iOS system call to register for remote notifications. Encode this field as web-safe base64. */
  core.String apns_device_token;

  /** Use SANDBOX during development for the APNS test server at gateway.sandbox.push.apple.com or PRODUCTION for the production server at gateway.push.apple.com. */
  core.String apns_environment;

  /** Create new PushTokenIdIos from JSON data */
  PushTokenIdIos.fromJson(core.Map json) {
    if (json.containsKey("apns_device_token")) {
      apns_device_token = json["apns_device_token"];
    }
    if (json.containsKey("apns_environment")) {
      apns_environment = json["apns_environment"];
    }
  }

  /** Create JSON Object for PushTokenIdIos */
  core.Map toJson() {
    var output = new core.Map();

    if (apns_device_token != null) {
      output["apns_device_token"] = apns_device_token;
    }
    if (apns_environment != null) {
      output["apns_environment"] = apns_environment;
    }

    return output;
  }

  /** Return String representation of PushTokenIdIos */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the result of checking a revision. */
class RevisionCheckResponse {

  /** The version of the API this client revision should use when calling API methods. */
  core.String apiVersion;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#revisionCheckResponse. */
  core.String kind;

  /** The result of the revision check.
Possible values are:  
- "OK" - The revision being used is current. 
- "DEPRECATED" - There is currently a newer version available, but the revision being used still works. 
- "INVALID" - The revision being used is not supported in any released version. */
  core.String revisionStatus;

  /** Create new RevisionCheckResponse from JSON data */
  RevisionCheckResponse.fromJson(core.Map json) {
    if (json.containsKey("apiVersion")) {
      apiVersion = json["apiVersion"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("revisionStatus")) {
      revisionStatus = json["revisionStatus"];
    }
  }

  /** Create JSON Object for RevisionCheckResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (apiVersion != null) {
      output["apiVersion"] = apiVersion;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (revisionStatus != null) {
      output["revisionStatus"] = revisionStatus;
    }

    return output;
  }

  /** Return String representation of RevisionCheckResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a room resource object. */
class Room {

  /** The ID of the application being played. */
  core.String applicationId;

  /** Criteria for auto-matching players into this room. */
  RoomAutoMatchingCriteria autoMatchingCriteria;

  /** Auto-matching status for this room. Not set if the room is not currently in the auto-matching queue. */
  RoomAutoMatchStatus autoMatchingStatus;

  /** Details about the room creation. */
  RoomModification creationDetails;

  /** This short description is generated by our servers and worded relative to the player requesting the room. It is intended to be displayed when the room is shown in a list (that is, an invitation to a room.) */
  core.String description;

  /** The ID of the participant that invited the user to the room. Not set if the user was not invited to the room. */
  core.String inviterId;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#room. */
  core.String kind;

  /** Details about the last update to the room. */
  RoomModification lastUpdateDetails;

  /** The participants involved in the room, along with their statuses. Includes participants who have left or declined invitations. */
  core.List<RoomParticipant> participants;

  /** Globally unique ID for a room. */
  core.String roomId;

  /** The version of the room status: an increasing counter, used by the client to ignore out-of-order updates to room status. */
  core.int roomStatusVersion;

  /** The status of the room.
Possible values are:  
- "ROOM_INVITING" - One or more players have been invited and not responded. 
- "ROOM_AUTO_MATCHING" - One or more slots need to be filled by auto-matching. 
- "ROOM_CONNECTING" - Players have joined and are connecting to each other (either before or after auto-matching). 
- "ROOM_ACTIVE" - All players have joined and connected to each other. 
- "ROOM_DELETED" - The room should no longer be shown on the client. Returned in sync calls when a player joins a room (as a tombstone), or for rooms where all joined participants have left. */
  core.String status;

  /** The variant / mode of the application being played; can be any integer value, or left blank. */
  core.int variant;

  /** Create new Room from JSON data */
  Room.fromJson(core.Map json) {
    if (json.containsKey("applicationId")) {
      applicationId = json["applicationId"];
    }
    if (json.containsKey("autoMatchingCriteria")) {
      autoMatchingCriteria = new RoomAutoMatchingCriteria.fromJson(json["autoMatchingCriteria"]);
    }
    if (json.containsKey("autoMatchingStatus")) {
      autoMatchingStatus = new RoomAutoMatchStatus.fromJson(json["autoMatchingStatus"]);
    }
    if (json.containsKey("creationDetails")) {
      creationDetails = new RoomModification.fromJson(json["creationDetails"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("inviterId")) {
      inviterId = json["inviterId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastUpdateDetails")) {
      lastUpdateDetails = new RoomModification.fromJson(json["lastUpdateDetails"]);
    }
    if (json.containsKey("participants")) {
      participants = json["participants"].map((participantsItem) => new RoomParticipant.fromJson(participantsItem)).toList();
    }
    if (json.containsKey("roomId")) {
      roomId = json["roomId"];
    }
    if (json.containsKey("roomStatusVersion")) {
      roomStatusVersion = json["roomStatusVersion"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("variant")) {
      variant = json["variant"];
    }
  }

  /** Create JSON Object for Room */
  core.Map toJson() {
    var output = new core.Map();

    if (applicationId != null) {
      output["applicationId"] = applicationId;
    }
    if (autoMatchingCriteria != null) {
      output["autoMatchingCriteria"] = autoMatchingCriteria.toJson();
    }
    if (autoMatchingStatus != null) {
      output["autoMatchingStatus"] = autoMatchingStatus.toJson();
    }
    if (creationDetails != null) {
      output["creationDetails"] = creationDetails.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (inviterId != null) {
      output["inviterId"] = inviterId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastUpdateDetails != null) {
      output["lastUpdateDetails"] = lastUpdateDetails.toJson();
    }
    if (participants != null) {
      output["participants"] = participants.map((participantsItem) => participantsItem.toJson()).toList();
    }
    if (roomId != null) {
      output["roomId"] = roomId;
    }
    if (roomStatusVersion != null) {
      output["roomStatusVersion"] = roomStatusVersion;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (variant != null) {
      output["variant"] = variant;
    }

    return output;
  }

  /** Return String representation of Room */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for status of room automatching that is in progress. */
class RoomAutoMatchStatus {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomAutoMatchStatus. */
  core.String kind;

  /** An estimate for the amount of time (in seconds) that auto-matching is expected to take to complete. */
  core.int waitEstimateSeconds;

  /** Create new RoomAutoMatchStatus from JSON data */
  RoomAutoMatchStatus.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("waitEstimateSeconds")) {
      waitEstimateSeconds = json["waitEstimateSeconds"];
    }
  }

  /** Create JSON Object for RoomAutoMatchStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (waitEstimateSeconds != null) {
      output["waitEstimateSeconds"] = waitEstimateSeconds;
    }

    return output;
  }

  /** Return String representation of RoomAutoMatchStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a room auto-match criteria object. */
class RoomAutoMatchingCriteria {

  /** A bitmask indicating when auto-matches are valid. When ANDed with other exclusive bitmasks, the result must be zero. Can be used to support exclusive roles within a game. */
  core.int exclusiveBitmask;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomAutoMatchingCriteria. */
  core.String kind;

  /** The maximum number of players that should be added to the room by auto-matching. */
  core.int maxAutoMatchingPlayers;

  /** The minimum number of players that should be added to the room by auto-matching. */
  core.int minAutoMatchingPlayers;

  /** Create new RoomAutoMatchingCriteria from JSON data */
  RoomAutoMatchingCriteria.fromJson(core.Map json) {
    if (json.containsKey("exclusiveBitmask")) {
      exclusiveBitmask = (json["exclusiveBitmask"] is core.String) ? core.int.parse(json["exclusiveBitmask"]) : json["exclusiveBitmask"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxAutoMatchingPlayers")) {
      maxAutoMatchingPlayers = json["maxAutoMatchingPlayers"];
    }
    if (json.containsKey("minAutoMatchingPlayers")) {
      minAutoMatchingPlayers = json["minAutoMatchingPlayers"];
    }
  }

  /** Create JSON Object for RoomAutoMatchingCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (exclusiveBitmask != null) {
      output["exclusiveBitmask"] = exclusiveBitmask;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxAutoMatchingPlayers != null) {
      output["maxAutoMatchingPlayers"] = maxAutoMatchingPlayers;
    }
    if (minAutoMatchingPlayers != null) {
      output["minAutoMatchingPlayers"] = minAutoMatchingPlayers;
    }

    return output;
  }

  /** Return String representation of RoomAutoMatchingCriteria */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the client address when setting up a room. */
class RoomClientAddress {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomClientAddress. */
  core.String kind;

  /** The XMPP address of the client on the Google Games XMPP network. */
  core.String xmppAddress;

  /** Create new RoomClientAddress from JSON data */
  RoomClientAddress.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("xmppAddress")) {
      xmppAddress = json["xmppAddress"];
    }
  }

  /** Create JSON Object for RoomClientAddress */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (xmppAddress != null) {
      output["xmppAddress"] = xmppAddress;
    }

    return output;
  }

  /** Return String representation of RoomClientAddress */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a room creation request. */
class RoomCreateRequest {

  /** Criteria for auto-matching players into this room. */
  RoomAutoMatchingCriteria autoMatchingCriteria;

  /** The capabilities that this client supports for realtime communication. */
  core.List<core.String> capabilities;

  /** Client address for the player creating the room. */
  RoomClientAddress clientAddress;

  /** The player IDs to invite to the room. */
  core.List<core.String> invitedPlayerIds;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomCreateRequest. */
  core.String kind;

  /** Network diagnostics for the client creating the room. */
  NetworkDiagnostics networkDiagnostics;

  /** A randomly generated numeric ID. This number is used at the server to ensure that the request is handled correctly across retries. */
  core.int requestId;

  /** The variant / mode of the application to be played. This can be any integer value, or left blank. You should use a small number of variants to keep the auto-matching pool as large as possible. */
  core.int variant;

  /** Create new RoomCreateRequest from JSON data */
  RoomCreateRequest.fromJson(core.Map json) {
    if (json.containsKey("autoMatchingCriteria")) {
      autoMatchingCriteria = new RoomAutoMatchingCriteria.fromJson(json["autoMatchingCriteria"]);
    }
    if (json.containsKey("capabilities")) {
      capabilities = json["capabilities"].toList();
    }
    if (json.containsKey("clientAddress")) {
      clientAddress = new RoomClientAddress.fromJson(json["clientAddress"]);
    }
    if (json.containsKey("invitedPlayerIds")) {
      invitedPlayerIds = json["invitedPlayerIds"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("networkDiagnostics")) {
      networkDiagnostics = new NetworkDiagnostics.fromJson(json["networkDiagnostics"]);
    }
    if (json.containsKey("requestId")) {
      requestId = (json["requestId"] is core.String) ? core.int.parse(json["requestId"]) : json["requestId"];
    }
    if (json.containsKey("variant")) {
      variant = json["variant"];
    }
  }

  /** Create JSON Object for RoomCreateRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (autoMatchingCriteria != null) {
      output["autoMatchingCriteria"] = autoMatchingCriteria.toJson();
    }
    if (capabilities != null) {
      output["capabilities"] = capabilities.toList();
    }
    if (clientAddress != null) {
      output["clientAddress"] = clientAddress.toJson();
    }
    if (invitedPlayerIds != null) {
      output["invitedPlayerIds"] = invitedPlayerIds.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (networkDiagnostics != null) {
      output["networkDiagnostics"] = networkDiagnostics.toJson();
    }
    if (requestId != null) {
      output["requestId"] = requestId;
    }
    if (variant != null) {
      output["variant"] = variant;
    }

    return output;
  }

  /** Return String representation of RoomCreateRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a join room request. */
class RoomJoinRequest {

  /** The capabilities that this client supports for realtime communication. */
  core.List<core.String> capabilities;

  /** Client address for the player joining the room. */
  RoomClientAddress clientAddress;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomJoinRequest. */
  core.String kind;

  /** Network diagnostics for the client joining the room. */
  NetworkDiagnostics networkDiagnostics;

  /** Create new RoomJoinRequest from JSON data */
  RoomJoinRequest.fromJson(core.Map json) {
    if (json.containsKey("capabilities")) {
      capabilities = json["capabilities"].toList();
    }
    if (json.containsKey("clientAddress")) {
      clientAddress = new RoomClientAddress.fromJson(json["clientAddress"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("networkDiagnostics")) {
      networkDiagnostics = new NetworkDiagnostics.fromJson(json["networkDiagnostics"]);
    }
  }

  /** Create JSON Object for RoomJoinRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (capabilities != null) {
      output["capabilities"] = capabilities.toList();
    }
    if (clientAddress != null) {
      output["clientAddress"] = clientAddress.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (networkDiagnostics != null) {
      output["networkDiagnostics"] = networkDiagnostics.toJson();
    }

    return output;
  }

  /** Return String representation of RoomJoinRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for room leave diagnostics. */
class RoomLeaveDiagnostics {

  /** Android network subtype. http://developer.android.com/reference/android/net/NetworkInfo.html#getSubtype() */
  core.int androidNetworkSubtype;

  /** Android network type. http://developer.android.com/reference/android/net/NetworkInfo.html#getType() */
  core.int androidNetworkType;

  /** iOS network type. */
  core.int iosNetworkType;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomLeaveDiagnostics. */
  core.String kind;

  /** Diagnostics about all peer sessions. */
  core.List<PeerSessionDiagnostics> peerSession;

  /** Whether or not sockets were used. */
  core.bool socketsUsed;

  /** Create new RoomLeaveDiagnostics from JSON data */
  RoomLeaveDiagnostics.fromJson(core.Map json) {
    if (json.containsKey("androidNetworkSubtype")) {
      androidNetworkSubtype = json["androidNetworkSubtype"];
    }
    if (json.containsKey("androidNetworkType")) {
      androidNetworkType = json["androidNetworkType"];
    }
    if (json.containsKey("iosNetworkType")) {
      iosNetworkType = json["iosNetworkType"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("peerSession")) {
      peerSession = json["peerSession"].map((peerSessionItem) => new PeerSessionDiagnostics.fromJson(peerSessionItem)).toList();
    }
    if (json.containsKey("socketsUsed")) {
      socketsUsed = json["socketsUsed"];
    }
  }

  /** Create JSON Object for RoomLeaveDiagnostics */
  core.Map toJson() {
    var output = new core.Map();

    if (androidNetworkSubtype != null) {
      output["androidNetworkSubtype"] = androidNetworkSubtype;
    }
    if (androidNetworkType != null) {
      output["androidNetworkType"] = androidNetworkType;
    }
    if (iosNetworkType != null) {
      output["iosNetworkType"] = iosNetworkType;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (peerSession != null) {
      output["peerSession"] = peerSession.map((peerSessionItem) => peerSessionItem.toJson()).toList();
    }
    if (socketsUsed != null) {
      output["socketsUsed"] = socketsUsed;
    }

    return output;
  }

  /** Return String representation of RoomLeaveDiagnostics */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a leave room request. */
class RoomLeaveRequest {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomLeaveRequest. */
  core.String kind;

  /** Diagnostics for a player leaving the room. */
  RoomLeaveDiagnostics leaveDiagnostics;

  /** Reason for leaving the match.
Possible values are:  
- "PLAYER_LEFT" - The player chose to leave the room.. 
- "GAME_LEFT" - The game chose to remove the player from the room. 
- "REALTIME_ABANDONED" - The player switched to another application and abandoned the room. 
- "REALTIME_PEER_CONNECTION_FAILURE" - The client was unable to establish a connection to other peer(s). 
- "REALTIME_SERVER_CONNECTION_FAILURE" - The client was unable to communicate with the server. 
- "REALTIME_SERVER_ERROR" - The client received an error response when it tried to communicate with the server. 
- "REALTIME_TIMEOUT" - The client timed out while waiting for a room. */
  core.String reason;

  /** Create new RoomLeaveRequest from JSON data */
  RoomLeaveRequest.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("leaveDiagnostics")) {
      leaveDiagnostics = new RoomLeaveDiagnostics.fromJson(json["leaveDiagnostics"]);
    }
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
  }

  /** Create JSON Object for RoomLeaveRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (leaveDiagnostics != null) {
      output["leaveDiagnostics"] = leaveDiagnostics.toJson();
    }
    if (reason != null) {
      output["reason"] = reason;
    }

    return output;
  }

  /** Return String representation of RoomLeaveRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of rooms. */
class RoomList {

  /** The rooms. */
  core.List<Room> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomList. */
  core.String kind;

  /** The pagination token for the next page of results. */
  core.String nextPageToken;

  /** Create new RoomList from JSON data */
  RoomList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Room.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for RoomList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of RoomList */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for room modification metadata. */
class RoomModification {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomModification. */
  core.String kind;

  /** The timestamp at which they modified the room, in milliseconds since the epoch in UTC. */
  core.int modifiedTimestampMillis;

  /** The ID of the participant that modified the room. */
  core.String participantId;

  /** Create new RoomModification from JSON data */
  RoomModification.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("modifiedTimestampMillis")) {
      modifiedTimestampMillis = (json["modifiedTimestampMillis"] is core.String) ? core.int.parse(json["modifiedTimestampMillis"]) : json["modifiedTimestampMillis"];
    }
    if (json.containsKey("participantId")) {
      participantId = json["participantId"];
    }
  }

  /** Create JSON Object for RoomModification */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (modifiedTimestampMillis != null) {
      output["modifiedTimestampMillis"] = modifiedTimestampMillis;
    }
    if (participantId != null) {
      output["participantId"] = participantId;
    }

    return output;
  }

  /** Return String representation of RoomModification */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an update on the status of a peer in a room. */
class RoomP2PStatus {

  /** The amount of time in milliseconds it took to establish connections with this peer. */
  core.int connectionSetupLatencyMillis;

  /** The error code in event of a failure.
Possible values are:  
- "P2P_FAILED" - The client failed to establish a P2P connection with the peer. 
- "PRESENCE_FAILED" - The client failed to register to receive P2P connections. 
- "RELAY_SERVER_FAILED" - The client received an error when trying to use the relay server to establish a P2P connection with the peer. */
  core.String error;

  /** More detailed diagnostic message returned in event of a failure. */
  core.String error_reason;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomP2PStatus. */
  core.String kind;

  /** The ID of the participant. */
  core.String participantId;

  /** The status of the peer in the room.
Possible values are:  
- "CONNECTION_ESTABLISHED" - The client established a P2P connection with the peer. 
- "CONNECTION_FAILED" - The client failed to establish directed presence with the peer. */
  core.String status;

  /** The amount of time in milliseconds it took to send packets back and forth on the unreliable channel with this peer. */
  core.int unreliableRoundtripLatencyMillis;

  /** Create new RoomP2PStatus from JSON data */
  RoomP2PStatus.fromJson(core.Map json) {
    if (json.containsKey("connectionSetupLatencyMillis")) {
      connectionSetupLatencyMillis = json["connectionSetupLatencyMillis"];
    }
    if (json.containsKey("error")) {
      error = json["error"];
    }
    if (json.containsKey("error_reason")) {
      error_reason = json["error_reason"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("participantId")) {
      participantId = json["participantId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("unreliableRoundtripLatencyMillis")) {
      unreliableRoundtripLatencyMillis = json["unreliableRoundtripLatencyMillis"];
    }
  }

  /** Create JSON Object for RoomP2PStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (connectionSetupLatencyMillis != null) {
      output["connectionSetupLatencyMillis"] = connectionSetupLatencyMillis;
    }
    if (error != null) {
      output["error"] = error;
    }
    if (error_reason != null) {
      output["error_reason"] = error_reason;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (participantId != null) {
      output["participantId"] = participantId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (unreliableRoundtripLatencyMillis != null) {
      output["unreliableRoundtripLatencyMillis"] = unreliableRoundtripLatencyMillis;
    }

    return output;
  }

  /** Return String representation of RoomP2PStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an update on the status of peers in a room. */
class RoomP2PStatuses {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomP2PStatuses. */
  core.String kind;

  /** The updates for the peers. */
  core.List<RoomP2PStatus> updates;

  /** Create new RoomP2PStatuses from JSON data */
  RoomP2PStatuses.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("updates")) {
      updates = json["updates"].map((updatesItem) => new RoomP2PStatus.fromJson(updatesItem)).toList();
    }
  }

  /** Create JSON Object for RoomP2PStatuses */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (updates != null) {
      output["updates"] = updates.map((updatesItem) => updatesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of RoomP2PStatuses */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a participant in a room. */
class RoomParticipant {

  /** True if this participant was auto-matched with the requesting player. */
  core.bool autoMatched;

  /** Information about a player that has been anonymously auto-matched against the requesting player. (Either player or autoMatchedPlayer will be set.) */
  AnonymousPlayer autoMatchedPlayer;

  /** The capabilities which can be used when communicating with this participant. */
  core.List<core.String> capabilities;

  /** Client address for the participant. */
  RoomClientAddress clientAddress;

  /** True if this participant is in the fully connected set of peers in the room. */
  core.bool connected;

  /** An identifier for the participant in the scope of the room. Cannot be used to identify a player across rooms or in other contexts. */
  core.String id;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomParticipant. */
  core.String kind;

  /** The reason the participant left the room; populated if the participant status is PARTICIPANT_LEFT.
Possible values are:  
- "PLAYER_LEFT" - The player explicitly chose to leave the room. 
- "GAME_LEFT" - The game chose to remove the player from the room. 
- "ABANDONED" - The player switched to another application and abandoned the room.
- "PEER_CONNECTION_FAILURE" - The client was unable to establish or maintain a connection to other peer(s) in the room.
- "SERVER_ERROR" - The client received an error response when it tried to communicate with the server. 
- "TIMEOUT" - The client timed out while waiting for players to join and connect. 
- "PRESENCE_FAILURE" - The client's XMPP connection ended abruptly. */
  core.String leaveReason;

  /** Information about the player. Not populated if this player was anonymously auto-matched against the requesting player. (Either player or autoMatchedPlayer will be set.) */
  Player player;

  /** The status of the participant with respect to the room.
Possible values are:  
- "PARTICIPANT_INVITED" - The participant has been invited to join the room, but has not yet responded. 
- "PARTICIPANT_JOINED" - The participant has joined the room (either after creating it or accepting an invitation.) 
- "PARTICIPANT_DECLINED" - The participant declined an invitation to join the room. 
- "PARTICIPANT_LEFT" - The participant joined the room and then left it. */
  core.String status;

  /** Create new RoomParticipant from JSON data */
  RoomParticipant.fromJson(core.Map json) {
    if (json.containsKey("autoMatched")) {
      autoMatched = json["autoMatched"];
    }
    if (json.containsKey("autoMatchedPlayer")) {
      autoMatchedPlayer = new AnonymousPlayer.fromJson(json["autoMatchedPlayer"]);
    }
    if (json.containsKey("capabilities")) {
      capabilities = json["capabilities"].toList();
    }
    if (json.containsKey("clientAddress")) {
      clientAddress = new RoomClientAddress.fromJson(json["clientAddress"]);
    }
    if (json.containsKey("connected")) {
      connected = json["connected"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("leaveReason")) {
      leaveReason = json["leaveReason"];
    }
    if (json.containsKey("player")) {
      player = new Player.fromJson(json["player"]);
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for RoomParticipant */
  core.Map toJson() {
    var output = new core.Map();

    if (autoMatched != null) {
      output["autoMatched"] = autoMatched;
    }
    if (autoMatchedPlayer != null) {
      output["autoMatchedPlayer"] = autoMatchedPlayer.toJson();
    }
    if (capabilities != null) {
      output["capabilities"] = capabilities.toList();
    }
    if (clientAddress != null) {
      output["clientAddress"] = clientAddress.toJson();
    }
    if (connected != null) {
      output["connected"] = connected;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (leaveReason != null) {
      output["leaveReason"] = leaveReason;
    }
    if (player != null) {
      output["player"] = player.toJson();
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of RoomParticipant */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the status of a room that the player has joined. */
class RoomStatus {

  /** Auto-matching status for this room. Not set if the room is not currently in the automatching queue. */
  RoomAutoMatchStatus autoMatchingStatus;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#roomStatus. */
  core.String kind;

  /** The participants involved in the room, along with their statuses. Includes participants who have left or declined invitations. */
  core.List<RoomParticipant> participants;

  /** Globally unique ID for a room. */
  core.String roomId;

  /** The status of the room.
Possible values are:  
- "ROOM_INVITING" - One or more players have been invited and not responded. 
- "ROOM_AUTO_MATCHING" - One or more slots need to be filled by auto-matching. 
- "ROOM_CONNECTING" - Players have joined are connecting to each other (either before or after auto-matching). 
- "ROOM_ACTIVE" - All players have joined and connected to each other. 
- "ROOM_DELETED" - All joined players have left. */
  core.String status;

  /** The version of the status for the room: an increasing counter, used by the client to ignore out-of-order updates to room status. */
  core.int statusVersion;

  /** Create new RoomStatus from JSON data */
  RoomStatus.fromJson(core.Map json) {
    if (json.containsKey("autoMatchingStatus")) {
      autoMatchingStatus = new RoomAutoMatchStatus.fromJson(json["autoMatchingStatus"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("participants")) {
      participants = json["participants"].map((participantsItem) => new RoomParticipant.fromJson(participantsItem)).toList();
    }
    if (json.containsKey("roomId")) {
      roomId = json["roomId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("statusVersion")) {
      statusVersion = json["statusVersion"];
    }
  }

  /** Create JSON Object for RoomStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (autoMatchingStatus != null) {
      output["autoMatchingStatus"] = autoMatchingStatus.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (participants != null) {
      output["participants"] = participants.map((participantsItem) => participantsItem.toJson()).toList();
    }
    if (roomId != null) {
      output["roomId"] = roomId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (statusVersion != null) {
      output["statusVersion"] = statusVersion;
    }

    return output;
  }

  /** Return String representation of RoomStatus */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a request to submit a score to leaderboards. */
class ScoreSubmission {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#scoreSubmission. */
  core.String kind;

  /** The leaderboard this score is being submitted to. */
  core.String leaderboardId;

  /** The new score being submitted. */
  core.int score;

  /** Additional information about this score. Values will contain no more than 64 URI-safe characters as defined by section 2.3 of RFC 3986. */
  core.String scoreTag;

  /** Create new ScoreSubmission from JSON data */
  ScoreSubmission.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("leaderboardId")) {
      leaderboardId = json["leaderboardId"];
    }
    if (json.containsKey("score")) {
      score = (json["score"] is core.String) ? core.int.parse(json["score"]) : json["score"];
    }
    if (json.containsKey("scoreTag")) {
      scoreTag = json["scoreTag"];
    }
  }

  /** Create JSON Object for ScoreSubmission */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (leaderboardId != null) {
      output["leaderboardId"] = leaderboardId;
    }
    if (score != null) {
      output["score"] = score;
    }
    if (scoreTag != null) {
      output["scoreTag"] = scoreTag;
    }

    return output;
  }

  /** Return String representation of ScoreSubmission */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for an turn-based auto-match criteria object. */
class TurnBasedAutoMatchingCriteria {

  /** A bitmask indicating when auto-matches are valid. When ANDed with other exclusive bitmasks, the result must be zero. Can be used to support exclusive roles within a game. */
  core.int exclusiveBitmask;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedAutoMatchingCriteria. */
  core.String kind;

  /** The maximum number of players that should be added to the match by auto-matching. */
  core.int maxAutoMatchingPlayers;

  /** The minimum number of players that should be added to the match by auto-matching. */
  core.int minAutoMatchingPlayers;

  /** Create new TurnBasedAutoMatchingCriteria from JSON data */
  TurnBasedAutoMatchingCriteria.fromJson(core.Map json) {
    if (json.containsKey("exclusiveBitmask")) {
      exclusiveBitmask = (json["exclusiveBitmask"] is core.String) ? core.int.parse(json["exclusiveBitmask"]) : json["exclusiveBitmask"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("maxAutoMatchingPlayers")) {
      maxAutoMatchingPlayers = json["maxAutoMatchingPlayers"];
    }
    if (json.containsKey("minAutoMatchingPlayers")) {
      minAutoMatchingPlayers = json["minAutoMatchingPlayers"];
    }
  }

  /** Create JSON Object for TurnBasedAutoMatchingCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (exclusiveBitmask != null) {
      output["exclusiveBitmask"] = exclusiveBitmask;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (maxAutoMatchingPlayers != null) {
      output["maxAutoMatchingPlayers"] = maxAutoMatchingPlayers;
    }
    if (minAutoMatchingPlayers != null) {
      output["minAutoMatchingPlayers"] = minAutoMatchingPlayers;
    }

    return output;
  }

  /** Return String representation of TurnBasedAutoMatchingCriteria */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a turn-based match resource object. */
class TurnBasedMatch {

  /** The ID of the application being played. */
  core.String applicationId;

  /** Criteria for auto-matching players into this match. */
  TurnBasedAutoMatchingCriteria autoMatchingCriteria;

  /** Details about the match creation. */
  TurnBasedMatchModification creationDetails;

  /** The data / game state for this match. */
  TurnBasedMatchData data;

  /** This short description is generated by our servers based on turn state and is localized and worded relative to the player requesting the match. It is intended to be displayed when the match is shown in a list. */
  core.String description;

  /** The ID of the participant that invited the user to the match. Not set if the user was not invited to the match. */
  core.String inviterId;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatch. */
  core.String kind;

  /** Details about the last update to the match. */
  TurnBasedMatchModification lastUpdateDetails;

  /** Globally unique ID for a turn-based match. */
  core.String matchId;

  /** The number of the match in a chain of rematches. Will be set to 1 for the first match and incremented by 1 for each rematch. */
  core.int matchNumber;

  /** The version of this match: an increasing counter, used to avoid out-of-date updates to the match. */
  core.int matchVersion;

  /** The participants involved in the match, along with their statuses. Includes participants who have left or declined invitations. */
  core.List<TurnBasedMatchParticipant> participants;

  /** The ID of the participant that is taking a turn. */
  core.String pendingParticipantId;

  /** The data / game state for the previous match; set for the first turn of rematches only. */
  TurnBasedMatchData previousMatchData;

  /** The ID of a rematch of this match. Only set for completed matches that have been rematched. */
  core.String rematchId;

  /** The results reported for this match. */
  core.List<ParticipantResult> results;

  /** The status of the match.
Possible values are:  
- "MATCH_AUTO_MATCHING" - One or more slots need to be filled by auto-matching; the match cannot be established until they are filled. 
- "MATCH_ACTIVE" - The match has started. 
- "MATCH_COMPLETE" - The match has finished. 
- "MATCH_CANCELED" - The match was canceled. 
- "MATCH_EXPIRED" - The match expired due to inactivity. 
- "MATCH_DELETED" - The match should no longer be shown on the client. Returned only for tombstones for matches when sync is called. */
  core.String status;

  /** The status of the current user in the match. Derived from the match type, match status, the user's participant status, and the pending participant for the match.
Possible values are:  
- "USER_INVITED" - The user has been invited to join the match and has not responded yet. 
- "USER_AWAITING_TURN" - The user is waiting for their turn. 
- "USER_TURN" - The user has an action to take in the match. 
- "USER_MATCH_COMPLETED" - The match has ended (it is completed, canceled, or expired.) */
  core.String userMatchStatus;

  /** The variant / mode of the application being played; can be any integer value, or left blank. */
  core.int variant;

  /** The ID of another participant in the match that can be used when describing the participants the user is playing with. */
  core.String withParticipantId;

  /** Create new TurnBasedMatch from JSON data */
  TurnBasedMatch.fromJson(core.Map json) {
    if (json.containsKey("applicationId")) {
      applicationId = json["applicationId"];
    }
    if (json.containsKey("autoMatchingCriteria")) {
      autoMatchingCriteria = new TurnBasedAutoMatchingCriteria.fromJson(json["autoMatchingCriteria"]);
    }
    if (json.containsKey("creationDetails")) {
      creationDetails = new TurnBasedMatchModification.fromJson(json["creationDetails"]);
    }
    if (json.containsKey("data")) {
      data = new TurnBasedMatchData.fromJson(json["data"]);
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("inviterId")) {
      inviterId = json["inviterId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastUpdateDetails")) {
      lastUpdateDetails = new TurnBasedMatchModification.fromJson(json["lastUpdateDetails"]);
    }
    if (json.containsKey("matchId")) {
      matchId = json["matchId"];
    }
    if (json.containsKey("matchNumber")) {
      matchNumber = json["matchNumber"];
    }
    if (json.containsKey("matchVersion")) {
      matchVersion = json["matchVersion"];
    }
    if (json.containsKey("participants")) {
      participants = json["participants"].map((participantsItem) => new TurnBasedMatchParticipant.fromJson(participantsItem)).toList();
    }
    if (json.containsKey("pendingParticipantId")) {
      pendingParticipantId = json["pendingParticipantId"];
    }
    if (json.containsKey("previousMatchData")) {
      previousMatchData = new TurnBasedMatchData.fromJson(json["previousMatchData"]);
    }
    if (json.containsKey("rematchId")) {
      rematchId = json["rematchId"];
    }
    if (json.containsKey("results")) {
      results = json["results"].map((resultsItem) => new ParticipantResult.fromJson(resultsItem)).toList();
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("userMatchStatus")) {
      userMatchStatus = json["userMatchStatus"];
    }
    if (json.containsKey("variant")) {
      variant = json["variant"];
    }
    if (json.containsKey("withParticipantId")) {
      withParticipantId = json["withParticipantId"];
    }
  }

  /** Create JSON Object for TurnBasedMatch */
  core.Map toJson() {
    var output = new core.Map();

    if (applicationId != null) {
      output["applicationId"] = applicationId;
    }
    if (autoMatchingCriteria != null) {
      output["autoMatchingCriteria"] = autoMatchingCriteria.toJson();
    }
    if (creationDetails != null) {
      output["creationDetails"] = creationDetails.toJson();
    }
    if (data != null) {
      output["data"] = data.toJson();
    }
    if (description != null) {
      output["description"] = description;
    }
    if (inviterId != null) {
      output["inviterId"] = inviterId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastUpdateDetails != null) {
      output["lastUpdateDetails"] = lastUpdateDetails.toJson();
    }
    if (matchId != null) {
      output["matchId"] = matchId;
    }
    if (matchNumber != null) {
      output["matchNumber"] = matchNumber;
    }
    if (matchVersion != null) {
      output["matchVersion"] = matchVersion;
    }
    if (participants != null) {
      output["participants"] = participants.map((participantsItem) => participantsItem.toJson()).toList();
    }
    if (pendingParticipantId != null) {
      output["pendingParticipantId"] = pendingParticipantId;
    }
    if (previousMatchData != null) {
      output["previousMatchData"] = previousMatchData.toJson();
    }
    if (rematchId != null) {
      output["rematchId"] = rematchId;
    }
    if (results != null) {
      output["results"] = results.map((resultsItem) => resultsItem.toJson()).toList();
    }
    if (status != null) {
      output["status"] = status;
    }
    if (userMatchStatus != null) {
      output["userMatchStatus"] = userMatchStatus;
    }
    if (variant != null) {
      output["variant"] = variant;
    }
    if (withParticipantId != null) {
      output["withParticipantId"] = withParticipantId;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatch */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a turn-based match creation request. */
class TurnBasedMatchCreateRequest {

  /** Criteria for auto-matching players into this match. */
  TurnBasedAutoMatchingCriteria autoMatchingCriteria;

  /** The player ids to invite to the match. */
  core.List<core.String> invitedPlayerIds;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchCreateRequest. */
  core.String kind;

  /** A randomly generated numeric ID. This number is used at the server to ensure that the request is handled correctly across retries. */
  core.int requestId;

  /** The variant / mode of the application to be played. This can be any integer value, or left blank. You should use a small number of variants to keep the auto-matching pool as large as possible. */
  core.int variant;

  /** Create new TurnBasedMatchCreateRequest from JSON data */
  TurnBasedMatchCreateRequest.fromJson(core.Map json) {
    if (json.containsKey("autoMatchingCriteria")) {
      autoMatchingCriteria = new TurnBasedAutoMatchingCriteria.fromJson(json["autoMatchingCriteria"]);
    }
    if (json.containsKey("invitedPlayerIds")) {
      invitedPlayerIds = json["invitedPlayerIds"].toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("requestId")) {
      requestId = (json["requestId"] is core.String) ? core.int.parse(json["requestId"]) : json["requestId"];
    }
    if (json.containsKey("variant")) {
      variant = json["variant"];
    }
  }

  /** Create JSON Object for TurnBasedMatchCreateRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (autoMatchingCriteria != null) {
      output["autoMatchingCriteria"] = autoMatchingCriteria.toJson();
    }
    if (invitedPlayerIds != null) {
      output["invitedPlayerIds"] = invitedPlayerIds.toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (requestId != null) {
      output["requestId"] = requestId;
    }
    if (variant != null) {
      output["variant"] = variant;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchCreateRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a turn-based match data object. */
class TurnBasedMatchData {

  /** The byte representation of the data (limited to 128 kB), as a Base64-encoded string with the URL_SAFE encoding option. */
  core.String data;

  /** True if this match has data available but it wasn't returned in a list response; fetching the match individually will retrieve this data. */
  core.bool dataAvailable;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchData. */
  core.String kind;

  /** Create new TurnBasedMatchData from JSON data */
  TurnBasedMatchData.fromJson(core.Map json) {
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("dataAvailable")) {
      dataAvailable = json["dataAvailable"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for TurnBasedMatchData */
  core.Map toJson() {
    var output = new core.Map();

    if (data != null) {
      output["data"] = data;
    }
    if (dataAvailable != null) {
      output["dataAvailable"] = dataAvailable;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchData */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for sending a turn-based match data object. */
class TurnBasedMatchDataRequest {

  /** The byte representation of the data (limited to 128 kB), as a Base64-encoded string with the URL_SAFE encoding option. */
  core.String data;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchDataRequest. */
  core.String kind;

  /** Create new TurnBasedMatchDataRequest from JSON data */
  TurnBasedMatchDataRequest.fromJson(core.Map json) {
    if (json.containsKey("data")) {
      data = json["data"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for TurnBasedMatchDataRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (data != null) {
      output["data"] = data;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchDataRequest */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of turn-based matches. */
class TurnBasedMatchList {

  /** The matches. */
  core.List<TurnBasedMatch> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchList. */
  core.String kind;

  /** The pagination token for the next page of results. */
  core.String nextPageToken;

  /** Create new TurnBasedMatchList from JSON data */
  TurnBasedMatchList.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new TurnBasedMatch.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for TurnBasedMatchList */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchList */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for turn-based match modification metadata. */
class TurnBasedMatchModification {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchModification. */
  core.String kind;

  /** The timestamp at which they modified the match, in milliseconds since the epoch in UTC. */
  core.int modifiedTimestampMillis;

  /** The ID of the participant that modified the match. */
  core.String participantId;

  /** Create new TurnBasedMatchModification from JSON data */
  TurnBasedMatchModification.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("modifiedTimestampMillis")) {
      modifiedTimestampMillis = (json["modifiedTimestampMillis"] is core.String) ? core.int.parse(json["modifiedTimestampMillis"]) : json["modifiedTimestampMillis"];
    }
    if (json.containsKey("participantId")) {
      participantId = json["participantId"];
    }
  }

  /** Create JSON Object for TurnBasedMatchModification */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (modifiedTimestampMillis != null) {
      output["modifiedTimestampMillis"] = modifiedTimestampMillis;
    }
    if (participantId != null) {
      output["participantId"] = participantId;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchModification */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a participant in a turn-based match. */
class TurnBasedMatchParticipant {

  /** True if this participant was auto-matched with the requesting player. */
  core.bool autoMatched;

  /** Information about a player that has been anonymously auto-matched against the requesting player. (Either player or autoMatchedPlayer will be set.) */
  AnonymousPlayer autoMatchedPlayer;

  /** An identifier for the participant in the scope of the match. Cannot be used to identify a player across matches or in other contexts. */
  core.String id;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchParticipant. */
  core.String kind;

  /** Information about the player. Not populated if this player was anonymously auto-matched against the requesting player. (Either player or autoMatchedPlayer will be set.) */
  Player player;

  /** The status of the participant with respect to the match.
Possible values are:  
- "PARTICIPANT_NOT_INVITED_YET" - The participant is slated to be invited to the match, but the invitation has not been sent; the invite will be sent when it becomes their turn. 
- "PARTICIPANT_INVITED" - The participant has been invited to join the match, but has not yet responded. 
- "PARTICIPANT_JOINED" - The participant has joined the match (either after creating it or accepting an invitation.) 
- "PARTICIPANT_DECLINED" - The participant declined an invitation to join the match. 
- "PARTICIPANT_LEFT" - The participant joined the match and then left it. 
- "PARTICIPANT_FINISHED" - The participant finished playing in the match. 
- "PARTICIPANT_UNRESPONSIVE" - The participant did not take their turn in the allotted time. */
  core.String status;

  /** Create new TurnBasedMatchParticipant from JSON data */
  TurnBasedMatchParticipant.fromJson(core.Map json) {
    if (json.containsKey("autoMatched")) {
      autoMatched = json["autoMatched"];
    }
    if (json.containsKey("autoMatchedPlayer")) {
      autoMatchedPlayer = new AnonymousPlayer.fromJson(json["autoMatchedPlayer"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("player")) {
      player = new Player.fromJson(json["player"]);
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
  }

  /** Create JSON Object for TurnBasedMatchParticipant */
  core.Map toJson() {
    var output = new core.Map();

    if (autoMatched != null) {
      output["autoMatched"] = autoMatched;
    }
    if (autoMatchedPlayer != null) {
      output["autoMatchedPlayer"] = autoMatchedPlayer.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (player != null) {
      output["player"] = player.toJson();
    }
    if (status != null) {
      output["status"] = status;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchParticipant */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a rematch response. */
class TurnBasedMatchRematch {

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchRematch. */
  core.String kind;

  /** The old match that the rematch was created from; will be updated such that the rematchId field will point at the new match. */
  TurnBasedMatch previousMatch;

  /** The newly created match; a rematch of the old match with the same participants. */
  TurnBasedMatch rematch;

  /** Create new TurnBasedMatchRematch from JSON data */
  TurnBasedMatchRematch.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("previousMatch")) {
      previousMatch = new TurnBasedMatch.fromJson(json["previousMatch"]);
    }
    if (json.containsKey("rematch")) {
      rematch = new TurnBasedMatch.fromJson(json["rematch"]);
    }
  }

  /** Create JSON Object for TurnBasedMatchRematch */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (previousMatch != null) {
      output["previousMatch"] = previousMatch.toJson();
    }
    if (rematch != null) {
      output["rematch"] = rematch.toJson();
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchRematch */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a turn-based match results object. */
class TurnBasedMatchResults {

  /** The final match data. */
  TurnBasedMatchDataRequest data;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchResults. */
  core.String kind;

  /** The version of the match being updated. */
  core.int matchVersion;

  /** The match results for the participants in the match. */
  core.List<ParticipantResult> results;

  /** Create new TurnBasedMatchResults from JSON data */
  TurnBasedMatchResults.fromJson(core.Map json) {
    if (json.containsKey("data")) {
      data = new TurnBasedMatchDataRequest.fromJson(json["data"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("matchVersion")) {
      matchVersion = json["matchVersion"];
    }
    if (json.containsKey("results")) {
      results = json["results"].map((resultsItem) => new ParticipantResult.fromJson(resultsItem)).toList();
    }
  }

  /** Create JSON Object for TurnBasedMatchResults */
  core.Map toJson() {
    var output = new core.Map();

    if (data != null) {
      output["data"] = data.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (matchVersion != null) {
      output["matchVersion"] = matchVersion;
    }
    if (results != null) {
      output["results"] = results.map((resultsItem) => resultsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchResults */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for a list of turn-based matches returned from a sync. */
class TurnBasedMatchSync {

  /** The matches. */
  core.List<TurnBasedMatch> items;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchSync. */
  core.String kind;

  /** True if there were more matches available to fetch at the time the response was generated (which were not returned due to page size limits.) */
  core.bool moreAvailable;

  /** The pagination token for the next page of results. */
  core.String nextPageToken;

  /** Create new TurnBasedMatchSync from JSON data */
  TurnBasedMatchSync.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new TurnBasedMatch.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("moreAvailable")) {
      moreAvailable = json["moreAvailable"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for TurnBasedMatchSync */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (moreAvailable != null) {
      output["moreAvailable"] = moreAvailable;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchSync */
  core.String toString() => JSON.encode(this.toJson());

}

/** This is a JSON template for the object representing a turn. */
class TurnBasedMatchTurn {

  /** The shared game state data after the turn is over. */
  TurnBasedMatchDataRequest data;

  /** Uniquely identifies the type of this resource. Value is always the fixed string games#turnBasedMatchTurn. */
  core.String kind;

  /** The version of this match: an increasing counter, used to avoid out-of-date updates to the match. */
  core.int matchVersion;

  /** The ID of the participant who should take their turn next. May be set to the current player's participant ID to update match state without changing the turn. If not set, the match will wait for other player(s) to join via automatching; this is only valid if automatch criteria is set on the match with remaining slots for automatched players. */
  core.String pendingParticipantId;

  /** The match results for the participants in the match. */
  core.List<ParticipantResult> results;

  /** Create new TurnBasedMatchTurn from JSON data */
  TurnBasedMatchTurn.fromJson(core.Map json) {
    if (json.containsKey("data")) {
      data = new TurnBasedMatchDataRequest.fromJson(json["data"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("matchVersion")) {
      matchVersion = json["matchVersion"];
    }
    if (json.containsKey("pendingParticipantId")) {
      pendingParticipantId = json["pendingParticipantId"];
    }
    if (json.containsKey("results")) {
      results = json["results"].map((resultsItem) => new ParticipantResult.fromJson(resultsItem)).toList();
    }
  }

  /** Create JSON Object for TurnBasedMatchTurn */
  core.Map toJson() {
    var output = new core.Map();

    if (data != null) {
      output["data"] = data.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (matchVersion != null) {
      output["matchVersion"] = matchVersion;
    }
    if (pendingParticipantId != null) {
      output["pendingParticipantId"] = pendingParticipantId;
    }
    if (results != null) {
      output["results"] = results.map((resultsItem) => resultsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of TurnBasedMatchTurn */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
