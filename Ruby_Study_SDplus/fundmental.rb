# メソットのよびだし
#引数なし
1.to_s()
1.to_s
#16進数に変換
10.to_s(16)
# かっこの省略
10.to_s 16

# use ; for end of statment
1.to_s; nil.to_s; 10.to_s 16

# use 3 line, if it's clear for use.
10.to_s(
  16
)

# use 2 line by "\"
10.to_s \
16

=begin
 This is Commnent.
=end

# literal
123
"Hello"
[1,2,3]
{japan: 'yen', us: 'doller'}

#正規表現
#Regular Expression
/\d+-\d+/

# this is the same
10000
10_000

# Rounding error
# to escape that, using Rational class
0.1r * 0.3r #=> (3/10)

#Return is not pop in Ruby
#but in case of stopping to the way of method

def greeting(country)
  return 'entor your country' if country.nil?
  if country == 'japan'
    put 'yen'
  end
end

# %p! is the same ''
puts %q!This is it.!

# %Q! and %! is the same double quart
that = "it"
puts %Q!This is #{that}.!
puts %!This is #{that}!
puts %q?This is the same.?
puts %q{This is ok}

#can be use any lines
puts 'Line1,
Line2'

#Here document
a = <<~TEXT
 This is here document.
 Usefull for long text.
TEXT
puts a

a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a

b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

#define format
sprintf('%0.3f',1.2) #=> 1.200
'%0.3f' % 1.2 #same
sprintf('%0.3f + %0.3f',1.2,0.48) #=> 1.200 + 0.480
'%0.3f + %0.3f' % [1.2,0.48] #same

#etc
[10,20,30].join #=> 102030
'HI!' * 3 #=> HI!HI!HI!

#Ternary operator
n = 11
message = n > 10 ? 'large' : 'small'
message #=> large

#defaltset
def foo(time = Time.now,message = bar)
  puts %Q{time: #{time}, message: #{message} }
end

def bar
  'BAR'
end

#isEmpty()
''.empty? #=> true
'abc'.empty? #=> defaltset

'watch'.include?('at') #=> t
1.odd?
1.even?
2.odd?
2.even?
nil.nil?

#variable strage reference object.

a = 'hello'
b = 'hello'
a.object_id
b.object_id
c = b
a.equal?(b) #f
b.equal?(c) #t

#Date is not defalt libraly
require 'date'
Date.today

#if you want to use your own libraly
require './path'

#require is only 1 time read File
# load is any Time

load './path'

#require rubyを実行しているディレクトリがパスの起点になる。
#require_relativeは実行しているファイルが存在する場所が起点になる。
#sample
require_relative '../bar/bye'
