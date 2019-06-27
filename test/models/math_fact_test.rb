require 'test_helper'

class MathFactTest < ActiveSupport::TestCase
  
  # Before every test
  setup do
    @one_one = math_facts(:n1_1)
    @one_two = math_facts(:n1_2)
    @two_one = math_facts(:n2_1)
  end

  test "fixture is valid" do
    assert @one_one.valid?
  end
  
  test "invalid without a user" do
    @one_one.user = nil
    assert_not @one_one.valid?
  end
  
  test "invalid without first_number" do
    @one_one.first_number = nil
    assert_not @one_one.valid?
  end

  test "invalid without second_number" do
    @one_one.first_number = nil
    assert_not @one_one.valid?
  end

  test "invalid without answer" do
    @one_one.first_number = nil
    assert_not @one_one.valid?
  end

  test "invalid if first_number & second_number aren't unique" do
    one_one_copy = @one_one.dup
    assert_not one_one_copy.valid?
  end

  test "fixture is valid if first number is the same but second is different" do
    assert @one_one.valid?
    assert @one_two.valid?
  end

  test "fixture is valid if second number is the same but first is different" do
    assert @one_two.valid?
    assert @two_one.valid?
  end
  
end
