//
//  SwiftUIWeatherTests.swift
//  SwiftUIWeatherTests
//
//  Created by Jose Cervantes.
//

import XCTest
import Combine
@testable import SwiftUIWeather

final class FindCityViewModelTests: XCTestCase {
    
    var viewModel: FindCityViewModel!
    var cancellables: Set<AnyCancellable> = []
    
    override func setUp() {
        super.setUp()
        viewModel = FindCityViewModel()
    }
    
    override func tearDown() {
        super.tearDown()
        viewModel = nil
        cancellables.removeAll()
    }
    
    func testCityNameBinding() {
        // Given
        let expectedCityName = "New York"
        
        // When
        viewModel.cityName = expectedCityName
        
        // Then
        XCTAssertEqual(viewModel.cityName, expectedCityName)
    }
    
    func testCityListPublisher() {
        // Given
        let expectation = self.expectation(description: "CityList updated")
        let expectedCityName = "London"
        
        viewModel.cityName = expectedCityName
        
        viewModel.$cityList
            .dropFirst()
            .sink { cities in
                // Then
                XCTAssertFalse(cities.isEmpty)
                expectation.fulfill()
            }
            .store(in: &cancellables)
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
}
