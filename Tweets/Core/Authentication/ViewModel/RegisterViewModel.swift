//
//  RegisterViewModel.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 17.01.2026.
//

import Foundation
import Combine
class RegisterViewModel:ObservableObject{
    @Published  var email = ""
    @Published  var password = ""
    @Published  var fullname = ""
    @Published  var username = ""
    
    func createuser() async throws{
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname, username: username)
    }
}
