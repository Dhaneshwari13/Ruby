#for loop with array
#arr=[1,2,3,4,5,6];
# for loop
#for i in 10..15   # range from 10 to 15
 # puts i
#end



# while loop
#i = 10
#while i <= 15
 # puts i
 # i += 1
#end


# do-while loop (runs at least once)
#i = 10
#begin
  #puts i
 # i += 1
#end while i <= 15

#using the until iterator
#k=0
#until k>=20 do
    #puts k
    #k+=1
#end

#for i in 1..20
 # puts "this is from my until iterator #{k}"
  #next if i > 5
  #break if i > 10
#end

#flag=false
#for z in 1..3
   # puts z
    #if z==2 && flag==false
        #flag=true
       # redo
    #end
#end

#10.times do
   # puts "this is time iterator"
#end


#each
#map
#all
#reject,inject
#select

arr2=[]
arr = [1,2,3,4,5,6];
#select using we can create the new array based on the condition and it will create new array
print arr.select{ |n|  n<3 }

arr2.each do |m|
    puts "this is the select collected array #{m}"
end

print arr.reject{ |n| n>5}  #puts arr
                            #print arr.select{ |n|  n<3 }
                            #print arr.reject{ |n| n>5 }

                        
arr3=[1,2,3,4,5,6,7,8]
#map vs select vs reject
print arr3
puts "it will return true if all the condition is true"
print arr3.all?{|n| n>5}
puts "it will return true if all the condition is true"
print arr3.any?{|n| n>6}
puts
print arr3
#map helps us to
arr5 == arr3.map{|m| m*2}
print "#{arr3} original array"

 
print arr3.map{|m| m*2}
 arr.collect{|m| m*2}
 arr4=arr3.each{|m| m*2}







