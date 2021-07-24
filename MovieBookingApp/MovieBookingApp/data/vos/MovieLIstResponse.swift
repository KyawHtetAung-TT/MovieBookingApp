//
//  MovieLIstResponse.swift
//  MovieBookingApp
//
//  Created by Daniel Wilson on 7/24/21.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let movielistResponse = try? newJSONDecoder().decode(MovielistResponse.self, from: jsonData)

import Foundation

// MARK: - MovielistResponse
struct NSMovielistResponse: Codable {
    let code: Int?
    let message: String?
    let movie: [dataMovielist]?
}

// MARK: - Datum
struct dataMovielist: Codable {
    let id: Int?
    let originalTitle, releaseDate: String?
    let genres: [String]?
    let posterPath: String?

    enum CodingKeys: String, CodingKey {
        case id
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case genres
        case posterPath = "poster_path"
    }
}
