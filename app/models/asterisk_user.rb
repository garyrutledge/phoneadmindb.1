class AsteriskUser < ActiveRecord::Base
  belongs_to :asterisk_call_group
  has_many :asterisk_devices
end
