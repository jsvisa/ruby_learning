module CheckedAttributes
  def self.included(base) 
    base.extend(ClassMethods)
  end

  module ClassMethods
    def attr_checked(attribute, &validation)
      define_method "#{attribute}=" do |value|
        raise 'Invalid attribute' unless validation.call(value) 
        instance_variable_set("@#{attribute}", value)
      end

      define_method attribute do 
        instance_variable_get "@#{attribute}"
      end
    end
  end
end

class M
  include CheckedAttributes
  attr_checked(:age) { |v| v>=19}
end

m = M.new
m.age = 19

