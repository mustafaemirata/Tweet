//
//  AuthService.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 17.01.2026.
//
import FirebaseAuth
import Foundation

class AuthService {

    // singleton tasarım yaptık -> her yerden tek bir belleğe erişimle bellek tasarrufu sağladık
    static let shared=AuthService()
    
    
    @MainActor
    func login(withEmail email:String,password:String)async throws{
        
        
    }
    @MainActor
    func createUser(withEmail email:String,password:String,fullname:String, username:String)async throws{
        do{
            // sonuç oluşturulur ilk olarak
            let result=try await Auth.auth().createUser(withEmail: email, password: password)
            print("createn user \(result.user.uid)")
        }catch {
            print("Kayıtta hata oldu. \(error.localizedDescription)")
        }
    }
}
