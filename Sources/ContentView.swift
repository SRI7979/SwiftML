import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{Label(Constants.homeString, systemImage: Constants.homeIconString)}
            Text("comin soon yo, so look away or sum fr")
                .tabItem{Label(Constants.progressString, systemImage: Constants.progressIconString)}
        }
    }
}
