require 'spec_helper'

describe User, type: :model do
  let(:user) { User.create }

  describe '#name' do
    context 'when value is nil' do
      it 'should return default value' do
        expect(user.name).to eq('no name')
      end

      it 'should return read_attribute is nil' do
        expect(user.read_attribute(:name)).to be_nil
      end
    end

    context 'when value assigned' do
      before { user.name = 'foo' }

      it 'should return assigned value' do
        expect(user.name).to eq('foo')
      end
    end

    context 'when value saved' do
      before { user.update_attribute(:name, 'foo') }

      it 'should return saved value' do
        expect(user.name).to        eq('foo')
        expect(user.reload.name).to eq('foo')
      end
    end
  end
end
