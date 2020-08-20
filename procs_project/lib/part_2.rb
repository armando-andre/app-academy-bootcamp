def reverser(str, &prc)
  prc.call(str.reverse { |ele| ele })
end