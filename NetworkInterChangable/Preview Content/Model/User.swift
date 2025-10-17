//
//  UserModel.swift
//  NetworkInterChangable
//
//  Created by Mevlüt Akküyün on 17.06.2025.
//

import Foundation
struct User : Codable{
    let id : Int
    let name , username, email : String
    let address : Address  
    let company : Company
    let phone , website : String
    
}

struct Address : Codable {
    let street , suite , city , zipcode : String
    let geo : Geo
}
struct Geo : Codable{
    let lat , lng : String
}
struct Company : Codable{
   let name , catchPhrase , bs : String
}
