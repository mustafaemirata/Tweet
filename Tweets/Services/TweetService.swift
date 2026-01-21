//
//  ThreadsServices.swift
//  Tweets
//
//  Created by Mustafa Emir Ata on 20.01.2026.
//

import Foundation
import Firebase
import FirebaseFirestore
struct ThreadsServices{
    static func uploadThread(_ tweets:Tweets)async throws{
        guard let tweetData=try? Firestore.Encoder().encode(tweets)else{return }
        try await Firestore.firestore().collection("tweets").addDocument(data: tweetData)
    }
}
