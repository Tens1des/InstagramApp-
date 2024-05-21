//
//  DataBaseManager .swift
//  InstagramApp
//
//  Created by Роман  on 14.05.2024.
//

import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
    //MARK: - Public
    
    public func canCreateNewUser(with email: String , username: String , completion: (Bool)-> Void ) {
        completion(true)
    }
    
    
    public func insertNewUser(with email: String, username: String, completion: @escaping(Bool) -> Void) {
        let key = email.safeDatabaseKey()
        database.child(key).setValue(["username":username]) { error, _ in
            if error == nil {
                completion(true)
                return
            }
            else {
                completion(false)
                return 
            }
        }
    }
    
    
}
