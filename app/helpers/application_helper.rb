module ApplicationHelper

	def importance_order(arr)
		arr.each do |a|
			if a.import_value == nil
				a.import_value = 100
			end
		end
		arr.sort_by!{ |a| a.import_value }
		return arr
	end

	def move_to_start(id)
		im = Item.all
		im = importance_order(im)
		t = im.delete(Item.find(id))
		im.unshift(t)
		b = 1
		im.each do |x|
			x.import_value = b
			b+=1
		end
	end
	
	def move_to_end(id)
		im = Item.all
		im = importance_order(im)
		t = im.delete(Item.find(id))
		im.push(t)
		b = 1
		im.each do |x|
			x.import_value = b
			b+=1
		end
	end
	
end
