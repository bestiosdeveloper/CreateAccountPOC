//
//  USBLocalization.swift
//  CreateAccountPOC
//
//  Created by Pramod Kumar on 23/03/20.
//  Copyright © 2020 Pramod Kumar. All rights reserved.
//

import Foundation

public enum AppSupportedLanguage: String {
    case en
    case es

    func analyticsString() -> String {
        switch self {
        case .en:
            return "english"
        case .es:
            return "spanish"
        }
    }
    
    func aemUrlPathLocaleComponent() -> String {
        if self == .es {
            return "/es-us/"
        } else {
            return "/en-us/"
        }
    }
    
    func aemUrlPathLocaleComponent(forLanguage: AppSupportedLanguage) -> String {
        if forLanguage == .es {
            return "/es-us/"
        } else {
            return "/en-us/"
        }
    }
    
    private func languagePrefString() -> String {
        switch self {
        case .en:
            return "ENG"
        case .es:
            return "SPN"
        }
    }
    
    func selectedLanguagePref(_ langCode: String) -> String {
        var language: AppSupportedLanguage = .en
        switch langCode {
        case AppSupportedLanguage.en.rawValue:
            language = AppSupportedLanguage.en
        case AppSupportedLanguage.es.rawValue:
            language = AppSupportedLanguage.es
        default:break
    }
        
        return language.languagePrefString()
    }
}

struct Localization {

    static var language: AppSupportedLanguage = .en {
        didSet {
            AppUserDefaults.save(value: language.rawValue, forKey: AppUserDefaults.Key.languagePreference)
        }
    }
    
    static var selectedLanguage: String {
        return language.analyticsString()
    }
    
    static func setDefaultLanguage() {
        
        guard let language = AppUserDefaults.value(forKey: AppUserDefaults.Key.languagePreference) as? String else {
            Localization.language = .en
            return
        }

        switch language {
        case AppSupportedLanguage.en.rawValue:
            Localization.language = .en
        case AppSupportedLanguage.es.rawValue:
            Localization.language = .es
        default:break
        }
    }

    static func localize(key: String, fileName: String = "Common") -> String {

        let language = Localization.language.rawValue

        let basePath = Bundle.main.path(forResource: language, ofType: "lproj")

        guard let path = basePath else {
            return NSLocalizedString(key, tableName: fileName, bundle: Bundle.main, value: "", comment: "")
        }

        return Bundle(path: path)?.localizedString(forKey: key, value: "", table: fileName) ?? ""
    }
}
