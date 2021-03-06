require "spec_helper"

RSpec.describe RuboCop::Cop::Lint::UnlessMultipleConditions do
  subject(:cop) { described_class.new(config) }

  let(:config) { RuboCop::Config.new }

  it "registers an offense when using `unless` with multiple `and` conditions" do
    expect_offense(<<~RUBY)
      unless foo && bar
             ^^^^^^^^^^ Avoid using `unless` with multiple conditions.
        something
      end
    RUBY
  end

  it "registers an offense when using `unless` with multiple `or` conditions" do
    expect_offense(<<~RUBY)
      unless foo || bar
             ^^^^^^^^^^ Avoid using `unless` with multiple conditions.
        something
      end
    RUBY
  end

  it "does not register an offense when using `if` with multiple `and` conditions" do
    expect_no_offenses(<<~RUBY)
      if !foo && !bar
        something
      end
    RUBY
  end

  it "does not register an offense when using `if` with multiple `or` conditions" do
    expect_no_offenses(<<~RUBY)
      if !foo || !bar
        something
      end
    RUBY
  end

  it "does not register an offense when using `unless` with single condition" do
    expect_no_offenses(<<~RUBY)
      unless foo
        something
      end
    RUBY
  end
end
