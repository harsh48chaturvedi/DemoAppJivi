//
//  NavigationPath.swift
//  DemoAppJivi
//
//  Created by Harsh Chaturvedi on 24/12/24.
//

import Foundation
import SwiftUI
import CoreData

class NavigationRouter: ObservableObject {
	@Published var router = NavigationPath()
	

	func push(_ view: Route) {
		router.append(view)
	}

	func pop() {
		router.removeLast()
	}
}
