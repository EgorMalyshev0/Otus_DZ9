//
//  ComplicationController.swift
//  DZ№9 (watchOS) WatchKit Extension
//
//  Created by Egor Malyshev on 09.01.2022.
//

import ClockKit


class ComplicationController: NSObject, CLKComplicationDataSource {
    
    // MARK: - Complication Configuration

    func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void) {
        let descriptors = [
            CLKComplicationDescriptor(identifier: "complication", displayName: "DZ№9", supportedFamilies: [.circularSmall, .graphicBezel, .graphicCircular, .utilitarianSmall, .graphicCorner])
            // Multiple complication support can be added here with more descriptors
        ]
        
        // Call the handler with the currently supported complication descriptors
        handler(descriptors)
    }
    
    func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor]) {
        // Do any necessary work to support these newly shared complication descriptors
    }

    // MARK: - Timeline Configuration
    
    func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void) {
        // Call the handler with the last entry date you can currently provide or nil if you can't support future timelines
        handler(nil)
    }
    
    func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void) {
        // Call the handler with your desired behavior when the device is locked
        handler(.showOnLockScreen)
    }

    // MARK: - Timeline Population
    
    func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void) {
        let entry: CLKComplicationTimelineEntry
        switch complication.family {
        case .circularSmall:
            let image = CLKImageProvider(onePieceImage: UIImage(named: "logo54")!)
            let template = CLKComplicationTemplateCircularSmallRingImage(imageProvider: image, fillFraction: 1.0, ringStyle: CLKComplicationRingStyle.closed)
            entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler (entry)
        case .graphicCircular:
            let image = CLKFullColorImageProvider(fullColorImage: UIImage(named: "logo54")!)
            let template = CLKComplicationTemplateGraphicCircularImage(imageProvider: image)
            entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler (entry)
        case .utilitarianSmall:
            let image = CLKImageProvider(onePieceImage: UIImage(named: "logo54")!)
            let template = CLKComplicationTemplateUtilitarianSmallRingImage(imageProvider: image, fillFraction: 1.0, ringStyle: CLKComplicationRingStyle.closed)
            entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler (entry)
        case .graphicCorner:
            let image = CLKFullColorImageProvider(fullColorImage: UIImage(named: "logo54")!)
            let template = CLKComplicationTemplateGraphicCornerCircularImage(imageProvider: image)
            entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler (entry)
        case.graphicBezel:
            let image = CLKFullColorImageProvider(fullColorImage: UIImage(named: "logo54")!)
            let circulartemplate = CLKComplicationTemplateGraphicCircularImage(imageProvider: image)
            let text = CLKSimpleTextProvider(text: "Albums")
            let template = CLKComplicationTemplateGraphicBezelCircularText(circularTemplate: circulartemplate, textProvider: text)
            entry = CLKComplicationTimelineEntry(date: Date(), complicationTemplate: template)
            handler (entry)
        default:
            handler(nil)
    }
    
    func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void) {
        // Call the handler with the timeline entries after the given date
        handler(nil)
    }

    // MARK: - Sample Templates
    
        func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void) {
            switch complication.family {
            case .circularSmall:
                let image = CLKImageProvider(onePieceImage: UIImage(systemName: "y.circle")!)
                let template = CLKComplicationTemplateCircularSmallRingImage(imageProvider: image, fillFraction: 1.0, ringStyle: CLKComplicationRingStyle.closed)
                handler (template)
            case .graphicCircular:
                let image = CLKFullColorImageProvider(fullColorImage: UIImage(named: "logo54")!)
                let template = CLKComplicationTemplateGraphicCircularImage(imageProvider: image)
                handler(template)
            default:
                handler (nil)
            }
        }
    }
}
