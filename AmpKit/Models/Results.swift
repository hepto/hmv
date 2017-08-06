//
//  Results.swift
//  AmpKit
//
//  Created by Scott Hoyt on 8/1/17.
//  Copyright © 2017 Scott Hoyt. All rights reserved.
//

import Foundation

// Might not need this
public struct SearchResults: Codable {
    let results: Results
}

public struct Results: Codable {
    let albums: Result<MediaResult<AlbumAttributes>>?
    let artists: Result<MediaResult<ArtistAttributes>>?
    let songs: Result<MediaResult<TrackAttributes>>?
}

public struct Result<T: Codable>: Codable {
    let data: [T]

    let href: String?
    let next: String?
}

public struct MediaResult<T: Codable>: Codable {
    let id: String
    let attributes: T?
    let type: MediaType
    let href: String
    let relationships: Relationships?
}