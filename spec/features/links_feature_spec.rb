require 'rails_helper'
require 'spec_helper'

describe 'the root page' do
  before { visit root_path }
  subject { page }

  describe 'links on the page' do
    it { should have_link 'Обо мне', href: '#' }
    it { should have_link 'Мои работы', href: '#' }
    it { should have_link 'Сделать заказ', href: '#' }
    it { should have_link 'Контакты', href: '#' }
  end

  describe 'name and avatar on the page' do
    it { should have_text 'Яковенко Денис Алекcандрович' }

    it 'contains the avatar' do
      visit page.find('img#avatar')[:src]
      expect(status_code).to be 200
    end
  end
end
