import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct Resume: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Tyler Thompson's Resume"
    var description = "Tyler Thompson's online resume"
    var language: Language { .english }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try Resume().publish(using: [
    .group([].map(PublishingStep.installPlugin)),
    .optional(.copyResources()),
    .addMarkdownFiles(),
    .sortItems(by: \.date, order: .descending),
    .generateHTML(withTheme: .resume),
    .generateSiteMap(),
    .deploy(using: .gitHub("Tyler-Keith-Thompson/Tyler-Keith-Thompson", branch: "gh-pages"))
])
