# frozen_string_literal: true

class HeaderComponent < ViewComponent::Base
  def initialize(title:, **options)
    @title = title
    @back = options[:back] if options
    @icon = options[:icon] if options
  end
end
