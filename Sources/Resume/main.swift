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
        I'm a long-time
        """
        let residence = "Colorado, United States"
        let yearsInIndustry = "18 years in tech"
        let primarySkill = "Apple Development"
        let jobs = [
            Job(name: "Zillow",
                imageUrl: "images/logos/Zillow_Wordmark_Blue_RGB.png",
                startMonth: "May",
                startYear: "2023",
                endMonth: nil,
                endYear: nil,
                description: """
                ### Senior Manager:
                Due to my leadership of the platform iOS team I transitioned into a Senior Manager position. I still work directly with the App Platform team driving the vision and tackling the big challenges Zillow faces with its mobile applications.
                
                During my time as manager I lead my team through modernizing Zillow's platform. 
                - We released a distributed build cache that improved build speed for all mobile developers by 90%. 
                - We optimized our usage of infrastructure with techniques like build and test avoidance, and intelligent unsharding. This lead to us managing to keep infrastructure costs relatively flat while continually increasing the number of committers and features being added.
                - I engaged with a vendor who was beta testing a flaky test quarantining solution. If we hadn't released flaky test quarantining any given PR would've had between 3% and 10% chance of merging. Thanks to our flaky test management any given PR had a ~90% chance of merging.
                - We built a custom merge queue due to GitLab's merge train struggling with our monorepo. This added bleeding edge features which added much needed stability to our merge queues in our large monorepo.
                - I created the architectural vision and direction every year I was at Zillow, starting in 2023.
                - Work that I started as a Principal Engineer to build a dependency injection framework became the backbone of Zillow's Swift applications, including server-side and mobile.
                - I created Afluent, and open source Combine alternative that enabled Zillow to move away from Combine and adopt Swift concurrency features with ease. This became ubiquitous for Swift development at Zillow.

                ### Principal Engineer:
                My first year and a half at Zillow was spent as a Principal Engineer, at first on a feature team and eventually on the iOS App Platform team. During my time on the platform team I designed our modular architecture approach, created a vision for how the platform team could help Zillow scale with an increasingly large number of engineers, and tackled many of the major challenges devs were facing (build times, CI/CD, architecture, testing, communication, observability, on-call rotations, guiding principles, etc...)
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

        ## [Afluent](https://github.com/Tyler-Keith-Thompson/Afluent)
        ![AfluentLogo](https://github.com/Tyler-Keith-Thompson/Afluent/assets/33705774/ba1b24b2-cd70-4c9c-824a-e89ee89348a8)
        
        Afluent is a Combine alternative build entirely with Swift Concurrency. Since Apple made it apparent that Combine was not getting any new updates, it was necessary to have some kind of reactive alternative. Given that Swift Concurrency works fundamentally differently, this required a lot of careful thought and consideration. Afluent is heavily in-use at Zillow and is a battle tested and ready-to-use Combine alternative that brings reactive patterns to Swift concurrency!
        
        ## [SwiftCurrent -- abandoned after I left WWT](https://www.github.com/wwt/SwiftCurrent)
        ![SwiftCurrent Logo](images/logos/SwiftCurrent-social.png)

        SwiftCurrent is one of the more interesting and challenging projects I've worked on. It started with an observation between me and my colleagues that we were running into the same kinds of workflow issues between projects. Architectural patterns that existed to solve those problems were cumbersome and really just ended up moving the exact same problem to a different layer.

        SwiftCurrent started with me working on the weekends for 2 years just building up something that worked. Eventually, it got adopted by WWT and staffed and within months became the most successful Open Source project WWT had ever made. I'm incredibly proud of the work the team and I did and where appropriate I love to bring in SwiftCurrent to continue doing what it's good at.

        ## [CucumberSwift -- In maintenance mode](https://www.github.com/Tyler-Keith-Thompson/CucumberSwift)
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
