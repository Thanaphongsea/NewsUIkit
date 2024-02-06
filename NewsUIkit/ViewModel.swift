//
//  ViewModel.swift
//  NewsUIkit
//
//  Created by ธนพงษ์ แจ้งสว่าง on 7/2/2567 BE.
//

import Foundation
import UIKit

class NewsTableViewCellViewModel {
    let title: String
    let subtitle: String
    let imageURl: URL?
    var imageData: Data? = nil
    
    init(title: String, subtitle: String, imageURl: URL?) {
        self.title = title
        self.subtitle = subtitle
        self.imageURl = imageURl
    }
    
}
