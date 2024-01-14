//
//  SpotifyAPIManager.swift
//  Radiant
//
//  Created by Ege Çam on 13.01.2024.
//

import Foundation
import Moya

enum SpotifyAuthAPI {
    case getToken(code: String, redirectUri: String)
}

extension SpotifyAuthAPI: TargetType {
    var baseURL: URL {
        return URL(string: "https://accounts.spotify.com/api/token")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        return .post
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .getToken(let code, let redirectUri):
            return .requestParameters(parameters: [
                "grant_type": "authorization_code",
                "code": code,
                "redirect_uri": redirectUri
            ], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return ["Authorization": "Basic \(Data("175419afb9354fc0b256c0e9ce81d5e6:aa0638fce1c343c5aa089e173f3ac7ea".utf8).base64EncodedString())"]
    }
}
