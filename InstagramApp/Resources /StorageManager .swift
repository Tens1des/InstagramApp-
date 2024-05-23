//
//  StorageManager .swift
//  InstagramApp
//
//  Created by Роман  on 14.05.2024.
//

import FirebaseStorage
import Foundation


public class StorageManager {
    
    static let shared = StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    
    //MARK: - Public
    
    public func uploadUserPhotoPost(model: UserPost, completion: @escaping (Result<URL, Error>)->Void) {
        
    }
    
    public func downloadImage( with reference: String , completion: @escaping (Result<URL,IGStorageManagerError>)-> Void){
        bucket.child(reference).downloadURL(completion: {url, error in
            guard let url = url, error == nil else {
                completion(.failure(.failedToDownload))
                return
            }
            completion(.success(url))
        })
    }
    
    public enum UserPostType {
        case photo, video
    }
    
    public enum IGStorageManagerError: Error {
        case failedToDownload
    }

    public struct UserPost {
        let postType: UserPostType
    }
}
