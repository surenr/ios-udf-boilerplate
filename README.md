# Overview

Uni Directional Data Flow (UDF) architectural pattern is proving to be an attractive alternative to traditional MVC and MVVM patterns. There are several reasons for this, few are listed below.
1. Better separation of concerns
2. Having a single source of truth for the application
3. Managed way of mutating the application state
4. Managed way of handling side effects
5. Making Views (UI) independent from the application logic and from each other
6. High level of testability 

ReSwift provide a real good base library for us to create our native IOS mobile apps using the UDF pattern. However, there are some initial setup work (both code and configuration) that might be challenging. IOS UDF Boilerplate is an attempt to provide IOS developers with a clean and easy to use boilerplate project which they can use as a starting point to develop their products.

# What does IOS Boilerplate Project Provide
* Abstraction from the ReSwift initial setup code and configuration which you don’t have to worry about
* Provide a better way for ViewControllers to interact with the application state
* Provide a repeatable methodology of implementing features which will help the developers to worry less about implementation and more about business domain
* High focus on test first

For people who are developing both Android and IOS apps,we have the sister boilerplate for Android which you can take look here. Both boilerplates follow the same patterns to help developers who develop for both platforms to have a uniform understanding of how things work.

