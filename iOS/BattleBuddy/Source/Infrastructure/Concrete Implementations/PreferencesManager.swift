//
//  PreferencesManager.swift
//  BattleBuddy
//
//  Created by Mike on 8/6/19.
//  Copyright © 2019 Veritas. All rights reserved.
//

import Foundation

enum Preference: String {
    case bannerAds = "prefs_banner_ads_enabled"
    case appRatingTimestamp = "prefs_app_rating_date"
    case appRatingCheckCount = "prefs_app_rating_check_count"
    case languageOverride = "prefs_language_override"
    case nextRewardDate = "next_reward_date"
    case nextRewardAmount = "next_reward_amount"
    case favoriteMarketItems = "favorite_market_items"
}

// TODO: Make this a concrete implementation of a more generic interface!
class PreferencesManager {
    private let defaults = UserDefaults.standard

    // MARK: - Read
    func valueForDouble(_ key: String) -> Double { return defaults.double(forKey: key) }

    func valueForStringPref(_ pref: Preference) -> String? { return defaults.string(forKey: pref.rawValue) }
    func valueForDoublePref(_ pref: Preference) -> Double { return defaults.double(forKey: pref.rawValue) }
    func valueForBoolPref(_ pref: Preference) -> Bool { return defaults.bool(forKey: pref.rawValue) }
    func valueForIntPref(_ pref: Preference) -> Int { return defaults.integer(forKey: pref.rawValue) }
    func valueForArrayPref(_ pref: Preference) -> [Any]? { return defaults.array(forKey: pref.rawValue) }

    // MARK: - Write
    func update(_ pref: Preference, value: Any?) { defaults.set(value, forKey: pref.rawValue) }
    func update(_ key: String, value: Any?) { defaults.set(value, forKey: key) }
}
