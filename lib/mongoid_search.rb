module MongoidSearch
  require 'mongoid_search/finders'
  require 'helpers'
  require 'mongoid'
end
Mongoid::Finders.send(:include, MongoidSearch::Finders)
ActionController::Base.helper MongoidSearch::Helpers::FormHelper