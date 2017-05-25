# Roman Numerals


With this approach, we start simple.  The first test we have for converting an Arabic number to a Roman numeral is converting 1 to I.  Then we make things a little harder; we'll convert 4.  From there, maybe we'll move on to converting 5.  We'll continue with this step-by-step approach until we can convert any Arabic number to its Roman numeral equivalent.

##Releases

###Release 0 : Old Roman Numerals

| Arabic Number  | Roman Numeral |
| -------------- | ------------- |
| 1              | I             |
| 5              | V             |
| 10             | X             |
| 50             | L             |
| 100            | C             |
| 500            | D             |
| 1000           | M             |

*Table 1*. Arabic number and their old Roman numeral equivalents.


In the early days of Roman numerals, the Romans built their numerals from the individual characters in Table 1 (e.g., I, V, X, etc.) written largest value to smallest from left to right.  To determine the value of any numeral, they used straight addition.  I is equivalent to 1.  II is equivalent to 1 + 1, or 2.  VIIII is equivalent to 5 + 1 + 1 + 1 + 1, or 9.

We are going to begin writing a method `convert_to_roman`.  When passed an integer between 1 and 3000, this method returns a string containing the proper old Roman numeral.  In other words, `convert_to_roman(4)` should return the string `'IIII'`.  Don't worry about checking whether or not the number passed to the method is between 1 and 3000; it's just that at some point, Roman numerals become unwieldy.

We'll need to test that our code works. We have a test file `spec/roman_numerals_spec.rb`.  This file contains two tests which have been provided for us.  One test will let us know whether we're correctly converting 1. The second test will let us know if we're correctly converting 4.

Run the test suite (see *Summary* for instructions).  The tests should fail since we haven't done any work yet.

Let's start simple and make the test for converting 1 pass.  To do so, write the least amount of code as possible—maybe your method just returns a hard-coded string.

After the test for converting 1 is passing, let's pass the test for converting 4.  Again, write the least amount of code as possible.

### Release 1: Write New Tests

The two provided tests were enough to get us started, but they don't cover all the behavior that we expect from our method.  Can our method convert 5, 6, 10, etc.?  We'll need to write and pass tests that confirm our method is working as intended.

Update the file `spec/roman_numerals_spec.rb` with a new test for converting the number 5.  Then, make this new test pass.  Once the test passes, write the next test.  Which Arabic number would be a good candidate to check next?

Repeat the cycle of writing and passing tests until we're confident that our method will convert any number from 1 to 3000.

*Hint*: It might be useful to use the integer division `/` and modulus `%` methods.

### Release 2: Options for Modern Roman Numerals

| Arabic Number | Roman Numeral |
| ------------- | ------------- |
| 4             | IV            |
| 9             | IX            |
| 14            | XIV           |
| 44            | XLIV          |
| 99            | XCIX          |
| 400           | CD            |
| 944           | CMXLIV        |

*Table 2*.  Modern Roman numeral examples.

Eventually, the Romans changed systems.  Now, putting a smaller numeral before a larger one meant you had to subtract the smaller one.  So, instead of 4 being represented by 1 + 1 + 1 + 1, it was now 5 - 1, or IV.  4 was not the only value affected (see Table 2 for more examples).

We're going to update our method so that it will give us back either old Roman numerals or modern Roman numerals.  As we continue learning Ruby, we'll frequently see a pattern of allowing users to tweak the behaviors of methods by passing an optional *options hash*.

In our method, we're going to allow users to specify that they want modern Roman numerals by passing in an options hash like `{ modern: true }`, which has a `:modern` key with a value of `true`.

```ruby
def convert_to_roman(arabic_number, options = {})
  # code ...
end
```

*Figure 1*.  Updated method definition which accepts an options hash.

Let's start by updating our method definition to accept a second argument that defaults to an empty hash (see Figure 1).

We've modified our code by adding this optional second argument.  Let's run our tests to make sure that we haven't broken our code for returning old Roman numerals.

### Release 3: Return Modern Roman Numerals

```ruby
convert_to_roman(4)
 => "IIII"
 
convert_to_roman(4, { modern: true })
 => "IV"
```

*Figure 2*.  The method returns either old or modern Roman numerals.

When we call our method, we can specify that we want to get modern Roman numerals.  To get modern Roman numerals, we pass the Arabic number and also a hash with a `:modern` key with the value `true` (see Figure 2).

```ruby
describe 'modern Roman numerals' do
  # Release 3 ...
  # add tests for modern roman numerals here

  it 'converts 1 to I' do
    expect(convert_to_roman(1, { modern: true })).to eq "I"
  end
end
```
*Figure 3*.  Example test for returning modern Roman numerals.


We'll need to write new tests that describe the new expectations for our method.  Can we convert 1 to modern Roman numerals (see Figure 3)?  Can we convert 4 to modern Roman numerals?  Which numbers would it be necessary to test (see Table 2 for examples)?

Develop your modern Roman numerals test suite, writing and passing one test at a time until you're convinced that your method can convert any number from 1 to 3000 to both old and modern Roman numerals.


## Conclusion
This challenge is a useful exercise in understanding the relationship between how we represent our data and the actions we want to perform on it—a dynamic you'll see at play in almost every piece of software you write.  How did we decide to represent the relationship between a Roman numeral and its Arabic number equivalent (e.g., X to 10)?  Was it easy to map from one to the other?  Were all the mappings organized together?  Did our representation of the relationship make it easier or harder when it came time to switch to modern Roman numerals?

### More on Data Representations
Reflect on the pros and cons of Arabic numbers and Roman numerals. Imagine we're engineers building a system for people to manipulate numbers and we have two proposals: use Roman numerals or use [Arabic numbers](http://en.wikipedia.org/wiki/Arabic_numerals). How do we decide and why?

What benefits do Arabic numerals have over Roman numerals as a way to represent numbers? For example, with Arabic numerals we have an obvious way to represent 0. Arabic numerals also typically require fewer characters to represent the same number (e.g., "3111" vs "MMMCXI"). What else? 

For example, if we're counting people as they walk into a room by marking something on a piece of paper, Arabic numerals are a terrible representation. That'd be like trying to go for a hike and using a political map as a guide.  Would Roman numerals be any better?  An option more appropriate for the task might be [tally marks](http://en.wikipedia.org/wiki/Tally_marks).