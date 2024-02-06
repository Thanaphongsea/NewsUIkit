//
//  Model.swift
//  NewsUIkit
//
//  Created by ธนพงษ์ แจ้งสว่าง on 7/2/2567 BE.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable {
    let source: Source
    let author, title, description: String?
    let url: String
    let urlToImage: String?
    let publishedAt: String
    let content: String
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String
}
