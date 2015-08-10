class Mission < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
end
