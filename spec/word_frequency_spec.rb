require('rspec')
require('word_frequency')
require('pry')

describe('String#word_frequency') do

  it('returns 0 with no input') do
    expect(("").word_frequency("")).to(eq(0))
  end

  it('counts correctly a one letter word in a string') do
    expect(("a")).word_frequency("a").to(eq(1))
  end
  
=begin

  it('does not count a match if one letter words do not match') do
    expect(("a")).word_frequency("b").to(eq(0))
  end

  it('does not count a match if word is part of another word') do
    expect(("a")).word_frequency("ba a").to(eq(1))
  end

  it('does not count a one letter word if it is not a separate word, separated by a space') do
    expect(("a")).word_frequency("aa").to(eq(0))
  end

  it('counts repeated one letter words as separate') do
    expect(("a")).word_frequency("a a").to(eq(2))
  end

  it('counts multi letter words when matching') do
    expect(("foo")).word_frequency("foo").to(eq(1))
  end

  it('counts multiple multi letter words when matching') do
    expect(("foo")).word_frequency("foo foo").to(eq(2))
  end


  it('does not count multiple mutli letter words when not matching') do
    expect(("foo")).word_frequency("bar bar").to(eq(0))
  end

  it('finds matching multi letter words and counts them correctly') do
    expect(("foo")).word_frequency("foo bar").to(eq(1))
  end
=end
  
end
