# frozen_string_literal: true

class SideMenuComponent < ViewComponent::Base
  def initialize(title:, path:, icon:)
    @title = title
    @path = path
    @icon = icon
  end
end
