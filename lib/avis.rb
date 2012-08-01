require 'beefcake'

module Avis

end

%w(registry connection message protocol).each do |item|
  require File.join('avis', item)
end
