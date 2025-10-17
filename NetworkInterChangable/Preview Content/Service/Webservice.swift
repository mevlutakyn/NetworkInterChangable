//
//  Webservice.swift
//  NetworkInterChangable
//
//  Created by Mevlüt Akküyün on 17.06.2025.
//

import Foundation
enum error: Error {
    case invalidURL
    case InvalidServiceError
}

struct Webservice : NetworkService {
    var type = "Webservice"
    
    func download (_ resource: String) async throws -> [User] {
        guard let url = URL(string: resource) else {
            throw error.invalidURL
        }
        let (data , response) = try await URLSession.shared.data(from: url)
        guard let httpresponse = response as? HTTPURLResponse , httpresponse.statusCode == 200 else {
            throw error.InvalidServiceError
        }
        return try JSONDecoder().decode([User].self,from: data)
            
    }
}
