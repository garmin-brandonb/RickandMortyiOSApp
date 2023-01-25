//
//  RMService.swift
//  RickandMorty
//
//  Created by Jack B on 1/22/23.
//

import Foundation

/// Primary API service object to Rick and Morty data
final class RMService {
    
    /// Shared signleton instance
    static let shared = RMService()
    
    
    /// Privatized Constructor
    private init() {}
    
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request Instance
    ///   - type: The type of object we expect to get back 
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<String, Error>) -> Void) {
        
    }
    
}
