FactoryBot.define do
  factory :category, class: Wordpress::Category do
    transient do
      name { "NAME" }
    end
    description { "Describes #{name}" }
    term_id { create(:term, name: name).id }
  end
end
