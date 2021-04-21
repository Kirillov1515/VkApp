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
    case something = "Something"
}

struct Group {
    var imagePath: String
    var name: String
    var theme: Theme
    var isMyGroup: Bool
    
    func isEqual(to group: Group) -> Bool {
        let isEqualImagePath = (self.imagePath == group.imagePath)
        let isEqualName = (self.name == group.name)
        let isEqualTheme = (self.theme == group.theme)
        let isEqualIsMyGroup = (self.isMyGroup == group.isMyGroup)
        return isEqualImagePath && isEqualName && isEqualTheme && isEqualIsMyGroup
    }
}
