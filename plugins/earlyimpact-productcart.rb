##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.3 # 2011-07-07
# Updated text matches
##
# Version 0.2
# removed :name and :certainty=>100
##
Plugin.define "EarlyImpact-ProductCart" do
author "Andrew Horton"
version "0.3"
description "EarlyImpact ProductCart is an ASP commercial ecommerce system  - Homepage: http://www.earlyimpact.com. Version < 2.53 is vulnerable http://www.securityfocus.com/bid/9669"

# Dorks #
dorks [
'inurl:custva.asp'
]

# Examples #
examples %w|
www.anatex.com/ProductCart/pc/custva.asp
www.maunakeagalleries.com
www.kaddvd.com/dvd/custva.asp
www.goezlaw.com/custva.asp
secure.jnjcanada.com/Eshop/productcart/pc/Custva.asp
www.piercechemical.com/ProductCart/pc/custva.asp
www.stanatural.com/productcart/pc/Custva.asp
www.logitech.uk.com/productcart/pc/Custva.asp
www.prairiewholesale.net/ProductCart2/pc/Custva.asp
www.motherstyles.com/shop/pc/custva.asp
www.topcoins.com
|

# Matches #
matches [

# inurl:custva.asp
{ :certainty=>75, :ghdb=>'inurl:custva.asp'},

# Forgot Password link
{ :text=>'<a href="fpassword.asp?redirectUrl=&frURL=Custva.asp"' },

# HTML Comment
{ :text=>'<!-- end of password request -->' },

]

end

