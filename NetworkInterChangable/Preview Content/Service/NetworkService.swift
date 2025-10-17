//
//  NetworkService.swift
//  NetworkInterChangable
//
//  Created by Mevlüt Akküyün on 17.06.2025.
//

import Foundation
protocol NetworkService {
    func download(_ resource: String) async throws -> [User]
    var type : String { get }
}
