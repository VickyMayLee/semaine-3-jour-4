require_relative '../lib/exo_scrapping'

describe "final_array" do
  it "should include the folliwing keys" do
    expect (subject.hash).to include(:Bitcoin)
  end

  it "should include the following keys" do
    expect (subject.hash).to include(:Cardano)
  end 
  
end