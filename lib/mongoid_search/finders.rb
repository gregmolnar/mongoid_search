module MongoidSearch
  module Finders
    
    def filter(params)
      criteria = {}
      params.each do |k, v|
        next if v.empty?
        case self.fields[k].options[:type]
        when Object
          if self.fields[k].options[:identity] 
            v = v.to_i 
          else
            v = v.to_s
          end
        when String
          v = v.to_s
        when Integer
          v = v.to_i
        end

        criteria[k] = v
      end unless params.nil?
      self.find(:all, {conditions: criteria})
    end
  end
end