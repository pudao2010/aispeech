# To enable ProGuard in your project, edit project.properties
# to define the proguard.config property as described in that file.
#
# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in ${sdk.dir}/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the ProGuard
# include property in project.properties.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

-keepattributes EnclosingMethod
-keepattributes InnerClasses

#keep callback method
-keepclassmembers class * implements com.aispeech.AIEngine$aiengine_callback{public int run(byte[] , int , byte[] , int);}

-keepnames class com.aispeech.AIEngine$*{
	public <fields>;
	public <methods>;
}

#keep native method
-keepclassmembers class com.aispeech.AIEngine{
	public static native <methods>;
}

