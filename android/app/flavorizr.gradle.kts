import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.vp.myapp.dev"
            resValue(type = "string", name = "app_name", value = "My App Dev")
        }
        create("qa") {
            dimension = "flavor-type"
            applicationId = "com.vp.myapp.qa"
            resValue(type = "string", name = "app_name", value = "My App QA")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.vp.myapp"
            resValue(type = "string", name = "app_name", value = "My App")
        }
    }

    buildFeatures.resValues = true
}