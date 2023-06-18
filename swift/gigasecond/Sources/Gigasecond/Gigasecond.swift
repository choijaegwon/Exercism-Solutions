// Define "Gigasecond" with a "description" property containing
// the result, times are expected in "yyyy-MM-dd'T'HH:mm:ss" format
import Foundation

struct Gigasecond {
    static var formatter = DateFormatter()
    let description: String

    init?(from date: String) {
        Gigasecond.formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        Gigasecond.formatter.timeZone = TimeZone(secondsFromGMT: 0)
        guard let currentDate = Gigasecond.formatter.date(from: date)?.addingTimeInterval(1_000_000_000) else { return nil }
        self.description = Gigasecond.formatter.string(from: currentDate)
    }
}