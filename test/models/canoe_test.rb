require "test_helper"

class CanoeTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "cannot save canoe without name and max_crew" do
    c = Canoe.new
    assert !c.save, "Houston, we have a problem"
  end

  test "cannot save canoe without max_crew" do
    c = Canoe.new name: "Abc"
    assert !c.save, "Houston, we have a problem"
  end

  test "cannot save canoe without name" do
    c = Canoe.new max_crew: 3
    assert !c.save, "Houston, we have a problem"
  end
end
