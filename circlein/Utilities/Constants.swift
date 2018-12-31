//
//  Constants.swift
//  circlein
//
//  Created by Menem Ragab on 12/30/18.
//  Copyright © 2018 Menem Ragab. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

//URL
let API_VERSION = "v1"
let LOCALSERVER = "http://localhost:3005/"
let DOMAIN = "https://traincoinpm.herokuapp.com/"
let BASE_URL = "\(DOMAIN)\(API_VERSION)/"
let URL_REGISTER = "\(BASE_URL)account/register"


// Segues

let TO_LOGIN = "toLogin"
let TO_CREATEACCOUNT = "toCreateAccount"
let UNWIND = "unwindtoMenu"

// UserDefaults

let LOGGED_IN_KEY = "loggedIn"
let TOKEN_KEY = "token"
let USER_EMAIL = "userEmail"
