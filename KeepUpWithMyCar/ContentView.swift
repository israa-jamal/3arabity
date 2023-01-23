//
//  ContentView.swift
//  KeepUpWithMyCar
//
//  Created by Esraa Gamal on 10/01/2023.
//

import SwiftUI

struct ContentView: View {
    let viewModel = ViewModel()
    var body: some View {
        VStack {
            ForEach(viewModel.tools, id: \.self) { tool in
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundColor(.accentColor)
                    Text(tool.name)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ViewModel {
    let tools: [MaintenanceTool]
    
    init() {
        let array: [Tool] = [
            .engineOil,
            .airConditionerBelt,
            .airFilter,
            .coolant
        ]
        tools = array.compactMap({$0.maintenanceTool})
    }
}

struct MaintenanceTool: Hashable {
    let name: String
    var months: Int
    var kilometers: Int
}

enum Tool: String {
    case engineOil = "Engine Oil"
    case transmissionOil = "Transmission Oil"
    case coolant = "Coolant"
    case powerOil = "Power Steering Fluid"
    case brakeFluid = "Brake Fluid"
    case airFilter = "Air Filter"
    case oilFilter = "Oil Filter"
    case gasFilter = "Gas Filter"
    case airConditionerFilter = "Air Conditioner Filter"
    case timingBelt = "Timing Belt"
    case powerBelt = "Power Belt"
    case airConditionerBelt = "Air Conditioner Belt"
    case sparkPlug = "Spark Plug"
    case tires = "Tires"
    case rearBrake = "Rear Brake"
    case backBrake = "Back Brake"
    
    var maintenanceTool: MaintenanceTool {
        switch self {
        case .engineOil:
            return MaintenanceTool(name: self.rawValue, months: 8, kilometers: 10000)
        case .transmissionOil:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .coolant:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .powerOil:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .brakeFluid:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .airFilter:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .oilFilter:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .gasFilter:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .airConditionerFilter:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .timingBelt:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .powerBelt:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .airConditionerBelt:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .sparkPlug:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .tires:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .rearBrake:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        case .backBrake:
            return MaintenanceTool(name: self.rawValue, months: 0, kilometers: 0)
        }
    }
}
