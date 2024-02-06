//
//  API.swift
//  NewsUIkit
//
//  Created by ธนพงษ์ แจ้งสว่าง on 7/2/2567 BE.
//

import Foundation
import Alamofire

final class APICaller {
    static let shared = APICaller()
    
    private init() {}
    
    public func getTopStories(complete: @escaping (Result<[Article], Error>) -> Void) {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=tesla&from=2024-01-06&sortBy=publishedAt&apiKey=ae5179e1b79a4080870fc521de3cef03") else {
            return
        }
        
        AF.request(url).responseData { response in
            switch response.result {
            case .success(let data):
                do {
                    let result = try JSONDecoder().decode(Welcome.self, from: data)
                    print("Articles:", result.articles.count)
                    complete(.success(result.articles))
                } catch {
                    complete(.failure(error))
                }
            case .failure(let error):
                complete(.failure(error))
            }
        }
    }
}
