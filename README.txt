= enumerator_ex

https://github.com/dsisnero/enumerator_ex

== DESCRIPTION:

This gem adds generators weave and cat which

This  gem adds the generators weave and cat which intersperse and
concatenate enumerables.  It also adds partition_lz to lazily
partition an enumerable/enumerator

== FEATURES/PROBLEMS:



== SYNOPSIS:

  a = [1,2,3]
  b = %w[b c]
  e = [10,11,12]
  enum = EnumeratorEx.weave(a,b,c) -> enum    # enum.class : Enumerator
  enum.to_a = [1,'b',10,2,'c',11,3,12]
  Enumerator.cat(a,b,c).to_a = [1,2,3,'b','c',10,11,12]

  require 'enumerator_ex/extension'

  even, odd = (1..Float::INFINITY).each.partition_lz{|n| n.even?}
  even.take(5) => [2,4,6,8,10]
  odd.take(2)  =>  [1,3]

== REQUIREMENTS:

   enumerable_lz

== INSTALL:

* gem install enumerator_ex

== DEVELOPERS:

After checking out the source, run:

  $ rake newb

This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

== LICENSE:

(The MIT License)

Copyright (c) 2012 FIX

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
