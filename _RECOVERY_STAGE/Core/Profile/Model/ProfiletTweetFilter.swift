//
//  ProfileModel.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 16.01.2026.
//

import Foundation
enum ProfiletTweetModel:Int,CaseIterable{
    case tweets
    case replies
    
    var title:String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        }
    }
    
}
