//
//  HomeView.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 25/12/24.
//
import SwiftUI

struct HomeView: View {
	var body: some View {
		ScrollView{
			VStack {
				LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 16) {
					HomeGridItem(imageName: "delivery", title: "Assetization", description: "Lorem Ipsum is simply dummy text", color: "cyan")
					HomeGridItem(imageName: "building", title: "Sites", description: "Lorem Ipsum is simply dummy text", color: "darkOrange")
					HomeGridItem(imageName: "shipment", title: "Shipments", description: "Lorem Ipsum is simply dummy text", color: "lightOrange")
					HomeGridItem(imageName: "scan", title: "Scan / Upload", description: "Lorem Ipsum is simply dummy text", color: "green")
					HomeGridItem(imageName: "search", title: "Asset Search", description: "Lorem Ipsum is simply dummy text", color: "purple")
					HomeGridItem(imageName: "wifi", title: "Device Search", description: "Lorem Ipsum is simply dummy text", color: "lightBlue")
					HomeGridItem(imageName: "setting", title: "Settings", description: "Lorem Ipsum is simply dummy text", color: "mediumOrange")
					HomeGridItem(imageName: "question", title: "Help", description: "Lorem Ipsum is simply dummy text", color: "lightPurple")
				}
				.padding()
			}
		}
	}
}

struct HomeGridItem: View {
	let imageName: String
	let title: String
	let description: String
	let color: String
	
	var body: some View {
		VStack(alignment: .leading) {
			Image(uiImage: UIImage(named: imageName)!.withRenderingMode(.alwaysTemplate))
				.frame(width: 40, height: 40)
				.padding(.bottom, 4)
			Text(title)
				.font(.headline)
				.padding(.bottom, 4)
			Text(description)
				.font(.subheadline)
				.foregroundColor(.gray)
		}
		.padding()
		.background(Color(color).opacity(0.4))
		.cornerRadius(8)
	}
}

#Preview {
	HomeView()
}
