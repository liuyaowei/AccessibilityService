<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
	<instantiate from="root/res/xml/accessibilty_service_config.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/xml/accessibilty_service_config.xml" />
	<open file="${escapeXmlAttribute(resOut)}/xml/$accessibilty_service_config.xml" />		 
    <instantiate from="root/src/app_package/AccessibilityService.java.ftl"
             to="${escapeXmlAttribute(srcOut)}/${className}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${className}.java" />
</recipe>
