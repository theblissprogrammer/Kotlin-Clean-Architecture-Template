<?xml version="1.0"?>
<recipe>
    <instantiate from="res/layout/fragment.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/fragment_${res_name}.xml" />
    <instantiate from="res/layout/fragment_content.xml"
                 to="${escapeXmlAttribute(resOut)}/layout/content_${res_name}.xml" />
				 
	<instantiate from="src/app_package/Interfaces.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/${className}Interfaces.kt" />
    <instantiate from="src/app_package/Models.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/common/${className}Models.kt" />
    <instantiate from="src/app_package/Fragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt" />
    <instantiate from="src/app_package/Interactor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Interactor.kt" />
    <instantiate from="src/app_package/Presenter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Presenter.kt" />
    <instantiate from="src/app_package/Router.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Router.kt" />

    <open file="${srcOut}/common/${className}Models.kt"/>
</recipe>