class PeopleController < ApplicationController

  def index
    offset = rand(Person.count)
    person = Person.first(:offset => offset)
    person.delay.touch
    render :text => "#{person.name}.delay.touch"
  end

end
