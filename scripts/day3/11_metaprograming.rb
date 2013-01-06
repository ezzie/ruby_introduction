# String dont have method called blank? in ruby
# But rails modified String class to add new method
"".blank? # true
"      ".empty? # false
"      ".blank? # true
nil.blank? # true
