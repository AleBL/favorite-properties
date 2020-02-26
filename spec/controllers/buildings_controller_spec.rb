require 'rails_helper'

RSpec.describe BuildingsController, type: :controller do
  describe 'BuildingsController' do

    context 'return all buildings especific page' do
      let(:buildings_service) { Buildings.new }

      it 'load_buildings' do
        buildings = subject.load_buildings

        expect(buildings).to eq(buildings_service.buildings)
      end

      it 'current_page' do
        current_page = subject.current_page

        expect(current_page).to eq(buildings_service.current_page)
      end

      it 'total_pages' do
        total_pages = subject.total_pages

        expect(total_pages).to eq(buildings_service.total_pages)
      end
    end
  end
end
