FactoryBot.define do
  factory :page, :class => Wordpress::Page do
    post_title { 'Page' }
    post_content { "Coming Soon!" }
    post_excerpt { "" }
    to_ping { "" }
    pinged { "" }
    post_content_filtered { "" }
    association :post_author
  end
end
