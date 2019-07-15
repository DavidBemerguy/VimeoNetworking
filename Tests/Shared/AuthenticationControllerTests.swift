//
//  AuthenticationControllerTests.swift
//  VimeoNetworking-iOS
//
//  Created by David Bemerguy on 15/07/2019.
//  Copyright © 2019 Vimeo. All rights reserved.
//

import XCTest
@testable import VimeoNetworking

class AuthenticationControllerTests : XCTestCase {
    
    let ClientIdentifier = "CLIENT_IDENTIFIER"
    let ClientSecret = "CLIENT_SECRET"
    
    lazy var defaultConfiguration = { AppConfiguration(clientIdentifier: ClientIdentifier, clientSecret: ClientSecret, scopes: [], keychainService: "") }()
    lazy var defaultClient: VimeoClient = { VimeoClient(appConfiguration: defaultConfiguration, configureSessionManagerBlock: nil) }()
    lazy var authenticationController = { AuthenticationController(client: defaultClient, appConfiguration: defaultConfiguration, configureSessionManagerBlock: nil) }()
    
    func test_default_auth_URL() {
        let codeGrant = authenticationController.codeGrantAuthorizationURL()
        
        guard let urlComponents = URLComponents(url: codeGrant, resolvingAgainstBaseURL: true) else {
            XCTFail("Unable to retrieve components from code grant url")
            return
        }
        
        guard let queryItems = urlComponents.queryItems else {
            XCTFail("No query items available in code grant url")
            return
        }
        
        let clientIdItem = queryItems.first { $0.name == "client_id" }
        XCTAssertEqual(clientIdItem?.value, ClientIdentifier)
        
        let redirectUriItem = queryItems.first { $0.name == "redirect_uri" }
        XCTAssertEqual(redirectUriItem?.value, "vimeo\(ClientIdentifier)://auth")
    }
    
    func test_auth_URL_with_email_and_name_placeholder() {
        let codeGrant = authenticationController.codeGrantAuthorizationURL()
        
        guard let urlComponents = URLComponents(url: codeGrant, resolvingAgainstBaseURL: true) else {
            XCTFail("Unable to retrieve components from code grant url")
            return
        }
        
        guard let queryItems = urlComponents.queryItems else {
            XCTFail("No query items available in code grant url")
            return
        }
        
        let authAction = queryItems.first { $0.name == "auth_action" }
        XCTAssertEqual(authAction?.value, "login")
    
    }
}