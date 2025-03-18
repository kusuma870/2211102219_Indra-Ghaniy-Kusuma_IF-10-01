plugins {
    id("com.android.application")
    kotlin("android")  // Menggunakan ekstensi Kotlin modern
    id("dev.flutter.flutter-gradle-plugin") // Flutter plugin harus setelah Android & Kotlin
}

android {
    namespace = "com.example.modul7_isnaenifatmawati_2211102205"
    compileSdk = 35  // Gunakan versi angka langsung
    ndkVersion = "27.0.12077973"  // Pastikan NDK ini sudah terinstall

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17  // Gunakan Java 17
        targetCompatibility = JavaVersion.VERSION_17
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = "17"  // Sesuai dengan compileOptions
    }

    defaultConfig {
        applicationId = "com.example.modul7_isnaenifatmawati_2211102205"
        minSdk = 21  // Sesuaikan dengan kebutuhan aplikasi
        targetSdk = 35  // Gunakan target terbaru
        versionCode = 1
        versionName = "1.0"
    }

    buildTypes {
        release {
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

dependencies {
    implementation("org.jetbrains.kotlin:kotlin-stdlib:1.9.10")  // Pastikan Kotlin terbaru
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4") // Versi terbaru
}

flutter {
    source = "../.."
}
