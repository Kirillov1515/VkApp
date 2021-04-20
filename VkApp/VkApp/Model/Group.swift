//
//  Group.swift
//  VkApp
//
//  Created by Macbook on 20.04.2021.
//

import Foundation

enum Theme: String {
    case humor = "Humor"
    case news = "News"
    case cinema = "Cinema"
    case sport = "Sport"
}

struct Group {
    var imagePath: String
    var name: String
    var theme: Theme
}
