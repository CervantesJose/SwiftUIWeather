//
//  CityViewModel.swift
//  SwiftUIWeatherTests
//
//  Created by Jose Cervantes.
//

import XCTest
import Combine
import CoreLocation
@testable import SwiftUIWeather

final class CityViewModelTests: XCTestCase {

    var viewModel: CityViewModel!
    var cancellables: Set<AnyCancellable> = []

    override func setUp() {
        super.setUp()
        viewModel = CityViewModel(coordinates: nil) // Pass nil coordinates for testing
    }

    override func tearDown() {
        super.tearDown()
        viewModel = nil
        cancellables.removeAll()
    }

    func testIsNeedUpdatePublisher() {
        // Given
        var updateCount = 0
        viewModel.isNeedUpdate
            .sink { _ in
                updateCount += 1
            }
            .store(in: &cancellables)

        // When
        viewModel.isNeedUpdate.send()

        // Then
        XCTAssertEqual(updateCount, 1)
    }

    func testSaveCity() {
        let city = City(name: "Denver", lat: 0.0, lon: 0.0, localNames: [:]) // Adjust as per your data model

        viewModel.saveCity(city: city)
    }
}
