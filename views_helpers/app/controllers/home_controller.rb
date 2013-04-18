class HomeController < ApplicationController
  def index
    #numbers
    @dollars = 12345
    @large_number = 2143246435664263
    @phone = 6268215498

    #text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2

    
  end
end