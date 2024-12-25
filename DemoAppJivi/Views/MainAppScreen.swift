//
//  MainAppScreen.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 25/12/24.
//

import SwiftUI

struct MainAppScreen: View {
	var body: some View {
		VStack(alignment: .leading) {
			Text("Relativity App")
				.padding(EdgeInsets(top: 20, leading: 15, bottom: 10, trailing: 10))
				.font(.custom("Lato", size: 20))
				.frame(maxWidth: .infinity, alignment: .leading)
				.background(Color("buttonColor"))
				.foregroundStyle(Color.white)
			TabView {
				HomeView()
					.tabItem {
						Image(uiImage: UIImage(named: "home")!)
						Text("Home")
					}
				Text("Assetization")
					.tabItem {
						Image(uiImage: UIImage(named: "delivery")!)
						Text("Assetization")
					}
				
				Text("Sites")
					.tabItem {
						Image(uiImage: UIImage(named: "building")!)
						Text("Sites")
					}
				
				Text("Shipments")
					.tabItem {
						Image(uiImage: UIImage(named: "shipment")!)
						Text("Shipments")
					}
				
				Text("More")
					.tabItem {
						Image(uiImage: UIImage(systemName: "ellipsis")!)
						Text("More")
					}
			}
		}
			.navigationBarBackButtonHidden()
	}
}

#Preview {
	MainAppScreen()
}
