//
//  AuthManeger .swift
//  InstagramApp
//
//  Created by Роман  on 14.05.2024.
//

import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager()
    
    //MARK: - Public
    
    public func registerNewUser(username: String, email: String, password: String) {
        
    }
    
    public func loginUser(username: String? , email: String?, password: String, completion: ((Bool) -> Void)) {
        if let email = email {
            //Email log in
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard authResult != nil , error == nil else {
                   completion(false)
                    return
                }
                completion(true)
            }
        }
        else if let username = username {
            //Username Log in
            print(username)
        }
    }
}
