require "rspec/expectations"

describe "before and after callbacks" do
  after(:each) do
    puts "after each"
  end

  after(:all) do
    puts "after all"
  end

  before(:all) do
    puts "before all"
  end

  before(:each) do
    puts "before1 each"
  end

  puts "out of inner describe"

  describe "In middle" do
    before { puts "before each in inner" }
    puts "In middle"
   # it do
   # end
  end

  #it "gets run in order" do
  #end

  before(:each) do
    puts "before2 each"
  end

end

#describe "After callbacks" do
#  puts "Rellay****"
#  it do
#  puts "After callbacks"
#  end
#end

