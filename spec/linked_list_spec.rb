require 'linked_list'

describe LinkedList do

  context "when list is nil" do
    let(:input_list) { nil }

    it 'should return nil' do
      expect(LinkedList.remove_middle(input_list)).to be_nil 
    end
  end

  context "when list is not a list" do
    let(:input_list) { 1 }

    it 'should return nil' do
      expect(LinkedList.remove_middle(input_list)).to be_nil
    end
  end

  context "when list size is 1" do
    let(:input_list) { LinkedList.new(1) }
    let(:verification_array) { input_list.to_array }

    it 'should not remove the element' do
      result_arr = LinkedList.remove_middle(input_list).to_array
      expect(result_arr).to eq(verification_array)
    end
  end

  context "when list size is 2 or more" do
    let(:input_list) {
      list = LinkedList.new(1)
      (2..size).each {|n| list.add(n)}
      list
    }
    let(:result_arr) { LinkedList.remove_middle(input_list).to_array }

    context "and list size is even" do
      let(:size) { 2 }
      let(:verification_array) { input_list.to_array}
  
      it "should not remove an element" do
        verification_array
        expect(result_arr).to eq(verification_array)
      end
    end

    context "and list size is odd" do
      let(:size) { 3 }
      let(:input_list) {
        list = LinkedList.new(1)
        (2..size).each {|n| list.add(n)}
        list
      }
      let(:verification_array) {
        arr = input_list.to_array
        arr.delete_at(size/2)
        arr
      }

      it "should remove the middle element" do
        verification_array
        expect(result_arr).to eq(verification_array)
      end
    end
  end
end
