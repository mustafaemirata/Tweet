import Foundation

enum ProfileTweetFilter: Int, CaseIterable, Identifiable {
    case tweets
    case replies
    case likes
    
    var id: Int { return self.rawValue }
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
