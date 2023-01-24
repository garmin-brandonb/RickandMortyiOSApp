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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> void) {
        
    }
    
}
