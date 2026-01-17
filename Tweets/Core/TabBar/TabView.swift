import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    @State private var showCreateThread = false
    var body: some View {
        TabView(selection: $selectedTab) {
            
            FeedView()
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                }
                .tag(0)
            
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            Text("")
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(2)
            
            Text("Etkinlikler")
                .tabItem {
                    Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                }
                .tag(3)
            
            ProfileView()
                .tabItem {
                    Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                }
                .tag(4)
        }
        .onChange(of: selectedTab) { newValue in
            if newValue == 2 {
                showCreateThread = selectedTab == 2
            }
        }
        .sheet(isPresented: $showCreateThread, onDismiss: {
            selectedTab = 0
        }) {
            CreateThreads()
        }
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
