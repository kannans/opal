opal_filter "String" do
  fails "String#=== returns false if obj does not respond to to_str" #passes except for the line with symbol: fails "'hello'.send(@method, :hello).should be_false"

  fails "String#=~ raises a TypeError if a obj is a string"

  fails "String#[] with Range calls to_int on range arguments"

  fails "String#dup does not copy constants defined in the singleton class"
  fails "String#dup does not modify the original string when changing dupped string"

  fails "String#end_with? converts its argument using :to_str"
  fails "String#end_with? returns true if other is empty"

  fails "String#each_line accepts a string separator"
  fails "String#each_line passes self as a whole to the block if the separator is nil"
  fails "String#each_line yields paragraphs (broken by 2 or more successive newlines) when passed ''"
  fails "String#each_line uses $/ as the separator when none is given"
  fails "String#each_line yields subclass instances for subclasses"
  fails "String#each_line tries to convert the separator to a string using to_str"
  fails "String#each_line tries to convert the separator to a string using to_str"
  fails "String#each_line does not care if the string is modified while substituting"
  fails "String#each_line raises a TypeError when the separator can't be converted to a string"
  fails "String#each_line accept string separator"
  fails "String#each_line raises a TypeError when the separator is a symbol"
  fails "String#each_line returns an enumerator when no block given"

  fails "String#gsub with pattern and replacement inserts the replacement around every character when the pattern collapses"
  fails "String#gsub with pattern and replacement respects $KCODE when the pattern collapses"
  fails "String#gsub with pattern and replacement doesn't freak out when replacing ^"
  fails "String#gsub with pattern and replacement returns a copy of self with all occurrences of pattern replaced with replacement"
  fails "String#gsub with pattern and replacement supports \\G which matches at the beginning of the remaining (non-matched) string"
  fails "String#gsub with pattern and replacement replaces \\1 sequences with the regexp's corresponding capture"
  fails "String#gsub with pattern and replacement treats \\1 sequences without corresponding captures as empty strings"
  fails "String#gsub with pattern and replacement replaces \\& and \\0 with the complete match"
  fails "String#gsub with pattern and replacement replaces \\` with everything before the current match"
  fails "String#gsub with pattern and replacement replaces \\' with everything after the current match"
  fails "String#gsub with pattern and replacement replaces \\+ with the last paren that actually matched"
  fails "String#gsub with pattern and replacement treats \\+ as an empty string if there was no captures"
  fails "String#gsub with pattern and replacement maps \\\\ in replacement to \\"
  fails "String#gsub with pattern and replacement handles pattern collapse without $KCODE"
  fails "String#gsub with pattern and replacement raises a TypeError when replacement can't be converted to a string"
  fails "String#gsub with pattern and replacement sets $~ to MatchData of last match and nil when there's none"
  fails "String#gsub with pattern and Hash returns a copy of self with all occurrences of pattern replaced with the value of the corresponding hash key"
  fails "String#gsub with pattern and Hash ignores keys that don't correspond to matches"
  fails "String#gsub with pattern and Hash returns an empty string if the pattern matches but the hash specifies no replacements"
  fails "String#gsub with pattern and Hash ignores non-String keys"
  fails "String#gsub with pattern and Hash uses a key's value as many times as needed"
  fails "String#gsub with pattern and Hash uses the hash's default value for missing keys"
  fails "String#gsub with pattern and Hash coerces the hash values with #to_s"
  fails "String#gsub with pattern and Hash coerces the hash values with #to_s"
  fails "String#gsub with pattern and Hash uses the hash's value set from default_proc for missing keys"
  fails "String#gsub with pattern and Hash sets $~ to MatchData of last match and nil when there's none for access from outside"
  fails "String#gsub with pattern and Hash doesn't interpolate special sequences like \\1 for the block's return value"
  fails "String#gsub with pattern and block sets $~ for access from the block"
  fails "String#gsub with pattern and block restores $~ after leaving the block"
  fails "String#gsub with pattern and block sets $~ to MatchData of last match and nil when there's none for access from outside"

  fails "String#index raises a TypeError if passed a Symbol"

  fails "String#intern does not special case certain operators"
  fails "String#intern special cases +(binary) and -(binary)"

  fails "String#lines accepts a string separator"
  fails "String#lines should split on the default record separator and return enumerator if not block is given"
  fails "String#lines splits using default newline separator when none is specified"
  fails "String#lines splits self using the supplied record separator and passes each substring to the block"
  fails "String#lines passes self as a whole to the block if the separator is nil"
  fails "String#lines yields paragraphs (broken by 2 or more successive newlines) when passed ''"
  fails "String#lines yields subclass instances for subclasses"
  fails "String#lines returns self"
  fails "String#lines tries to convert the separator to a string using to_str"
  fails "String#lines tries to convert the separator to a string using to_str"
  fails "String#lines does not care if the string is modified while substituting"
  fails "String#lines raises a TypeError when the separator can't be converted to a string"
  fails "String#lines accept string separator"
  fails "String#lines raises a TypeError when the separator is a symbol"
  fails "String#lines returns an array when no block given"

  fails "String#lstrip returns a copy of self with leading whitespace removed"

  fails "String#partition with String accepts regexp"
  fails "String#partition with String sets global vars if regexp used"
  fails "String#partition with String converts its argument using :to_str"
  fails "String#partition with String converts its argument using :to_str"
  fails "String#partition with String raises an error if not convertible to string"

  fails "String#rindex with object raises a TypeError if obj isn't a String, Fixnum or Regexp"
  fails "String#rindex with object tries to convert obj to a string via to_str"
  fails "String#rindex with String ignores string subclasses"
  fails "String#rindex with String returns nil if the substring isn't found"
  fails "String#rindex with String raises a TypeError when given offset is nil"
  fails "String#rindex with Regexp behaves the same as String#rindex(string) for escaped string regexps"
  fails "String#rindex with Regexp returns the index of the first match from the end of string of regexp"
  fails "String#rindex with Regexp sets $~ to MatchData of match and nil when there's none"
  fails "String#rindex with Regexp starts the search at the given offset"
  fails "String#rindex with Regexp supports \\G which matches at the given start offset"
  fails "String#rindex with Regexp tries to convert start_offset to an integer via to_int"
  fails "String#rindex with Regexp raises a TypeError when given offset is nil"

  fails "String#rstrip returns a copy of self with trailing whitespace removed"
  fails "String#rstrip returns a copy of self with all trailing whitespace and NULL bytes removed"

  fails "String#slice with Range calls to_int on range arguments"

  fails "String#split with String returns subclass instances based on self"
  fails "String#split with Regexp respects $KCODE when splitting between characters"
  fails "String#split with Regexp includes all captures in the result array"
  fails "String#split with Regexp does not include non-matching captures in the result array"
  fails "String#split with Regexp returns subclass instances based on self"
  fails "String#split with Regexp does not call constructor on created subclass instances"
  fails "String#split with String does not call constructor on created subclass instances"

  fails "String#squeeze negates sets starting with ^"
  fails "String#squeeze squeezes all chars in a sequence"
  fails "String#squeeze raises an ArgumentError when the parameter is out of sequence"

  fails "String#start_with? ignores arguments not convertible to string"
  fails "String#start_with? converts its argument using :to_str"

  fails "String#strip returns a new string with leading and trailing whitespace removed"
  fails "String#strip returns a copy of self with trailing NULL bytes and whitespace"

  fails "String#sub with pattern, replacement supports \\G which matches at the beginning of the string"
  fails "String#sub with pattern, replacement replaces \\1 sequences with the regexp's corresponding capture"
  fails "String#sub with pattern, replacement treats \\1 sequences without corresponding captures as empty strings"
  fails "String#sub with pattern, replacement replaces \\& and \\0 with the complete match"
  fails "String#sub with pattern, replacement replaces \\` with everything before the current match"
  fails "String#sub with pattern, replacement replaces \\' with everything after the current match"
  fails "String#sub with pattern, replacement replaces \\+ with the last paren that actually matched"
  fails "String#sub with pattern, replacement treats \\+ as an empty string if there was no captures"
  fails "String#sub with pattern, replacement sets $~ to MatchData of match and nil when there's none"
  fails "String#sub with pattern and block sets $~ for access from the block"
  fails "String#sub with pattern and block sets $~ to MatchData of last match and nil when there's none for access from outside"
  fails "String#sub with pattern and block doesn't raise a RuntimeError if the string is modified while substituting"

  fails "String#sum returns a basic n-bit checksum of the characters in self"
  fails "String#sum tries to convert n to an integer using to_int"
  fails "String#sum tries to convert n to an integer using to_int"
  fails "String#sum returns sum of the bytes in self if n less or equal to zero"

  fails "String#to_str returns a new instance of String when called on a subclass"

  fails "String#to_sym does not special case certain operators"
  fails "String#to_sym special cases +(binary) and -(binary)"

  fails "String#tr raises an ArgumentError a descending range in the replacement as containing just the start character"
  fails "String#tr raises an ArgumentError a descending range in the source as empty"
  fails "String#tr translates chars not in from_string when it starts with a ^"
  fails "String#tr tries to convert from_str and to_str to strings using to_str"
  fails "String#tr tries to convert from_str and to_str to strings using to_str"

  fails "String#tr_s translates chars not in from_string when it starts with a ^"
  fails "String#tr_s tries to convert from_str and to_str to strings using to_str"

  fails "String#sub with pattern, replacement replaces \\\\\\+ with \\\\+"
  fails "String#sub with pattern, replacement replaces \\\\\1 with \\"
  fails "String#sub with pattern, replacement replaces \\\1 with \1"
  fails "String#sub with pattern and Hash returns a copy of self with the first occurrence of pattern replaced with the value of the corresponding hash key"
  fails "String#sub with pattern and Hash removes keys that don't correspond to matches"
  fails "String#sub with pattern and Hash ignores non-String keys"
  fails "String#sub with pattern and Hash uses a key's value only a single time"
  fails "String#sub with pattern and Hash uses the hash's default value for missing keys"
  fails "String#sub with pattern and Hash coerces the hash values with #to_s"
  fails "String#sub with pattern and Hash uses the hash's value set from default_proc for missing keys"
  fails "String#sub with pattern and Hash sets $~ to MatchData of first match and nil when there's none for access from outside"
  fails "String#sub with pattern and Hash doesn't interpolate special sequences like \\1 for the block's return value"
  fails "String#sub with pattern and Hash untrusts the result if the original string is untrusted"
  fails "String#sub with pattern and Hash untrusts the result if a hash value is untrusted"
  fails "String#sub with pattern and Hash taints the result if the original string is tainted"
  fails "String#sub with pattern and Hash taints the result if a hash value is tainted"



  fails "String#casecmp independent of case for non-ASCII characters returns -1 when numerically less than other"
  fails "String#casecmp independent of case for non-ASCII characters returns 1 when numerically greater than other"

  fails "String#byteslice returns the character code of the character at the given index"
  fails "String#byteslice returns nil if index is outside of self"
  fails "String#byteslice calls to_int on the given index"
  fails "String#byteslice raises a TypeError if the given index is nil"
  fails "String#byteslice raises a TypeError if the given index can't be converted to an Integer"
  fails "String#byteslice with index, length returns the substring starting at the given index with the given length"
  fails "String#byteslice with index, length always taints resulting strings when self is tainted"
  fails "String#byteslice with index, length returns nil if the offset falls outside of self"
  fails "String#byteslice with index, length returns nil if the length is negative"
  fails "String#byteslice with index, length calls to_int on the given index and the given length"
  fails "String#byteslice with index, length raises a TypeError when idx or length can't be converted to an integer"
  fails "String#byteslice with index, length raises a TypeError when the given index or the given length is nil"
  fails "String#byteslice with index, length returns subclass instances"
  fails "String#byteslice with index, length handles repeated application"
  fails "String#byteslice with Range returns the substring given by the offsets of the range"
  fails "String#byteslice with Range returns nil if the beginning of the range falls outside of self"
  fails "String#byteslice with Range returns an empty string if range.begin is inside self and > real end"
  fails "String#byteslice with Range always taints resulting strings when self is tainted"
  fails "String#byteslice with Range returns subclass instances"
  fails "String#byteslice with Range calls to_int on range arguments"
  fails "String#byteslice with Range works with Range subclasses"
  fails "String#byteslice with Range handles repeated application"

  fails "String#count counts occurrences of chars from the intersection of the specified sets"
  fails "String#count negates sets starting with ^"
  fails "String#count counts all chars in a sequence"
  fails "String#count raises if the given sequences are invalid"
  fails "String#count calls #to_str to convert each set arg to a String"
  fails "String#count raises a TypeError when a set arg can't be converted to a string"

  fails "String#delete returns a new string with the chars from the intersection of sets removed"
  fails "String#delete raises an ArgumentError when given no arguments"
  fails "String#delete negates sets starting with ^"
  fails "String#delete deletes all chars in a sequence"
  fails "String#delete respects backslash for escaping a -"
  fails "String#delete raises if the given ranges are invalid"
  fails "String#delete taints result when self is tainted"
  fails "String#delete tries to convert each set arg to a string using to_str"
  fails "String#delete raises a TypeError when one set arg can't be converted to a string"
  fails "String#delete returns subclass instances when called on a subclass"

  fails "String#each_byte returns an enumerator when no block given"
  fails "String#each_byte keeps iterating from the old position (to new string end) when self changes"
  fails "String#each_byte passes each byte in self to the given block"

  fails "String#== returns false if obj does not respond to to_str" #passes except for the line with symbol: fails "'hello'.send(@method, :hello).should be_false"
  fails "String#eql? when given a non-String returns false" #passes except for the line with symbol: fails "'hello'.should_not eql(:hello)"

  fails "String#hex treats leading characters of self as a string of hex digits"

  fails "String#initialize with an argument raises a RuntimeError on a frozen instance when self-replacing"
  fails "String#initialize with an argument raises a RuntimeError on a frozen instance that is modified"
  fails "String#initialize with an argument raises a TypeError if other can't be converted to string"
  fails "String#initialize with an argument tries to convert other to string using to_str"
  fails "String#initialize with an argument replaces the encoding of self with that of other"
  fails "String#initialize with an argument does not trust self if other is trusted"
  fails "String#initialize with an argument untrusts self if other is untrusted"
  fails "String#initialize with an argument does not untaint self if other is untainted"
  fails "String#initialize with an argument taints self if other is tainted"
  fails "String#initialize with an argument replaces the content of self with other"
  fails "String#initialize with an argument returns self"
  fails "String#initialize with no arguments does not raise an exception when frozen"
  fails "String#initialize is a private method"

  fails "String#upto passes successive values, starting at self and ending at other_string, to the block"
  fails "String#upto calls the block once even when start eqals stop"
  fails "String#upto doesn't call block with self even if self is less than stop but stop length is less than self length"
  fails "String#upto doesn't call block if stop is less than self and stop length is less than self length"
  fails "String#upto doesn't call the block if self is greater than stop"
  fails "String#upto stops iterating as soon as the current value's character count gets higher than stop's"
  fails "String#upto returns self"
  fails "String#upto tries to convert other to string using to_str"
  fails "String#upto raises a TypeError if other can't be converted to a string"
  fails "String#upto does not work with symbols"
  fails "String#upto returns an enumerator when no block given"
  fails "String#upto returns non-alphabetic characters in the ASCII range for single letters"
  fails "String#upto stops before the last value if exclusive"
  fails "String#upto on sequence of numbers calls the block as Integer#upto"

  fails "String#* always taints the result when self is tainted"
  fails "String#* returns subclass instances"
  fails "String#* raises a RangeError when given integer is a Bignum"
  fails "String#* raises an ArgumentError when given integer is negative"
  fails "String#* tries to convert the given argument to an integer using to_int"

  fails "String.new returns a binary String"
  fails "String.new raises TypeError on inconvertible object"
  fails "String.new is called on subclasses"
  fails "String.new returns an instance of a subclass"
  fails "String.new returns a new string given a string argument"
  fails "String.new returns a fully-formed String"

  fails "String#+ taints the result when self or other is tainted"
  fails "String#+ when self is in an ASCII-incompatible encoding incompatible with the argument's encoding uses self's encoding if both are empty"
  fails "String#+ when self is in an ASCII-incompatible encoding incompatible with the argument's encoding uses self's encoding if the argument is empty"
  fails "String#+ when self is in an ASCII-incompatible encoding incompatible with the argument's encoding uses the argument's encoding if self is empty"
  fails "String#+ when self is in an ASCII-incompatible encoding incompatible with the argument's encoding raises Encoding::CompatibilityError if neither are empty"
  fails "String#+ when the argument is in an ASCII-incompatible encoding incompatible with self's encoding uses self's encoding if both are empty"
  fails "String#+ when the argument is in an ASCII-incompatible encoding incompatible with self's encoding uses self's encoding if the argument is empty"
  fails "String#+ when the argument is in an ASCII-incompatible encoding incompatible with self's encoding uses the argument's encoding if self is empty"
  fails "String#+ when the argument is in an ASCII-incompatible encoding incompatible with self's encoding raises Encoding::CompatibilityError if neither are empty"
  fails "String#+ when self and the argument are in different ASCII-compatible encodings uses self's encoding if both are ASCII-only"
  fails "String#+ when self and the argument are in different ASCII-compatible encodings uses self's encoding if the argument is ASCII-only"
  fails "String#+ when self and the argument are in different ASCII-compatible encodings uses the argument's encoding if self is ASCII-only"
  fails "String#+ when self and the argument are in different ASCII-compatible encodings raises Encoding::CompatibilityError if neither are ASCII-only"
  fails "String#+ when self is ASCII-8BIT and argument is US-ASCII uses ASCII-8BIT encoding"

  fails "String#rpartition with String raises an error if not convertible to string"
  fails "String#rpartition with String converts its argument using :to_str"
  fails "String#rpartition with String affects $~"
  fails "String#rpartition with String accepts regexp"
  fails "String#rpartition with String always returns 3 elements"
  fails "String#rpartition with String returns an array of substrings based on splitting on the given string"
end
