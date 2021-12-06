plugins {
    kotlin("multiplatform")
    id("com.android.application")
    id("kotlin-android-extensions")
}

repositories {
    google()
    jcenter()
}

kotlin {
    android()
    sourceSets {
        val androidMain by getting {
            dependencies {
                implementation(project(":shared"))
                implementation("com.google.android.material:material:1.2.1")
                implementation("androidx.appcompat:appcompat:1.2.0")
                implementation("androidx.constraintlayout:constraintlayout:2.0.2")
            }
        }
    }
}

android {
    compileSdkVersion(31)
    buildToolsVersion = "30.0.3"
    defaultConfig {
        applicationId = "me.user.androidApp"
        minSdkVersion(21)
        targetSdkVersion(30)
        versionCode = 1
        versionName = "1.0"
    }
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
    }
    buildTypes {
        getByName("release") {
            isMinifyEnabled = false
        }
    }
}