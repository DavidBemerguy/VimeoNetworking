//
//  AppConfiguration.swift
//  VimeoNetworkingExample-iOS
//
//  Created by Huebner, Rob on 3/28/16.
//  Copyright © 2016 Vimeo. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import Foundation

/**
 *  Stores all static information relevant to a client application
 */
public struct AppConfiguration
{
    public let clientIdentifier: String
    public let clientSecret: String
    public let scopes: [Scope]
    
    let keychainService: String
    let keychainAccessGroup: String?
    
    public let apiVersion: String
    
    /**
     Create a new `AppConfiguration`
     
     - parameter clientIdentifier:           The client key designated by the api for your application
     - parameter clientSecret:        The client secret designated by the api for your application
     - parameter scopes:              An array of `Scope`s that your application requests
     - parameter keychainService:     Identifes your application to the system keychain, defaults to `KeychainServiceVimeo`
     - parameter keychainAccessGroup: Access group your application should use for the system keychain, defaults to nil
     - parameter apiVersion:          API version your requests should use, defaults to `VimeoDefaultAPIVersionString`
     
     - returns: an initialized AppConfiguration
     */
    public init(clientIdentifier: String,
                clientSecret: String,
                scopes: [Scope],
                keychainService: String,
                keychainAccessGroup: String?,
                apiVersion: String = VimeoDefaultAPIVersionString)
    {
        self.clientIdentifier = clientIdentifier
        self.clientSecret = clientSecret
        self.scopes = scopes
        self.keychainService = keychainService
        self.keychainAccessGroup = keychainAccessGroup
        self.apiVersion = apiVersion
    }
}
