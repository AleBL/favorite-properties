require 'rails_helper'

RSpec.describe Buildings do
  describe 'Buildings' do
    let(:last_page) { subject.total_pages }

    context 'return all buildings especific page with page param is valid' do
      it 'first page' do
        expect(subject.current_page).to eq(1)
      end

      it 'last page' do
        subject.load_page(last_page)

        expect(subject.current_page).to eq(last_page)
      end

      it 'random page' do
        random_page = rand(1..last_page)
        subject.load_page(random_page)

        expect(subject.current_page).to eq(random_page)
      end
    end

    context 'return all buildings first page with page param is invalid' do
      it 'parameter page is greater than the total number of pages' do
        random_page = rand((last_page + 1)..999)
        subject.load_page(random_page)

        expect(subject.current_page).to eq(1)
      end

      it 'parameter page is less than one' do
        random_page = rand(-999..0)
        subject.load_page(random_page)

        expect(subject.current_page).to eq(1)
      end
    end
  end
end
