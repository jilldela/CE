# Write a function that takes a message and an increment amount and 
# outputs the same letters shifted by that amount in the alphabet. 
# Assume lowercase and no punctuation. Preserve spaces.

def caesar_cipher(string, shift)
  alpha = ('a'..'z').to_a

  cipher = ""
  string.each_char.with_index do |ch, idx|
    if ch == " "
      cipher << " "
      next
    end
    
    new_idx = alpha.index(ch) + shift
    new_idx = new_idx % alpha.length if new_idx > 25

    cipher << alpha[new_idx]
  end

  cipher
end

p caesar_cipher('delta', 3) # == 'ghowd'
p caesar_cipher('alpha omega', 3) # == 'doskd rphjd'