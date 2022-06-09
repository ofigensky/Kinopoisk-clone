//
//  Movie.swift
//  Kinopoisk clone
//
//  Created by Gleb Glushok on 09.06.2022.
//

import Foundation

struct MovieResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
    let title: String?
    let overview: String?
    let poster_path: String?
    let media_type: String?
}
