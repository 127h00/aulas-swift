//
//  album.swift
//  projeto-cards
//
//  Created by ANNA CLARA FERRAZ on 18/09/24.
//

import Foundation

struct Album {
    var image:String
    var name:String
    var artist:String
    var releaseDate:String
    var favorite:Bool
}

var album1 = Album(image: "sticker", name: "Sticker - The 3rd Album", artist: "NCT 127", releaseDate: "2021", favorite: true)
var album2 = Album(image: "youth", name: "YOUTH - The 1st Album", artist: "DOYOUNG", releaseDate: "2024", favorite: true)
var album3 = Album(image: "limitless", name: "NCT#127 LIMITLESS - The 2nd Mini Album", artist: "NCT 127", releaseDate: "2017", favorite: true)
