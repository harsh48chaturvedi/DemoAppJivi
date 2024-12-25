//
//  Splash.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 24/12/24.
//

import SwiftUI

struct SplashScreen: View {
	
	var body: some View {
			VStack(spacing: 50) {
				Spacer()
				Image("appName")
					.resizable()
					.scaledToFit()
					.padding(.horizontal, 47)
				Image("appLoco")
					.resizable()
					.scaledToFit()
					.frame(maxWidth: .infinity)
				Image("tagNTracLogo")
					.resizable()
					.frame(width: 100, height: 85)
				Spacer()
			}
	}
}

#Preview {
	SplashScreen()
}
