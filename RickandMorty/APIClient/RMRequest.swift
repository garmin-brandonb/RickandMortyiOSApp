//
//  RMRequest.swift
//  RickandMorty
//
//  Created by Jack B on 1/22/23.
//

import Foundation


/// Object that represents a single API call
final class RMRequest {
    // Query parameters
    
    /// AP Constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desired End point
    private let endpoint: RMEndpoint
    
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    /// Query arguments for API, if any
    private let queryParamters: [URLQueryItem]
    
    /// Constructed URL for the API request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        // adds a trailing slash
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParamters.isEmpty {
            string += "?"
            let argumentString = queryParamters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    ///  Computed and constructed URL
    public var url: URL? {
        return URL(string: urlString)
        
    }
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    ///  Construct  Request
    ///  - Paramters:
    ///   - endpoint: Target endpoint
    ///   - pathComponent: Collection of path components
    ///   - queryParamters: Collection of query parameters
    
    public init(endpoint: RMEndpoint,
                pathComponent: Set<String> = [],
                queryParamters: [URLQueryItem] = []) {
        
        self.endpoint = endpoint
        self.pathComponents = pathComponent
        self.queryParamters = queryParamters
    }
    
}
