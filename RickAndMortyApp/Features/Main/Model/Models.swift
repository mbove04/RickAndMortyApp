//
//  Info.swift
//  RickAndMortyApp
//
//  Created by Martin Bove on 25/10/22.
//

import Foundation

struct CharacterInfoModel: Codable {
    let info: Info
    let results: [CharacterModel]
}

struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}

struct CharacterModel: Codable{
    public let id: Int
    public let name: String
    public let status: String
    public let species: String
    public let type: String
    public let gender: String
    public let origin: CharacterOriginModel
    public let location: CharacterLocationModel
    public let image: String
    public let episode: [String]
    public let url: String
    public let created: String
}

struct LocationInfoModel: Codable {
    let info: Info
    let results: [LocationModel]
}

public struct LocationModel: Codable, Identifiable  {
    public let id: Int
    public let name: String
    public let type: String
    public let dimension: String
    public let residents: [String]
    public let url: String
    public let created: String
}

public struct CharacterOriginModel: Codable {
    public let name: String
    public let url: String
}

public struct CharacterLocationModel: Codable {
    public let name: String
    public let url: String
}

public enum Gender: String {
    case female = "female"
    case male = "male"
    case genderless = "genderless"
    case unknown = "unknown"
    case none = ""
}

public enum Status: String {
    case alive = "alive"
    case dead = "dead"
    case unknown = "unknown"
    case none = ""
}
