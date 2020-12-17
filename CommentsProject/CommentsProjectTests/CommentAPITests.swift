//
//  CommentAPITests.swift
//  CommentsProjectTests
//
//  Created by Sachin on 12/17/20.
//

import XCTest
@testable import CommentsProject


class CommentAPITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func test_comments_Api_invalid_URL() throws {
        
        let expectedError = HandleCommentError.invalidURL
        var actualError : HandleCommentError?
        
        Service.getComment(urlString: "") { result in
            switch result{
            case .failure(let error):
                actualError = error as? HandleCommentError
            case .success(_): break
                //ignnore case
            }
        }
        
        XCTAssertEqual(expectedError, actualError)
        
    }
    
    func test_comments_Api_invalid_request() throws {
        
        let expectedError = HandleCommentError.invalidRequest
        var actualError : HandleCommentError?
        
        Service.getComment(urlString: "https://jsonplace.typicode.com/posts/1/comments") { result in
            switch result{
            case .failure(let error):
                actualError = error as? HandleCommentError
                XCTAssertEqual(expectedError, actualError)
            case .success(_): break
            }
        }
        
        
    }
    
    func test_comments_Api_invalid_data() throws {
        
        let expectedError = HandleCommentError.invalidData
        var actualError : HandleCommentError?
        
        Service.getComment(urlString: "https://jsonplaceholder.typicode.com/fakeEendpoint") { result in
            switch result{
            case .failure(let error):
                actualError = error as? HandleCommentError
                XCTAssertEqual(expectedError, actualError)
            case .success(_): break
            }
        }
        
    }
    

}
