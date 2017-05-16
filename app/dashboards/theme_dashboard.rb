require "administrate/base_dashboard"

class ThemeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    logo: Field::Paperclip,
    # logo:  Field::Image,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    # link_color: Field::String.with_options(html_class: "jscolor", data_name: "colorpicker1"),
    link_color: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    logo_file_name: Field::String,
    logo_content_type: Field::String,
    logo_file_size: Field::Number,
    logo_updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :logo,
    :id,
    :title,
    :description,
    :link_color,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :logo,
    :id,
    :title,
    :description,
    :link_color,
    :created_at,
    :updated_at,
    # :logo_file_name,
    # :logo_content_type,
    # :logo_file_size,
    # :logo_updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :logo,
    :title,
    :description,
    :link_color,
    # :logo_file_name,
    # :logo_content_type,
    # :logo_file_size,
    # :logo_updated_at,
  ].freeze

  # Overwrite this method to customize how themes are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(theme)
    "Theme ##{theme.id}"
  end
end
