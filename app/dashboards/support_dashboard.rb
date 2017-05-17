require "administrate/base_dashboard"

class SupportDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    avatar: Field::Paperclip,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    avatar_file_name: Field::String,
    avatar_content_type: Field::String,
    avatar_file_size: Field::Number,
    avatar_updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :avatar,
    :id,
    :title,
    :description,
    # :created_at,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :avatar,
    :id,
    :title,
    :description,
    :created_at,
    :updated_at,
    # :avatar_file_name,
    # :avatar_content_type,
    # :avatar_file_size,
    # :avatar_updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :avatar,
    :title,
    :description,
    # :avatar_file_name,
    # :avatar_content_type,
    # :avatar_file_size,
    # :avatar_updated_at,
  ].freeze

  # Overwrite this method to customize how supports are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(support)
  #   "Support ##{support.id}"
  # end
end
