# 
# Your previous Plain Text content is preserved below:
# 
# This is just a simple shared plaintext pad, with no execution capabilities.
# 
# When you know what language you'd like to use for your interview,
# simply choose it from the dropdown in the top bar.
# 
# You can also change the default language your pads are created with
# in your account settings: https://coderpad.io/settings
# 
# Enjoy your interview!
# 
# 
# [9, 17] => "Open 9am to 5pm"
# [9, 13], [13, 17] => [9, 17]

def  fix_time(res)
  return res if res.length == 1
  
  result = []
  
    res.each_with_index do |sub, idx| 
      if idx == res.length - 1
        result << sub unless sub[-1] == result[-1][-1]
      elsif sub[-1] == res[idx + 1][0]
        result << [sub[0], res[idx + 1][-1]]
      elsif sub[-1] != res[idx + 1][0]
        result << sub
      end
    end
        
  result 
end
  
p fix_time([[9, 17]]) # == [[9, 17]]
p fix_time([[9, 13], [13, 17], [17, 19]]) # == [[9, 17]]
p fix_time([[9, 13],[15, 17]]) # == [[9, 17]]
