# test

describe "Basic Tests" do
  it "Easy Cases" do
    Test.assert_equals(f(1000), 887)
    Test.assert_equals(f(10000), 8887)
    Test.assert_equals(f(500), 487)
    Test.assert_equals(f(487), 467)
  end
end
