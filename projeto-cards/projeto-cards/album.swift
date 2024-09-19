//
//  album.swift
//  projeto-cards
//
//  Created by ANNA CLARA FERRAZ on 18/09/24.
//

import Foundation

// TEMA: Álbuns de música
// Aqui eu crio minha struct de álbum, onde declarei os atributos que meus álbuns devem ter
struct Album {
    var image:String // capa do álbum
    var name:String // nome do álbum
    var artist:String // nome do artista
    var releaseYear:String // ano de lançamento
    var favorite:Bool // se o álbum é um dos meus favoritos
}

// criando meus álbums
var album1 = Album(image: "sticker", name: "Sticker - The 3rd Album", artist: "NCT 127", releaseYear: "2021", favorite: true)
var album2 = Album(image: "chillKill", name: "Chill Kill - The 3rd Album", artist: "Red Velvet", releaseYear: "2023", favorite: false)
var album3 = Album(image: "songMachine", name: "Song Machine, Season One: Strange Timez (Deluxe)", artist: "Gorillaz", releaseYear: "2020", favorite: true)
var album4 = Album(image: "youth", name: "YOUTH - The 1st Album", artist: "DOYOUNG", releaseYear: "2024", favorite: true)
var album5 = Album(image: "russianRoulette", name: "Russian Roulette - The 3rd Mini Album", artist: "Red Velvet", releaseYear: "2016", favorite: false)
var album6 = Album(image: "limitless", name: "NCT#127 LIMITLESS - The 2nd Mini Album", artist: "NCT 127", releaseYear: "2017", favorite: true)
var album7 = Album(image: "shortNsweet", name: "Short n' Sweet", artist: "Sabrina Carpenter", releaseYear: "2024", favorite: false)
var album8 = Album(image: "28reasons", name: "28 Reasons - The 1st Mini Album", artist: "SEULGI", releaseYear: "2022", favorite: true)
var album9 = Album(image: "cityLights", name: "City Lights - The 1st Mini Album", artist: "BAEKHYUN", releaseYear: "2019", favorite: true)
var album10 = Album(image: "perfectVelvet", name: "Perfect Velvet - The 2nd Album", artist: "Red Velvet", releaseYear: "2017", favorite: false)
