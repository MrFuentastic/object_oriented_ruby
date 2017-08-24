require "./employee"
require "./reportable"

module Actualize

  class Intern < Employee
    include Reportable
  end

end