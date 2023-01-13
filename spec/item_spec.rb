require_relative '../classes/item'

describe Item do
    context 'Testing the item class'
    name = 'The Last of Us'
    publish_date = '2020-01-01'
    item = Item.new(name, publish_date)
    
    it 'should validate the name of the item' do
        expect(item.name).to eq 'The Last of Us'
    end
    
    it 'should validate the publish date of the item' do
        expect(item.publish_date).to eq '2020-01-01'
    end

    it 'should validate the can_be_archived? method for less than 10years' do
        expect(item.can_be_archived?).to eq false
    end

    it 'Should validate the archived property for less than 10years as false' do
        expect(item.move_to_archive).to eq false
    end

    it 'should validate the can_be_archived? method for more than 10years' do
        item.publish_date = '2009-01-01'
        expect(item.can_be_archived?).to eq true
    end

    it 'Should validate the archived property for more than 10years as true' do
        expect(item.move_to_archive).to eq true
    end


end