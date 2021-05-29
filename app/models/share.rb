class Share < ApplicationRecord
  mount_uploader :room_image, RoomImageUploader
end
