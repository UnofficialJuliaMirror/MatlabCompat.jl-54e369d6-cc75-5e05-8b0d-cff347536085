module MatlabCompat

export Image, Support
export graythresh,
       im2bw,
       imshow,
       imread,
       mat2im,
       im2mat,
       rossetta


# Include submodules of the package.
for file in split("image support")
    include("MatlabCompat/$file.jl")
end

# Alias some functions.
const graythresh = Image.graythresh
const im2bw = Image.im2bw
const  imshow = Image.imshow
const  imread = Image.imread
const  mat2im = Image.mat2im
const  im2mat = Image.im2mat
const  rossetta = Image.rossetta
end # module
