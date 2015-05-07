class AsteriskUser < ActiveRecord::Base
  belongs_to :asterisk_call_group
end
