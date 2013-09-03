require 'test/unit'

class Person; end

class TestCheckedAttribute < Test::Unit::TestCase
  def setup
    add_checked_attribute(Person, :age) { |v| v >= 18 }
    @bob = Person.new
  end

  def test_accepts_valid_values
    @bob.age = 20
    assert_equal 20, @bob.age
  end

  def test_refuses_nil_values
    assert_raises RuntimeError, "Invalid attribute" do
      @bob.age = nil
    end
  end

  def test_refuses_small_values
    assert_raises RuntimeError, "Invalid attribute" do
      @bob.age = 17
    end
  end

  def test_refuses_false_values
    assert_raises RuntimeError, "Invalid attribute" do
      @bob.age = false
    end
  end

  def add_checked_attribute(clazz, attribute, &validation)
    # means 1
    # eval "
    #   class #{clazz}
    #     def #{attribute}=(value)
    #       raise 'Invalid attribute' unless value
    #       @#{attribute} = value
    #     end

    #     def #{attribute}
    #       @#{attribute}
    #     end
    #   end
    # "

    # means 2
    clazz.class_eval do 
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call(value) 
        instance_variable_set("@#{attribute}", value)
      end

      define_method "#{attribute}" do 
        instance_variable_get "@#{attribute}"
      end
    end
  end

end

