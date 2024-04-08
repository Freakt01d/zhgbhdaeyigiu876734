pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
        maven("https://maven.mongodb.org") // Add this line
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
        maven("https://maven.mongodb.org") // Add this line
    }
}

rootProject.name = "Enhanced Aging"
include(":app")
include(":app:libs")
include(":chatbot")
