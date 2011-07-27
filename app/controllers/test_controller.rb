class TestController < ApplicationController

  def index
    offset = rand(Test.count)
    test = Test.first(:offset => offset)
    test.delay.touch
    render :text => "#{test.name}.delay.touch"
  end
  
end
