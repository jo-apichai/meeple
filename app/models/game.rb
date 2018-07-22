class Game < ApplicationRecord
  # Friendly ID
  extend FriendlyId
  friendly_id :name, use: :slugged

  # Associations
  belongs_to :publisher

  # Attachments
  has_one_attached :cover

  # Validations
  validates :name, presence: true
  validates :publisher, presence: true

  # Callbacks
  before_destroy :remove_attached_files

  # Scopes
  default_scope { order(:id) }

  def cover_image_url(options = nil)
    return "placeholder/default.png" unless cover.attached?

    options ? cover.variant(options) : cover
  end

  private def should_generate_new_friendly_id?
    name_changed?
  end

  private def remove_attached_files
    cover.purge
  end
end
