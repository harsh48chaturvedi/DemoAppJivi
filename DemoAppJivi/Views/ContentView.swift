//
//  ContentView.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 24/12/24.
//

import SwiftUI

struct ContentView: View {
	@StateObject var path = NavigationRouter()
	@State var shouldShowSplash = true
    var body: some View {
		VStack {
			if shouldShowSplash {
				SplashScreen()
			}
			else {
				SignInWorkSpaceScreen()
					.environmentObject(path)
			}
		}.task {
			DispatchQueue.main.asyncAfter(deadline: .now()+6){
				shouldShowSplash = false
			}
		}
    }
}

#Preview {
    ContentView()
		.environmentObject(NavigationRouter())
}
