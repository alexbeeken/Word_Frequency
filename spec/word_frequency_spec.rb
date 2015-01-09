require('rspec')
require('word_frequency')
require('pry')

describe('String#word_frequency') do

  it('returns 0 with no input') do
    expect(("").word_frequency("")).to(eq(0))
  end

  it('counts correctly a one letter word in a string') do
    expect(("a").word_frequency("a")).to(eq(1))
  end

  it('does not count a match if one letter words do not match') do
    expect(("a").word_frequency("b")).to(eq(0))
  end

  it('does not count a match if word is part of another word') do
    expect(("be a").word_frequency("a")).to(eq(1))
  end
  
  it('does not count a one letter word if it is not a separate word, separated by a space') do
    expect(("aa").word_frequency("a")).to(eq(0))
  end

  it('counts repeated one letter words as separate') do
    expect(("a a").word_frequency("a")).to(eq(2))
  end

  it('counts multi letter words when matching') do
    expect(("foo").word_frequency("foo")).to(eq(1))
  end

  it('counts multiple multi letter words when matching') do
    expect(("foo foo").word_frequency("foo")).to(eq(2))
  end


  it('does not count multiple mutli letter words when not matching') do
    expect(("bar bar").word_frequency("foo")).to(eq(0))
  end

  it('finds matching multi letter words and counts them correctly') do
    expect(("foo bar").word_frequency("foo")).to(eq(1))
  end
  
  it('counts matches that begin or end with punctuation.') do
    expect(("'foo' foo. bar").word_frequency("foo")).to(eq(2))
  end
  
  it('finds matches that are in different case') do
    expect(("Foo Bar foO").word_frequency("foo")).to(eq(2))
  end
 
  it('finds each instance of the word dream in MLKs I Have a Dream Speech') do
    expect(("This is our hope, and this is the faith that I go back to the South with. With this faith, we will be able to hew out of the mountain of despair a stone of hope. With this faith, we will be able to transform the jangling discords of our nation into a beautiful symphony of brotherhood. With this faith, we will be able to work together, to pray together, to struggle together, to go to jail together, to stand up for freedom together, knowing that we will be free one day. And this will be the day -- this will be the day when all of God's children will be able to sing with new meaning: My country 'tis of thee, sweet land of liberty, of thee I sing. Land where my fathers died, land of the Pilgrim's pride, From every mountainside, let freedom ring! And if America is to be a great nation, this must become true. And so let freedom ring from the prodigious hilltops of New Hampshire. Let freedom ring from the mighty mountains of New York. Let freedom ring from the heightening Alleghenies of Pennsylvania. Let freedom ring from the snow-capped Rockies of Colorado. Let freedom ring from the curvaceous slopes of California. But not only that: Let freedom ring from Stone Mountain of Georgia. Let freedom ring from Lookout Mountain of Tennessee. Let freedom ring from every hill and molehill of Mississippi. From every mountainside, let freedom ring. And when this happens, and when we allow freedom ring, when we let it ring from every village and every hamlet, from every state and every city, we will be able to speed up that day when all of God\'s children, black men and white men, Jews and Gentiles, Protestants and Catholics, will be able to join hands and sing in the words of the old Negro spiritual: Free at last! Free at last! Thank God Almighty, we are free at last!").word_frequency("we")).to(eq(8))

   end
end
