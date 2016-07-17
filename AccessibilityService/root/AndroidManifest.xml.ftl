<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
		<service
            android:name="${relativePackage}.${className}"
            android:enabled="${isEnabled?string}"
            android:exported="${isExported?string}"
            android:label="${componentName}"
            android:permission="android.permission.BIND_ACCESSIBILITY_SERVICE">
            <intent-filter>
                <action android:name="android.accessibilityservice.AccessibilityService"/>
            </intent-filter>
            <meta-data
                android:name="android.accessibilityservice"
                android:resource="@xml/accessibilty_service_config"/>
        </service>
    </application>

</manifest>
