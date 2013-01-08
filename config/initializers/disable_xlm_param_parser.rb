ActionDispatch::ParamsParser::DEFAULT_PARSERS.delete(Mime::XML)

# This is to do with Rails SQL injection venrability

# Multiple vulnerabilities in parameter parsing in Action Pack 

# There are multiple weaknesses in the parameter parsing code for Ruby on Rails which allows attackers to bypass authentication systems, inject arbitrary SQL, inject and execute arbitrary code, or perform a DoS attack on a Rails application. This vulnerability has been assigned the CVE identifier CVE-2013-0156. 

# Versions Affected:  ALL versions 
# Not affected:       NONE 
# Fixed Versions:     3.2.11, 3.1.10, 3.0.19, 2.3.15 

# Impact 
# ------ 
# The parameter parsing code of Ruby on Rails allows applications to automatically cast values from strings to certain data types.  Unfortunately the type casting code supported certain conversions which were not suitable for performing on user-provided data including creating Symbols and parsing YAML.  These unsuitable conversions can be used by an attacker to compromise a Rails application. 

# Due to the critical nature of this vulnerability, and the fact that portions of it have been disclosed publicly, all users running an affected release should either upgrade or use one of the work arounds *immediately*. 

# Releases 
# -------- 
# The 3.2.11, 3.1.10, 3.0.19 and 2.3.15 releases are available at the normal locations. 

# Workarounds 
# ----------- 
# The work arounds differ depending on the Rails version you are using, and whether or not your application needs to support XML Parameters. 

# Disabling XML Entirely 
# ---------------------- 
# Users who don't need to support XML parameters should disable XML parsing entirely by placing one of the following snippets inside an application initializer. 

# Rails 3.2, 3.1 and 3.0 
# ---------------------- 
# ActionDispatch::ParamsParser::DEFAULT_PARSERS.delete(Mime::XML) 

# Rails 2.3 
# --------- 
# ActionController::Base.param_parsers.delete(Mime::XML) 


# Removing YAML and Symbol support from the XML parser 
# ---------------------------------------------------- 
# If your application must continue to parse XML you must disable the YAML and Symbol type conversion from the Rails XML parser.  You should place one of the following code snippets in an application initializer to ensure your application isn't vulnerable.  You should also consider greatly reducing the value of REXML::Document.entity_expansion_limit to limit the risk of entity explosion attacks. 

# YAML Parameter Parsing 
# ---------------------- 
# Rails has also shipped with YAML parameter parsing code, this was only ever enabled by default in Rails 1.1.0, but  users who do enable it are vulnerable to all the exploits mentioned above..  There is no fix for YAML object injection, so if you have enabled it you must disable it immediately. 

# For 2.x apps, check whether your app sets `ActionController::Base.param_parsers[Mime::YAML] = :yaml` and snip that out if it does. 

# For 3.x apps do this to disable: 

#   ActionDispatch::ParamsParser::DEFAULT_PARSERS.delete(Mime::YAML) 

# Rails 3.2, 3.1, 3.0 
# --------- 

# ActiveSupport::XmlMini::PARSING.delete("symbol") 
# ActiveSupport::XmlMini::PARSING.delete("yaml") 

# Rails 2.3 
# --------- 

# ActiveSupport::CoreExtensions::Hash::Conversions::XML_PARSING.delete('symbol') 
# ActiveSupport::CoreExtensions::Hash::Conversions::XML_PARSING.delete('yaml') 

# Patches 
# ------- 
# To aid users who aren't able to upgrade immediately we have provided patches for the two supported release series.  They are in git-am format and consist of a single changeset. 

# * 2-3-xml_parsing.patch - Patch for 2.3 series 
# * 3-0-xml_parsing.patch - Patch for 3.0 series 
# * 3-1-xml_parsing.patch - Patch for 3.1 series 
# * 3-2-xml_parsing.patch - Patch for 3.2 series 

# Please note that only the 3.1.x and 3.2.x series are supported at present.  Users of earlier unsupported releases are advised to upgrade as soon as possible as we cannot guarantee the continued availability of security fixes for unsupported releases. 

# Credits 
# ------- 
# This vulnerability was reported to us by numerous people, many thanks to Ben Murphy, Magnus Holm, Felix Wilhelm, Darcy Laycock, Jonathan Rudenberg, Bryan Helmkamp, Benoist Claassen and Charlie Somerville for reporting the issue to us and working with us to ensure the fixes worked. 