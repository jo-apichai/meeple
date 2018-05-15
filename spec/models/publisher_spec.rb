require 'rails_helper'

RSpec.describe Publisher, type: :model do
  # Associations
  it { is_expected.to have_many(:games) }

  # Validations
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to allow_value(Faker::Internet.url).for(:website) }
  it { is_expected.not_to allow_value(Faker::Name.name).for(:website) }
end
