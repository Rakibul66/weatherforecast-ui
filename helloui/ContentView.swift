import SwiftUI

struct WeatherDayView: View {
    let day: String
    let iconName: String
    let highTemp: String
    let lowTemp: String
    
    var body: some View {
        HStack(spacing: 20) {
            Text(day)
                .font(.headline)
                .frame(width: 60, alignment: .leading) // Adjust width for alignment

            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 50, alignment: .center) // Adjust width for alignment
            
            VStack(alignment: .leading) {
                Text("High: \(highTemp)")
                Text("Low: \(lowTemp)")
            }
            .font(.subheadline)
            .frame(maxWidth: .infinity, alignment: .leading) // Fill remaining space
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            WeatherDayView(day: "Mon", iconName: "sun.max.fill", highTemp: "70°", lowTemp: "50°")
            WeatherDayView(day: "Tue", iconName: "cloud.rain.fill", highTemp: "60°", lowTemp: "40°")
            WeatherDayView(day: "Wed", iconName: "cloud.fill", highTemp: "30°", lowTemp: "50°")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}




