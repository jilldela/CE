
const isPalindrome = (word) => {
  for (let i = 0; i < (word.length / 2); i++) {
    if (word[i] !== word[word.length - i - 1]) {
      return false;
    }
  }
  return true;
};

var longestPalindrome = function(s) {
    let subs = [];
    for(let i = 0; i < s.length; i++) {
      for(let j = s.length; j >= 0; j--) {
        if (s[i] === s[s.length - j]) {
          subs.push(s.slice(i + 1, (s.length - j - 1)))
        }
      }
    }
    
    let max = '';
    subs.forEach( sub => {
      if (sub.length >= max.length && isPalindrome(sub)) {
        max = sub;
      }
    });
    return max;
};

console.log(longestPalindrome('cbbd')); // 'bb'
console.log(longestPalindrome('babad')); // 'aba'