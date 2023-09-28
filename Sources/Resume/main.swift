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

    struct Content {
        let profileName = "Tyler Thompson"
        let profileTitle = "Principal Software Engineer - Apple Platforms"
        let aboutMe = """
        My primary motivation is helping people. As Software Engineer's we can sometimes get so wrapped up in a problem we forget what the end goal is. I do my best to make sure the software I help write makes a difference, and is based off of user needs.

        I have managed to become a Principal Engineer largely by working with people far smarter than I am, and learning from them. I owe much of my success specifically to World Wide Technology where I continue to enjoy opportunities to work with a very diverse group of intelligent people.

        I spend most of my free time honing my skills in my favorite programming language (Swift). I've become an avid believer in automated testing and DevOps practices. I incorporate that into both my professional code and my personal code.
        """
        let residence = "Colorado, United States"
        let yearsInIndustry = "14 years in IT"
        let primarySkill = "Apple Development"
        let jobs = [
            Job(name: "Zillow",
                imageUrl: "images/logos/Z-510fe419.png",
                startMonth: "May",
                startYear: "2023",
                endMonth: nil,
                endYear: nil,
                description: """
                ### Principal Engineer:
                My first year and a half at Zillow was spent as a Principal Engineer, at first on a feature team and eventually on the iOS App Platform team. During my time on the platform team I designed our modular architecture approach, created a vision for how the platform team could help Zillow scale with an increasingly large number of engineers, and tackled many of the major challenges devs were facing (build times, CI/CD, architecture, testing, communication, observability, on-call rotations, guiding principles, etc...)
                
                ### Senior Manager:
                Due to my leadership of the platform iOS team I transitioned into a Senior Manager position. I still work directly with the App Platform team driving the vision and tackling the big challenges Zillow faces with its mobile applications.
                """),
            
            Job(name: "World Wide Technology (WWT)",
                imageUrl: "images/logos/WWT_Logo_RGB_Color.png",
                startMonth: "Nov",
                startYear: "2016",
                endMonth: "April",
                endYear: "2022",
                description: """
                ### Healthcare:
                - Worked with one of the largest healthcare providers in the US
                - Managed a team of teams of around 100 developers as an Architect
                - Directly engaged with stakeholders to help design and build highly scalable systems
                - Designed integrations between multiple EMRs using FHIR
                - Created engineering best practices and architectural guidance documentation

                ### Also worked with:
                - Banking
                - Identity Proofing
                - Endpoint Security

                ### Roles held while working at WWT:
                - Software Engineer
                - Tech Lead
                - Principal Engineer
                - Software Architect (systems architecture)
                """),

            Job(name: "New Mexico Commission for the Blind",
                imageUrl: "images/logos/nmcftb-logo.png",
                startMonth: "May",
                startYear: "2013",
                endMonth: "Feb",
                endYear: "2016",
                description: """
                - Initial contract was for three months but satisfaction from the employer resulted in an offer for a full time position. During that time I setup the network server throughout the dormitory and field office, organized and taught philosophy classes for training purposes, coordinated activity outings, and conducted day-to-day running of the center when the director was absent.
                - Worked on several iPhone apps and was shortly promoted to a software engineering position in the administrative office. Developed the state website, an internal web app to track time in regards to federal grants and regulations (with millions of dollars at stake), and publicly released 2 apps.
                """),

            Job(name: "Freelance - Voc Rehab Instructor",
                imageUrl: nil,
                startMonth: "May",
                startYear: "2008",
                endMonth: "May",
                endYear: "2013",
                description: """
                During this time I taught people who recently became blind how to enter back into the workforce. I did individual tutoring with a variety of different clients with the goal of them becoming gainfully employed. This taught me invaluable lessons about accessibility, inclusive design, and the challenges of the industry as faced by those who require inclusive design.
                """)
        ]
        let portfolioMarkdown = """
        # Portfolio

        Many of my projects were with clients who had NDAs. Therefore my portfolio is primarily made up of projects that I did on the side on top of my full time job.

        ## [SwiftCurrent](https://www.github.com/wwt/SwiftCurrent)
        ![SwiftCurrent Logo](images/logos/SwiftCurrent-social.png)

        SwiftCurrent is one of the more interesting and challenging projects I've worked on. It started with an observation between me and my colleagues that we were running into the same kinds of workflow issues between projects. Architectural patterns that existed to solve those problems were cumbersome and really just ended up moving the exact same problem to a different layer.

        SwiftCurrent started with me working on the weekends for 2 years just building up something that worked. Eventually, it got adopted by WWT and staffed and within months became the most successful Open Source project WWT had ever made. I'm incredibly proud of the work the team and I did and where appropriate I love to bring in SwiftCurrent to continue doing what it's good at.

        ## [CucumberSwift](https://www.github.com/Tyler-Keith-Thompson/CucumberSwift)
        CucumberSwift never gained much traction as an OSS project but it remains a very useful library for those who use BDD (Behavior Driven Development). Previously the only real option was Cucumberish, which had a lot of overhead and was very difficult to install. I decided to create a lightweight and (as much as possible) Swift-Only version of Cucumber.
        """

        let contactMarkdown = """
        # Contact

        To prevent spam and easily track professional contacts it's best if you [reach me over LinkedIn](https://www.linkedin.com/in/tyler-k-thompson/). If you're a recruiter be aware that despite an expired AWS certification and some light Ruby experience I am not a good fit for Sr. Ruby positions or AWS heavy positions. I am a great fit for Apple platforms, though!
        """
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://your-website-url.com")!
    var name = "Tyler Thompson's Resume"
    var description = "Tyler Thompson's online resume"
    var language: Language { .english }
    var imagePath: Path? { nil }
    let content = Content()
}

// This will generate your website using the built-in Foundation theme:
try Resume().publish(using: [
    .group([].map(PublishingStep.installPlugin)),
    .optional(.copyResources()),
    .addMarkdownFiles(),
    .sortItems(by: \.date, order: .descending),
    .generateHTML(withTheme: .resume),
    .generateSiteMap(),
    .deploy(using: .gitHub("Tyler-Keith-Thompson/Tyler-Keith-Thompson", branch: "refs/remotes/origin/gh-pages"))
])
