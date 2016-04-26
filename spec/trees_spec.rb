require 'trees'

describe Node do
    let(:basic) do
        root = Node.new(key: 1)
        root.left = Node.new(key: 2)
        root.right = Node.new(key: 3)
        root.left.left = Node.new(key: 4)
        root.left.right = Node.new(key: 5)
        root.right.left = Node.new(key: 6)
        return root
    end

    let(:tall) do
        root = Node.new(key: 1)
        root.left = Node.new(key: 2)
        root.right = Node.new(key: 3)
        root.left.left = Node.new(key: 4)
        root.left.right = Node.new(key: 5)
        root.right.left = Node.new(key: 6)
        root.right.left.left = Node.new(key: 7)
        root.right.left.left.left = Node.new(key: 8)
        root.right.left.left.left.left = Node.new(key: 9)
        root
    end

    let(:bst1) do
        root = Node.new(key: 8, value: 'a')
        root.left = Node.new(key: 4, value: 'b')
        root.left.left = Node.new(key: 3, value: 'd')
        root.left.right = Node.new(key: 5, value: 'e')
        root.right = Node.new(key: 15, value: 'c')
        root.right.left = Node.new(key: 10, value: 'f')
        root
    end


    describe '#pre_order' do
        it 'prints answer' do
            expect { pre_order(basic) }.to output('124536').to_stdout
        end
    end

    describe '#in_order' do
        it 'prints answer' do
            expect { in_order(basic) }.to output('425163').to_stdout
        end
    end

    describe '#post_order' do
        it 'prints answer' do
            expect { post_order(basic) }.to output('452631').to_stdout
        end
    end

    describe '#height' do
        it 'returns answer' do
            expect(height(basic)).to eq(3)
            expect(height(tall)).to eq(6)
        end
    end

    describe '#level_order' do
        it 'prints answer' do
            expect { level_order(basic) }.to output('123456').to_stdout
        end
    end

    describe '#top_view' do
        it 'prints answer' do
            expect { top_view(basic) }.to output('4213').to_stdout
        end
    end

    describe '#search_bst' do
        it 'returns answer' do
            expect(search_bst(bst1, 10)).to eq('f')
            expect(search_bst(bst1, 3)).to eq('d')
        end
    end

    describe '#insert_into_bst' do
        it 'adds node to correct spot' do
            expect(bst1.left.right.right).to eq(nil)
            insert_into_bst(bst1, 7, 'new')
            expect(bst1.left.right.right.value).to eq('new')
            insert_into_bst(bst1, 9, 'newer')
            expect(bst1.right.left.left.value).to eq('newer')
        end
    end

    describe '#closest_match_bst' do
        it 'returns answer' do
            expect(closest_match_bst(bst1, 1)).to eq('d')
            expect(closest_match_bst(bst1, 12)).to eq('f')
        end
    end

    describe '#is_bst?' do
        it 'returns answer' do
            expect(is_bst?(bst1)).to eq(true)
            insert_into_bst(bst1, 7, 'new')
            expect(is_bst?(bst1)).to eq(true)

            expect(is_bst?(basic)).to eq(false)
        end
    end
end