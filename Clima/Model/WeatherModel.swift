import Foundation

struct WeatherModel {
    let conditionCode: Int
    let cityName: String
    let temp: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temp)
    }
    
    var conditionName: String {
        switch conditionCode {
        case 1273...1282:
            return "cloud.bolt"
        case 1150...1171:
            return "cloud.drizzle"
        case 1180...1201:
            return "cloud.rain"
        case 1210...1225:
            return "cloud.snow"
        case 1135...1147:
            return "cloud.fog"
        case 1000:
            return "sun.max"
        case 1087:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
}
