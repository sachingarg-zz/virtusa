//
//  Service.swift
//  CommentsProject
//
//  Created by Sachin on 12/16/20.
//

import Foundation

enum APIndPoint {
    static let commentUrl = "https://jsonplaceholder.typicode.com/posts/1/comments"
}

enum HandleCommentError : String, Error {
    case invalidURL = "url is invalid"
    case invalidData = "recieved data is invalid"
    case jsonParsError = "Failed in parsing json data"
    case invalidRequest = "Request is invalid"
}


class Service : NSObject {
    
    static func getComment(urlString : String, completeHandler :  @escaping (Result<[Comment]?, Error>) -> Void){
        
        guard let url = URL(string: urlString) else {
            completeHandler(.failure(HandleCommentError.invalidURL))
            return
            
        }
     //"https://jsonplaceholder.typicode.com/posts/1/comments"
        let task = URLSession.shared.dataTask(with: url) { (data, response , error) in
            if let _ = error  {
                completeHandler(.failure(HandleCommentError.invalidRequest))
                return
                
            }
            
            //check the reponse here with status code
            
            guard let data = data else {
                completeHandler(.failure(HandleCommentError.invalidData))
                return
            }
            
            
            do{
                
                let comments = try JSONDecoder().decode([Comment].self, from: data)
                print(comments)
                completeHandler(.success(comments))
                
                
            }catch let jsonerror{
                print(jsonerror.localizedDescription)
                completeHandler(.failure(HandleCommentError.jsonParsError))            }
            
        }
        
        task.resume()
        
    }
}
