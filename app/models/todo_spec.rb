require 'spec_helper'

describe Todo do

  before(:each) do
    @attr = { :name => "Example Todo", :status => "2" }
  end

  it "should create a new instance given valid attributes" do
    		Todo.create!(@attr)
  end

  it "should require a name" do 
  		no_name_todo = Todo.new(@attr.merge(:name =>""))
  		no_name_todo.should_not be_valid
  	end
end