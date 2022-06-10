//
//  YoutubeSearchResonce .swift
//  Kinopoisk clone
//
//  Created by Gleb Glushok on 10.06.2022.
//

import Foundation

struct YoutubeSearchResponce: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
