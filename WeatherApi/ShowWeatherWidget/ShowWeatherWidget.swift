////
////  ShowWeatherWidget.swift
////  ShowWeatherWidget
////
////  Created by Dmitrij Meidus on 11.11.22.
////
//
//import WidgetKit
//import SwiftUI
//
//struct Provider: TimelineProvider {
//    func placeholder(in context: Context) -> SimpleEntry {
//        SimpleEntry(date: Date())
//    }
//
//    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
//        let entry = SimpleEntry(date: Date())
//        completion(entry)
//    }
//
//    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
//        var entries: [SimpleEntry] = []
//
//        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
//        let currentDate = Date()
//        for hourOffset in 0 ..< 5 {
//            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
//            let entry = SimpleEntry(date: entryDate)
//            entries.append(entry)
//        }
//
//        let date = Calendar.current.date(byAdding: .minute, value: 60, to: Date())
//        let timeline = Timeline(entries: entries, policy: .after(date!))
//        completion(timeline)
//    }
//}
//
//struct SimpleEntry: TimelineEntry {
//    let date: Date
//}
//
//struct ShowWeatherWidgetEntryView : View {
//    @Environment(\.widgetFamily) var widgetFamily
//    @ObservedObject var weatherModel: Weather?
//    
//    @ViewBuilder
//    var body: some View {
//        VStack(alignment: .leading, spacing: 10) {
//            if case .systemSmall = widgetFamily {
//                VStack(alignment: .leading) {
//                    Text("qwe")
//                        .modifier(TitleStyle())
//                    Text("qweqwe")
//                        .modifier(SubtitleStyle())
//                }
//                .accessibilityElement(children: .combine)
//                .accessibility(label: Text())
//
//            }
//        }
//    }
//}
//
////struct ShowWeatherWidgetEntryView : View {
////    var entry: Provider.Entry
////
////    var body: some View {
////        Text(entry.date, style: .time)
////    }
////}
//
//struct ShowWeatherWidget: Widget {
//    let kind: String = "ShowWeatherWidget"
//
//    var body: some WidgetConfiguration {
//        StaticConfiguration(kind: kind, provider: Provider()) { entry in
//            ShowWeatherWidgetEntryView(entry: entry)
//        }
//        .configurationDisplayName("My Widget")
//        .description("This is an example widget.")
//    }
//}
//
//struct ShowWeatherWidget_Previews: PreviewProvider {
//    static var previews: some View {
//        ShowWeatherWidgetEntryView(entry: SimpleEntry(date: Date()))
//            .previewContext(WidgetPreviewContext(family: .systemSmall))
//    }
//}
