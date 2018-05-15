require 'rails_helper'

RSpec.describe Game, type: :model do
  # Associations
  it { is_expected.to belong_to(:publisher) }

  # Validations
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:publisher) }
end
