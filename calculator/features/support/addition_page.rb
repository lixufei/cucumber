require 'capybara'

class AdditionPage
  include Capybara::DSL
  def login_as_a_child
    visit '/addition'
  end

  def set_value_to_input

    fill_in 'val1-id-spec', :with => 1
    fill_in 'val2-id-spec', :with => 1
  end

  def click_addtion_button
    click_button 'Addition'
  end

  def get_result

  end
end