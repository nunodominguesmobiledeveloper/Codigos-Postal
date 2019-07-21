//
//  Endpoint.swift
//  CodigosPostal
//
//  Created by Nuno Domingues on 21/07/2019.
//  Copyright © 2019 NDD. All rights reserved.
//

import Foundation

protocol Endpoint {
    var base: String { get }
    var path: String { get }
}

extension Endpoint {
    
    var urlComponents: URLComponents {
        var components: URLComponents = URLComponents(string: base)!
        components.path = path
        
        return components
    }
    
    var request: URLRequest {
        guard let url = urlComponents.url else { fatalError("Invalid Url")}
        return URLRequest(url: url)
    }
}
