//
//  ErrorApi.swift
//  CodigosPostal
//
//  Created by Nuno Domingues on 21/07/2019.
//  Copyright © 2019 NDD. All rights reserved.
//

import Foundation

enum ErrorAPI: Error {
    case invalidData
    case responseFailure
    case requestFailure
    case JSONParseFailure
    case JSONConversionFailure
    
    var localizedDescription: String {
        switch self {
        case .invalidData:
            return "Invalid Data"
        case .responseFailure:
            return "Response Failure"
        case .requestFailure:
            return "Request Failure"
        case .JSONParseFailure:
            return "JSON Parse Failure"
        case .JSONConversionFailure:
            return "JSON ConversionFailure"
        }
    }
}
