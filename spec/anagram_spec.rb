require('rspec')
require('anagram')

describe('String#anagram') do
  it('returns nothing if the letters do not match') do
    expect(("dog").anagram("goat")).to eq("")
  end
end

describe('String#anagram') do
  it('returns word if anagram') do
    expect(("dog").anagram("god")).to eq("god ")
  end
end

describe('String#anagram') do
  it('can return multiple anagrams') do
    expect(("dog").anagram("god ogd sdf")).to eq("god ogd ")
  end
end
