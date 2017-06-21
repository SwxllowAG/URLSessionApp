//
//  Book.swift
//  URLSessionApp
//
//  Created by Galym Kulyn on 20.06.2017.
//  Copyright © 2017 galymco. All rights reserved.
//

import Foundation

class Book {
    var title: String?
    var authors: [String]?
    var smallThumbnail: String?
    var thumbnail: String?
    var description: String?
    var publishedDate: String?
    
    init(title: String?, authors: [String]?, smallThumbnail: String?, thumbnail: String?, description: String?, publishedDate: String?) {
        self.title = title
        self.authors = authors
        self.smallThumbnail = smallThumbnail
        self.thumbnail = thumbnail
        self.description = description
        self.publishedDate = publishedDate
    }
}
