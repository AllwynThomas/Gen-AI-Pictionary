╒ч'
ф╕
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Щ
ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.13.12v2.13.1-0-gf841394b1b78ь░!
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
~
Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_2/bias
w
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_2/bias
w
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes
:*
dtype0
З
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аd*&
shared_nameAdam/v/dense_2/kernel
А
)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes
:	Аd*
dtype0
З
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аd*&
shared_nameAdam/m/dense_2/kernel
А
)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes
:	Аd*
dtype0
Б
Adam/v/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_4/bias
z
(Adam/v/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/bias*
_output_shapes	
:А*
dtype0
Б
Adam/m/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_4/bias
z
(Adam/m/conv2d_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/bias*
_output_shapes	
:А*
dtype0
Т
Adam/v/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/v/conv2d_4/kernel
Л
*Adam/v/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_4/kernel*(
_output_shapes
:АА*
dtype0
Т
Adam/m/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/m/conv2d_4/kernel
Л
*Adam/m/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_4/kernel*(
_output_shapes
:АА*
dtype0
Б
Adam/v/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_3/bias
z
(Adam/v/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/bias*
_output_shapes	
:А*
dtype0
Б
Adam/m/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_3/bias
z
(Adam/m/conv2d_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/bias*
_output_shapes	
:А*
dtype0
Т
Adam/v/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/v/conv2d_3/kernel
Л
*Adam/v/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_3/kernel*(
_output_shapes
:АА*
dtype0
Т
Adam/m/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*'
shared_nameAdam/m/conv2d_3/kernel
Л
*Adam/m/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_3/kernel*(
_output_shapes
:АА*
dtype0
Б
Adam/v/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/v/conv2d_2/bias
z
(Adam/v/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/bias*
_output_shapes	
:А*
dtype0
Б
Adam/m/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/m/conv2d_2/bias
z
(Adam/m/conv2d_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/bias*
_output_shapes	
:А*
dtype0
С
Adam/v/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/v/conv2d_2/kernel
К
*Adam/v/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_2/kernel*'
_output_shapes
:@А*
dtype0
С
Adam/m/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*'
shared_nameAdam/m/conv2d_2/kernel
К
*Adam/m/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_2/kernel*'
_output_shapes
:@А*
dtype0
А
Adam/v/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/v/conv2d_1/bias
y
(Adam/v/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/bias*
_output_shapes
:@*
dtype0
А
Adam/m/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/m/conv2d_1/bias
y
(Adam/m/conv2d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/bias*
_output_shapes
:@*
dtype0
Р
Adam/v/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/v/conv2d_1/kernel
Й
*Adam/v/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv2d_1/kernel*&
_output_shapes
:@*
dtype0
Р
Adam/m/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/m/conv2d_1/kernel
Й
*Adam/m/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv2d_1/kernel*&
_output_shapes
:@*
dtype0

Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:└*$
shared_nameAdam/v/dense_1/bias
x
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes	
:└*
dtype0

Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:└*$
shared_nameAdam/m/dense_1/bias
x
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes	
:└*
dtype0
И
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
┘└*&
shared_nameAdam/v/dense_1/kernel
Б
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel* 
_output_shapes
:
┘└*
dtype0
И
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
┘└*&
shared_nameAdam/m/dense_1/kernel
Б
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel* 
_output_shapes
:
┘└*
dtype0
Р
RMSprop/velocity/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/velocity/conv2d/bias
Й
0RMSprop/velocity/conv2d/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d/bias*
_output_shapes
:*
dtype0
а
RMSprop/velocity/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name RMSprop/velocity/conv2d/kernel
Щ
2RMSprop/velocity/conv2d/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d/kernel*&
_output_shapes
:*
dtype0
о
+RMSprop/velocity/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+RMSprop/velocity/batch_normalization_3/beta
з
?RMSprop/velocity/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp+RMSprop/velocity/batch_normalization_3/beta*
_output_shapes
:*
dtype0
░
,RMSprop/velocity/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,RMSprop/velocity/batch_normalization_3/gamma
й
@RMSprop/velocity/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp,RMSprop/velocity/batch_normalization_3/gamma*
_output_shapes
:*
dtype0
и
(RMSprop/velocity/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/velocity/conv2d_transpose_2/bias
б
<RMSprop/velocity/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp(RMSprop/velocity/conv2d_transpose_2/bias*
_output_shapes
:*
dtype0
╕
*RMSprop/velocity/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*RMSprop/velocity/conv2d_transpose_2/kernel
▒
>RMSprop/velocity/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp*RMSprop/velocity/conv2d_transpose_2/kernel*&
_output_shapes
:*
dtype0
о
+RMSprop/velocity/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+RMSprop/velocity/batch_normalization_2/beta
з
?RMSprop/velocity/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp+RMSprop/velocity/batch_normalization_2/beta*
_output_shapes
:*
dtype0
░
,RMSprop/velocity/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,RMSprop/velocity/batch_normalization_2/gamma
й
@RMSprop/velocity/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp,RMSprop/velocity/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
и
(RMSprop/velocity/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/velocity/conv2d_transpose_1/bias
б
<RMSprop/velocity/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp(RMSprop/velocity/conv2d_transpose_1/bias*
_output_shapes
:*
dtype0
╕
*RMSprop/velocity/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*RMSprop/velocity/conv2d_transpose_1/kernel
▒
>RMSprop/velocity/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp*RMSprop/velocity/conv2d_transpose_1/kernel*&
_output_shapes
: *
dtype0
о
+RMSprop/velocity/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+RMSprop/velocity/batch_normalization_1/beta
з
?RMSprop/velocity/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp+RMSprop/velocity/batch_normalization_1/beta*
_output_shapes
: *
dtype0
░
,RMSprop/velocity/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,RMSprop/velocity/batch_normalization_1/gamma
й
@RMSprop/velocity/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp,RMSprop/velocity/batch_normalization_1/gamma*
_output_shapes
: *
dtype0
д
&RMSprop/velocity/conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&RMSprop/velocity/conv2d_transpose/bias
Э
:RMSprop/velocity/conv2d_transpose/bias/Read/ReadVariableOpReadVariableOp&RMSprop/velocity/conv2d_transpose/bias*
_output_shapes
: *
dtype0
┤
(RMSprop/velocity/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*9
shared_name*(RMSprop/velocity/conv2d_transpose/kernel
н
<RMSprop/velocity/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp(RMSprop/velocity/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
л
)RMSprop/velocity/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*:
shared_name+)RMSprop/velocity/batch_normalization/beta
д
=RMSprop/velocity/batch_normalization/beta/Read/ReadVariableOpReadVariableOp)RMSprop/velocity/batch_normalization/beta*
_output_shapes	
:А2*
dtype0
н
*RMSprop/velocity/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*;
shared_name,*RMSprop/velocity/batch_normalization/gamma
ж
>RMSprop/velocity/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp*RMSprop/velocity/batch_normalization/gamma*
_output_shapes	
:А2*
dtype0
П
RMSprop/velocity/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*,
shared_nameRMSprop/velocity/dense/bias
И
/RMSprop/velocity/dense/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense/bias*
_output_shapes	
:А2*
dtype0
Ш
RMSprop/velocity/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╜А2*.
shared_nameRMSprop/velocity/dense/kernel
С
1RMSprop/velocity/dense/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense/kernel* 
_output_shapes
:
╜А2*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
r
learning_rate_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_namelearning_rate_1
k
#learning_rate_1/Read/ReadVariableOpReadVariableOplearning_rate_1*
_output_shapes
: *
dtype0
j
iteration_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameiteration_1
c
iteration_1/Read/ReadVariableOpReadVariableOpiteration_1*
_output_shapes
: *
dtype0	
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аd*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	Аd*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:А*
dtype0
Д
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:АА*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:А*
dtype0
Г
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@А*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:@*
dtype0
В
conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:└*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:└*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
┘└*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
┘└*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
в
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance
Ы
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean
У
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta
Е
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0
О
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma
З
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
Ж
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
:*
dtype0
Ц
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_2/kernel
П
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
:*
dtype0
в
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance
Ы
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean
У
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta
Е
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
О
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma
З
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
Ж
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:*
dtype0
Ц
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv2d_transpose_1/kernel
П
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
: *
dtype0
в
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance
Ы
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
Ъ
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean
У
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
М
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta
Е
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0
О
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma
З
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
В
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameconv2d_transpose/bias
{
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes
: *
dtype0
Т
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameconv2d_transpose/kernel
Л
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
Я
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*4
shared_name%#batch_normalization/moving_variance
Ш
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:А2*
dtype0
Ч
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*0
shared_name!batch_normalization/moving_mean
Р
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:А2*
dtype0
Й
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*)
shared_namebatch_normalization/beta
В
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:А2*
dtype0
Л
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2**
shared_namebatch_normalization/gamma
Д
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:А2*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:А2*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╜А2*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
╜А2*
dtype0
z
serving_default_input_4Placeholder*'
_output_shapes
:         d*
dtype0*
shape:         d
|
serving_default_input_5Placeholder*(
_output_shapes
:         ┘*
dtype0*
shape:         ┘
е

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4serving_default_input_5dense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/bias*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_71150

NoOpNoOp
ЩД
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╙Г
value╚ГB─Г B╝Г
┴
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
ь
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
layer_with_weights-3
layer-8
layer-9
layer-10
 layer_with_weights-4
 layer-11
!layer_with_weights-5
!layer-12
"layer-13
#layer_with_weights-6
#layer-14
$layer_with_weights-7
$layer-15
%layer-16
&layer_with_weights-8
&layer-17
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses*
Г
-layer-0
.layer_with_weights-0
.layer-1
/layer-2
0layer-3
1layer-4
2layer_with_weights-1
2layer-5
3layer-6
4layer_with_weights-2
4layer-7
5layer-8
6layer_with_weights-3
6layer-9
7layer-10
8layer_with_weights-4
8layer-11
9layer-12
:layer-13
;layer_with_weights-5
;layer-14
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B	optimizer*
к
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17
U18
V19
W20
X21
Y22
Z23
[24
\25
]26
^27
_28
`29
a30
b31
c32
d33
e34
f35
g36
h37*
К
C0
D1
E2
F3
I4
J5
K6
L7
O8
P9
Q10
R11
U12
V13
W14
X15
[16
\17*
* 
░
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ntrace_0
otrace_1* 

ptrace_0
qtrace_1* 
* 
Щ
r
_variables
s_iterations
t_learning_rate
u_index_dict
v_velocities
w
_momentums
x_average_gradients
y_update_step_xla*

zserving_default* 
* 
* 
* 
С
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 
* 
м
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

Ckernel
Dbias*
▄
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
	Оaxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance*
Ф
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses* 
Ф
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses* 
м
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
б_random_generator* 
Ф
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses* 
╧
и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses

Ikernel
Jbias
!о_jit_compiled_convolution_op*
▄
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses
	╡axis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance*
Ф
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses* 
Ф
╝	variables
╜trainable_variables
╛regularization_losses
┐	keras_api
└__call__
+┴&call_and_return_all_conditional_losses* 
╧
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
╞__call__
+╟&call_and_return_all_conditional_losses

Okernel
Pbias
!╚_jit_compiled_convolution_op*
▄
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
	╧axis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance*
Ф
╨	variables
╤trainable_variables
╥regularization_losses
╙	keras_api
╘__call__
+╒&call_and_return_all_conditional_losses* 
╧
╓	variables
╫trainable_variables
╪regularization_losses
┘	keras_api
┌__call__
+█&call_and_return_all_conditional_losses

Ukernel
Vbias
!▄_jit_compiled_convolution_op*
▄
▌	variables
▐trainable_variables
▀regularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
	уaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance*
Ф
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses* 
╧
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+я&call_and_return_all_conditional_losses

[kernel
\bias
!Ё_jit_compiled_convolution_op*
╩
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17
U18
V19
W20
X21
Y22
Z23
[24
\25*
К
C0
D1
E2
F3
I4
J5
K6
L7
O8
P9
Q10
R11
U12
V13
W14
X15
[16
\17*
* 
Ш
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

Ўtrace_0
ўtrace_1* 

°trace_0
∙trace_1* 
* 
м
·	variables
√trainable_variables
№regularization_losses
¤	keras_api
■__call__
+ &call_and_return_all_conditional_losses

]kernel
^bias*
* 
Ф
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses* 
Ф
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses* 
╧
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses

_kernel
`bias
!Т_jit_compiled_convolution_op*
м
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_random_generator* 
╧
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses

akernel
bbias
!а_jit_compiled_convolution_op*
м
б	variables
вtrainable_variables
гregularization_losses
д	keras_api
е__call__
+ж&call_and_return_all_conditional_losses
з_random_generator* 
╧
и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses

ckernel
dbias
!о_jit_compiled_convolution_op*
м
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses
╡_random_generator* 
╧
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses

ekernel
fbias
!╝_jit_compiled_convolution_op*
м
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses
├_random_generator* 
Ф
─	variables
┼trainable_variables
╞regularization_losses
╟	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses* 
м
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses

gkernel
hbias*
Z
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11*
* 
* 
Ш
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
:
╒trace_0
╓trace_1
╫trace_2
╪trace_3* 
:
┘trace_0
┌trace_1
█trace_2
▄trace_3* 
И
▌
_variables
▐_iterations
▀_learning_rate
р_index_dict
с
_momentums
т_velocities
у_update_step_xla*
LF
VARIABLE_VALUEdense/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
dense/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEbatch_normalization/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEbatch_normalization/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEbatch_normalization/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#batch_normalization/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEconv2d_transpose/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEconv2d_transpose/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_1/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEbatch_normalization_1/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_1/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_1/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_1/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_1/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_2/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_2/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_2/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_2/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_2/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_2/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_3/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_3/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!batch_normalization_3/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%batch_normalization_3/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
LF
VARIABLE_VALUEconv2d/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_1/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_1/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_2/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_2/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_3/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_3/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_4/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_4/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_2/kernel'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_2/bias'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
Ъ
G0
H1
M2
N3
S4
T5
Y6
Z7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17
g18
h19*
'
0
1
2
3
4*

ф0
х1*
* 
* 
* 
* 
* 
* 
д
s0
ц1
ч2
ш3
щ4
ъ5
ы6
ь7
э8
ю9
я10
Ё11
ё12
Є13
є14
Ї15
ї16
Ў17
ў18*
UO
VARIABLE_VALUEiteration_10optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUElearning_rate_13optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ь
ц0
ч1
ш2
щ3
ъ4
ы5
ь6
э7
ю8
я9
Ё10
ё11
Є12
є13
Ї14
ї15
Ў16
ў17*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

C0
D1*

C0
D1*
* 
Ю
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

¤trace_0* 

■trace_0* 
 
E0
F1
G2
H3*

E0
F1*
* 
Ю
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*

Дtrace_0
Еtrace_1* 

Жtrace_0
Зtrace_1* 
* 
* 
* 
* 
Ь
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses* 

Нtrace_0* 

Оtrace_0* 
* 
* 
* 
Ь
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 
* 
* 
* 
Ь
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses* 

Ыtrace_0
Ьtrace_1* 

Эtrace_0
Юtrace_1* 
* 
* 
* 
* 
Ь
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses* 

дtrace_0* 

еtrace_0* 

I0
J1*

I0
J1*
* 
Ю
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses*

лtrace_0* 

мtrace_0* 
* 
 
K0
L1
M2
N3*

K0
L1*
* 
Ю
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses*

▓trace_0
│trace_1* 

┤trace_0
╡trace_1* 
* 
* 
* 
* 
Ь
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses* 

╗trace_0* 

╝trace_0* 
* 
* 
* 
Ь
╜non_trainable_variables
╛layers
┐metrics
 └layer_regularization_losses
┴layer_metrics
╝	variables
╜trainable_variables
╛regularization_losses
└__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses* 

┬trace_0* 

├trace_0* 

O0
P1*

O0
P1*
* 
Ю
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
┬	variables
├trainable_variables
─regularization_losses
╞__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses*

╔trace_0* 

╩trace_0* 
* 
 
Q0
R1
S2
T3*

Q0
R1*
* 
Ю
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses*

╨trace_0
╤trace_1* 

╥trace_0
╙trace_1* 
* 
* 
* 
* 
Ь
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
╨	variables
╤trainable_variables
╥regularization_losses
╘__call__
+╒&call_and_return_all_conditional_losses
'╒"call_and_return_conditional_losses* 

┘trace_0* 

┌trace_0* 

U0
V1*

U0
V1*
* 
Ю
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
╓	variables
╫trainable_variables
╪regularization_losses
┌__call__
+█&call_and_return_all_conditional_losses
'█"call_and_return_conditional_losses*

рtrace_0* 

сtrace_0* 
* 
 
W0
X1
Y2
Z3*

W0
X1*
* 
Ю
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
▌	variables
▐trainable_variables
▀regularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses*

чtrace_0
шtrace_1* 

щtrace_0
ъtrace_1* 
* 
* 
* 
* 
Ь
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses* 

Ёtrace_0* 

ёtrace_0* 

[0
\1*

[0
\1*
* 
Ю
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses*

ўtrace_0* 

°trace_0* 
* 
<
G0
H1
M2
N3
S4
T5
Y6
Z7*
К
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14
$15
%16
&17*
* 
* 
* 
* 
* 
* 
* 

]0
^1*
* 
* 
Ю
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
·	variables
√trainable_variables
№regularization_losses
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*

■trace_0* 

 trace_0* 
* 
* 
* 
Ь
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses* 

Еtrace_0* 

Жtrace_0* 
* 
* 
* 
Ь
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses* 

Мtrace_0* 

Нtrace_0* 

_0
`1*
* 
* 
Ю
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses*

Уtrace_0* 

Фtrace_0* 
* 
* 
* 
* 
Ь
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 

Ъtrace_0
Ыtrace_1* 

Ьtrace_0
Эtrace_1* 
* 

a0
b1*
* 
* 
Ю
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*

гtrace_0* 

дtrace_0* 
* 
* 
* 
* 
Ь
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
б	variables
вtrainable_variables
гregularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses* 

кtrace_0
лtrace_1* 

мtrace_0
нtrace_1* 
* 

c0
d1*
* 
* 
Ю
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses*

│trace_0* 

┤trace_0* 
* 
* 
* 
* 
Ь
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses* 

║trace_0
╗trace_1* 

╝trace_0
╜trace_1* 
* 

e0
f1*
* 
* 
Ю
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses*

├trace_0* 

─trace_0* 
* 
* 
* 
* 
Ь
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses* 

╩trace_0
╦trace_1* 

╠trace_0
═trace_1* 
* 
* 
* 
* 
Ь
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
─	variables
┼trainable_variables
╞regularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses* 

╙trace_0* 

╘trace_0* 

g0
h1*
* 
* 
Ю
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses*

┌trace_0* 

█trace_0* 
Z
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11*
r
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14*

▄0
▌1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
█
▐0
▐1
▀2
р3
с4
т5
у6
ф7
х8
ц9
ч10
ш11
щ12
ъ13
ы14
ь15
э16
ю17
я18
Ё19
ё20
Є21
є22
Ї23
ї24*
hb
VARIABLE_VALUE	iterationElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUElearning_rateHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
▐0
р1
т2
ф3
ц4
ш5
ъ6
ь7
ю8
Ё9
Є10
Ї11*
f
▀0
с1
у2
х3
ч4
щ5
ы6
э7
я8
ё9
є10
ї11*
* 
<
Ў	variables
ў	keras_api

°total

∙count*
M
·	variables
√	keras_api

№total

¤count
■
_fn_kwargs*
hb
VARIABLE_VALUERMSprop/velocity/dense/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUERMSprop/velocity/dense/bias1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*RMSprop/velocity/batch_normalization/gamma1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)RMSprop/velocity/batch_normalization/beta1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(RMSprop/velocity/conv2d_transpose/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE&RMSprop/velocity/conv2d_transpose/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,RMSprop/velocity/batch_normalization_1/gamma1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+RMSprop/velocity/batch_normalization_1/beta1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE*RMSprop/velocity/conv2d_transpose_1/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(RMSprop/velocity/conv2d_transpose_1/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,RMSprop/velocity/batch_normalization_2/gamma2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+RMSprop/velocity/batch_normalization_2/beta2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*RMSprop/velocity/conv2d_transpose_2/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(RMSprop/velocity/conv2d_transpose_2/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,RMSprop/velocity/batch_normalization_3/gamma2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+RMSprop/velocity/batch_normalization_3/beta2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUERMSprop/velocity/conv2d/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUERMSprop/velocity/conv2d/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 

G0
H1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

M0
N1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

S0
T1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Y0
Z1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

]0
^1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

_0
`1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

a0
b1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

c0
d1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

e0
f1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

g0
h1*
* 
* 
* 
* 
* 
* 
<
 	variables
А	keras_api

Бtotal

Вcount*
M
Г	variables
Д	keras_api

Еtotal

Жcount
З
_fn_kwargs*
uo
VARIABLE_VALUEAdam/m/dense_1/kernelFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/v/dense_1/kernelFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/m/dense_1/biasFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUEAdam/v/dense_1/biasFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/m/conv2d_1/kernelFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/v/conv2d_1/kernelFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/m/conv2d_1/biasFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/v/conv2d_1/biasFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/m/conv2d_2/kernelFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/v/conv2d_2/kernelGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/m/conv2d_2/biasGlayer_with_weights-1/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/v/conv2d_2/biasGlayer_with_weights-1/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/m/conv2d_3/kernelGlayer_with_weights-1/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/v/conv2d_3/kernelGlayer_with_weights-1/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/m/conv2d_3/biasGlayer_with_weights-1/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/v/conv2d_3/biasGlayer_with_weights-1/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/m/conv2d_4/kernelGlayer_with_weights-1/optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUEAdam/v/conv2d_4/kernelGlayer_with_weights-1/optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/m/conv2d_4/biasGlayer_with_weights-1/optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEAdam/v/conv2d_4/biasGlayer_with_weights-1/optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/m/dense_2/kernelGlayer_with_weights-1/optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/v/dense_2/kernelGlayer_with_weights-1/optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/m/dense_2/biasGlayer_with_weights-1/optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEAdam/v/dense_2/biasGlayer_with_weights-1/optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*

°0
∙1*

Ў	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

№0
¤1*

·	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Б0
В1*

 	variables*
jd
VARIABLE_VALUEtotal_1Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_1Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Е0
Ж1*

Г	variables*
hb
VARIABLE_VALUEtotalIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEcountIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
А
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/biasiteration_1learning_rate_1	iterationlearning_rateRMSprop/velocity/dense/kernelRMSprop/velocity/dense/bias*RMSprop/velocity/batch_normalization/gamma)RMSprop/velocity/batch_normalization/beta(RMSprop/velocity/conv2d_transpose/kernel&RMSprop/velocity/conv2d_transpose/bias,RMSprop/velocity/batch_normalization_1/gamma+RMSprop/velocity/batch_normalization_1/beta*RMSprop/velocity/conv2d_transpose_1/kernel(RMSprop/velocity/conv2d_transpose_1/bias,RMSprop/velocity/batch_normalization_2/gamma+RMSprop/velocity/batch_normalization_2/beta*RMSprop/velocity/conv2d_transpose_2/kernel(RMSprop/velocity/conv2d_transpose_2/bias,RMSprop/velocity/batch_normalization_3/gamma+RMSprop/velocity/batch_normalization_3/betaRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotal_3count_3total_2count_2total_1count_1totalcountConst*i
Tinb
`2^*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_72777
√
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/biasiteration_1learning_rate_1	iterationlearning_rateRMSprop/velocity/dense/kernelRMSprop/velocity/dense/bias*RMSprop/velocity/batch_normalization/gamma)RMSprop/velocity/batch_normalization/beta(RMSprop/velocity/conv2d_transpose/kernel&RMSprop/velocity/conv2d_transpose/bias,RMSprop/velocity/batch_normalization_1/gamma+RMSprop/velocity/batch_normalization_1/beta*RMSprop/velocity/conv2d_transpose_1/kernel(RMSprop/velocity/conv2d_transpose_1/bias,RMSprop/velocity/batch_normalization_2/gamma+RMSprop/velocity/batch_normalization_2/beta*RMSprop/velocity/conv2d_transpose_2/kernel(RMSprop/velocity/conv2d_transpose_2/bias,RMSprop/velocity/batch_normalization_3/gamma+RMSprop/velocity/batch_normalization_3/betaRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biasAdam/m/conv2d_1/kernelAdam/v/conv2d_1/kernelAdam/m/conv2d_1/biasAdam/v/conv2d_1/biasAdam/m/conv2d_2/kernelAdam/v/conv2d_2/kernelAdam/m/conv2d_2/biasAdam/v/conv2d_2/biasAdam/m/conv2d_3/kernelAdam/v/conv2d_3/kernelAdam/m/conv2d_3/biasAdam/v/conv2d_3/biasAdam/m/conv2d_4/kernelAdam/v/conv2d_4/kernelAdam/m/conv2d_4/biasAdam/v/conv2d_4/biasAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biastotal_3count_3total_2count_2total_1count_1totalcount*h
Tina
_2]*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_73062╜▒
ы
b
)__inference_dropout_1_layer_call_fn_72008

inputs
identityИвStatefulPartitionedCall╟
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_70159w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
▓
I
-__inference_up_sampling2d_layer_call_fn_71541

inputs
identity╓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_69371Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
А

Ў
B__inference_dense_1_layer_call_and_return_conditional_losses_71951

inputs2
matmul_readvariableop_resource:
┘└.
biasadd_readvariableop_resource:	└
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
┘└*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         └S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ┘: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ┘
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╖ 
╝	
'__inference_model_2_layer_call_fn_70999
input_4
input_5
unknown:
╜А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
	unknown_3:	А2
	unknown_4:	А2#
	unknown_5: @
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:
┘└

unknown_26:	└$

unknown_27:@

unknown_28:@%

unknown_29:@А

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А

unknown_35:	Аd

unknown_36:
identityИвStatefulPartitionedCall╤
StatefulPartitionedCallStatefulPartitionedCallinput_4input_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_70835o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         d:         ┘: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_4:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_5:%!

_user_specified_name70921:%!

_user_specified_name70923:%!

_user_specified_name70925:%!

_user_specified_name70927:%!

_user_specified_name70929:%!

_user_specified_name70931:%!

_user_specified_name70933:%	!

_user_specified_name70935:%
!

_user_specified_name70937:%!

_user_specified_name70939:%!

_user_specified_name70941:%!

_user_specified_name70943:%!

_user_specified_name70945:%!

_user_specified_name70947:%!

_user_specified_name70949:%!

_user_specified_name70951:%!

_user_specified_name70953:%!

_user_specified_name70955:%!

_user_specified_name70957:%!

_user_specified_name70959:%!

_user_specified_name70961:%!

_user_specified_name70963:%!

_user_specified_name70965:%!

_user_specified_name70967:%!

_user_specified_name70969:%!

_user_specified_name70971:%!

_user_specified_name70973:%!

_user_specified_name70975:%!

_user_specified_name70977:%!

_user_specified_name70979:% !

_user_specified_name70981:%!!

_user_specified_name70983:%"!

_user_specified_name70985:%#!

_user_specified_name70987:%$!

_user_specified_name70989:%%!

_user_specified_name70991:%&!

_user_specified_name70993:%'!

_user_specified_name70995
хн
ъ<
!__inference__traced_restore_73062
file_prefix1
assignvariableop_dense_kernel:
╜А2,
assignvariableop_1_dense_bias:	А2;
,assignvariableop_2_batch_normalization_gamma:	А2:
+assignvariableop_3_batch_normalization_beta:	А2A
2assignvariableop_4_batch_normalization_moving_mean:	А2E
6assignvariableop_5_batch_normalization_moving_variance:	А2D
*assignvariableop_6_conv2d_transpose_kernel: @6
(assignvariableop_7_conv2d_transpose_bias: <
.assignvariableop_8_batch_normalization_1_gamma: ;
-assignvariableop_9_batch_normalization_1_beta: C
5assignvariableop_10_batch_normalization_1_moving_mean: G
9assignvariableop_11_batch_normalization_1_moving_variance: G
-assignvariableop_12_conv2d_transpose_1_kernel: 9
+assignvariableop_13_conv2d_transpose_1_bias:=
/assignvariableop_14_batch_normalization_2_gamma:<
.assignvariableop_15_batch_normalization_2_beta:C
5assignvariableop_16_batch_normalization_2_moving_mean:G
9assignvariableop_17_batch_normalization_2_moving_variance:G
-assignvariableop_18_conv2d_transpose_2_kernel:9
+assignvariableop_19_conv2d_transpose_2_bias:=
/assignvariableop_20_batch_normalization_3_gamma:<
.assignvariableop_21_batch_normalization_3_beta:C
5assignvariableop_22_batch_normalization_3_moving_mean:G
9assignvariableop_23_batch_normalization_3_moving_variance:;
!assignvariableop_24_conv2d_kernel:-
assignvariableop_25_conv2d_bias:6
"assignvariableop_26_dense_1_kernel:
┘└/
 assignvariableop_27_dense_1_bias:	└=
#assignvariableop_28_conv2d_1_kernel:@/
!assignvariableop_29_conv2d_1_bias:@>
#assignvariableop_30_conv2d_2_kernel:@А0
!assignvariableop_31_conv2d_2_bias:	А?
#assignvariableop_32_conv2d_3_kernel:АА0
!assignvariableop_33_conv2d_3_bias:	А?
#assignvariableop_34_conv2d_4_kernel:АА0
!assignvariableop_35_conv2d_4_bias:	А5
"assignvariableop_36_dense_2_kernel:	Аd.
 assignvariableop_37_dense_2_bias:)
assignvariableop_38_iteration_1:	 -
#assignvariableop_39_learning_rate_1: '
assignvariableop_40_iteration:	 +
!assignvariableop_41_learning_rate: E
1assignvariableop_42_rmsprop_velocity_dense_kernel:
╜А2>
/assignvariableop_43_rmsprop_velocity_dense_bias:	А2M
>assignvariableop_44_rmsprop_velocity_batch_normalization_gamma:	А2L
=assignvariableop_45_rmsprop_velocity_batch_normalization_beta:	А2V
<assignvariableop_46_rmsprop_velocity_conv2d_transpose_kernel: @H
:assignvariableop_47_rmsprop_velocity_conv2d_transpose_bias: N
@assignvariableop_48_rmsprop_velocity_batch_normalization_1_gamma: M
?assignvariableop_49_rmsprop_velocity_batch_normalization_1_beta: X
>assignvariableop_50_rmsprop_velocity_conv2d_transpose_1_kernel: J
<assignvariableop_51_rmsprop_velocity_conv2d_transpose_1_bias:N
@assignvariableop_52_rmsprop_velocity_batch_normalization_2_gamma:M
?assignvariableop_53_rmsprop_velocity_batch_normalization_2_beta:X
>assignvariableop_54_rmsprop_velocity_conv2d_transpose_2_kernel:J
<assignvariableop_55_rmsprop_velocity_conv2d_transpose_2_bias:N
@assignvariableop_56_rmsprop_velocity_batch_normalization_3_gamma:M
?assignvariableop_57_rmsprop_velocity_batch_normalization_3_beta:L
2assignvariableop_58_rmsprop_velocity_conv2d_kernel:>
0assignvariableop_59_rmsprop_velocity_conv2d_bias:=
)assignvariableop_60_adam_m_dense_1_kernel:
┘└=
)assignvariableop_61_adam_v_dense_1_kernel:
┘└6
'assignvariableop_62_adam_m_dense_1_bias:	└6
'assignvariableop_63_adam_v_dense_1_bias:	└D
*assignvariableop_64_adam_m_conv2d_1_kernel:@D
*assignvariableop_65_adam_v_conv2d_1_kernel:@6
(assignvariableop_66_adam_m_conv2d_1_bias:@6
(assignvariableop_67_adam_v_conv2d_1_bias:@E
*assignvariableop_68_adam_m_conv2d_2_kernel:@АE
*assignvariableop_69_adam_v_conv2d_2_kernel:@А7
(assignvariableop_70_adam_m_conv2d_2_bias:	А7
(assignvariableop_71_adam_v_conv2d_2_bias:	АF
*assignvariableop_72_adam_m_conv2d_3_kernel:ААF
*assignvariableop_73_adam_v_conv2d_3_kernel:АА7
(assignvariableop_74_adam_m_conv2d_3_bias:	А7
(assignvariableop_75_adam_v_conv2d_3_bias:	АF
*assignvariableop_76_adam_m_conv2d_4_kernel:ААF
*assignvariableop_77_adam_v_conv2d_4_kernel:АА7
(assignvariableop_78_adam_m_conv2d_4_bias:	А7
(assignvariableop_79_adam_v_conv2d_4_bias:	А<
)assignvariableop_80_adam_m_dense_2_kernel:	Аd<
)assignvariableop_81_adam_v_dense_2_kernel:	Аd5
'assignvariableop_82_adam_m_dense_2_bias:5
'assignvariableop_83_adam_v_dense_2_bias:%
assignvariableop_84_total_3: %
assignvariableop_85_count_3: %
assignvariableop_86_total_2: %
assignvariableop_87_count_2: %
assignvariableop_88_total_1: %
assignvariableop_89_count_1: #
assignvariableop_90_total: #
assignvariableop_91_count: 
identity_93ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_87вAssignVariableOp_88вAssignVariableOp_89вAssignVariableOp_9вAssignVariableOp_90вAssignVariableOp_91Г(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*й'
valueЯ'BЬ']B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHн
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*╧
value┼B┬]B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Є
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*К
_output_shapesў
Ї:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*k
dtypesa
_2]		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:░
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_6AssignVariableOp*assignvariableop_6_conv2d_transpose_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOp_7AssignVariableOp(assignvariableop_7_conv2d_transpose_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_18AssignVariableOp-assignvariableop_18_conv2d_transpose_2_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_19AssignVariableOp+assignvariableop_19_conv2d_transpose_2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_24AssignVariableOp!assignvariableop_24_conv2d_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:╕
AssignVariableOp_25AssignVariableOpassignvariableop_25_conv2d_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_1_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_1_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_1_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_1_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_2_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_2_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_32AssignVariableOp#assignvariableop_32_conv2d_3_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_33AssignVariableOp!assignvariableop_33_conv2d_3_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_34AssignVariableOp#assignvariableop_34_conv2d_4_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_35AssignVariableOp!assignvariableop_35_conv2d_4_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_2_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_2_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:╕
AssignVariableOp_38AssignVariableOpassignvariableop_38_iteration_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_39AssignVariableOp#assignvariableop_39_learning_rate_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_40AssignVariableOpassignvariableop_40_iterationIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_41AssignVariableOp!assignvariableop_41_learning_rateIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:╩
AssignVariableOp_42AssignVariableOp1assignvariableop_42_rmsprop_velocity_dense_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:╚
AssignVariableOp_43AssignVariableOp/assignvariableop_43_rmsprop_velocity_dense_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_44AssignVariableOp>assignvariableop_44_rmsprop_velocity_batch_normalization_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:╓
AssignVariableOp_45AssignVariableOp=assignvariableop_45_rmsprop_velocity_batch_normalization_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:╒
AssignVariableOp_46AssignVariableOp<assignvariableop_46_rmsprop_velocity_conv2d_transpose_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_47AssignVariableOp:assignvariableop_47_rmsprop_velocity_conv2d_transpose_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_48AssignVariableOp@assignvariableop_48_rmsprop_velocity_batch_normalization_1_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:╪
AssignVariableOp_49AssignVariableOp?assignvariableop_49_rmsprop_velocity_batch_normalization_1_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_50AssignVariableOp>assignvariableop_50_rmsprop_velocity_conv2d_transpose_1_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:╒
AssignVariableOp_51AssignVariableOp<assignvariableop_51_rmsprop_velocity_conv2d_transpose_1_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_52AssignVariableOp@assignvariableop_52_rmsprop_velocity_batch_normalization_2_gammaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:╪
AssignVariableOp_53AssignVariableOp?assignvariableop_53_rmsprop_velocity_batch_normalization_2_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:╫
AssignVariableOp_54AssignVariableOp>assignvariableop_54_rmsprop_velocity_conv2d_transpose_2_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:╒
AssignVariableOp_55AssignVariableOp<assignvariableop_55_rmsprop_velocity_conv2d_transpose_2_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_56AssignVariableOp@assignvariableop_56_rmsprop_velocity_batch_normalization_3_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:╪
AssignVariableOp_57AssignVariableOp?assignvariableop_57_rmsprop_velocity_batch_normalization_3_betaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_58AssignVariableOp2assignvariableop_58_rmsprop_velocity_conv2d_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:╔
AssignVariableOp_59AssignVariableOp0assignvariableop_59_rmsprop_velocity_conv2d_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_m_dense_1_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_v_dense_1_kernelIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_m_dense_1_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_63AssignVariableOp'assignvariableop_63_adam_v_dense_1_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_64AssignVariableOp*assignvariableop_64_adam_m_conv2d_1_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_v_conv2d_1_kernelIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_m_conv2d_1_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_67AssignVariableOp(assignvariableop_67_adam_v_conv2d_1_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_68AssignVariableOp*assignvariableop_68_adam_m_conv2d_2_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_v_conv2d_2_kernelIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_m_conv2d_2_biasIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_71AssignVariableOp(assignvariableop_71_adam_v_conv2d_2_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_72AssignVariableOp*assignvariableop_72_adam_m_conv2d_3_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_v_conv2d_3_kernelIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_m_conv2d_3_biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_75AssignVariableOp(assignvariableop_75_adam_v_conv2d_3_biasIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_76AssignVariableOp*assignvariableop_76_adam_m_conv2d_4_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:├
AssignVariableOp_77AssignVariableOp*assignvariableop_77_adam_v_conv2d_4_kernelIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_78AssignVariableOp(assignvariableop_78_adam_m_conv2d_4_biasIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:┴
AssignVariableOp_79AssignVariableOp(assignvariableop_79_adam_v_conv2d_4_biasIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_80AssignVariableOp)assignvariableop_80_adam_m_dense_2_kernelIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_81AssignVariableOp)assignvariableop_81_adam_v_dense_2_kernelIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_82AssignVariableOp'assignvariableop_82_adam_m_dense_2_biasIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_83AssignVariableOp'assignvariableop_83_adam_v_dense_2_biasIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_84AssignVariableOpassignvariableop_84_total_3Identity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_85AssignVariableOpassignvariableop_85_count_3Identity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_86AssignVariableOpassignvariableop_86_total_2Identity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_87AssignVariableOpassignvariableop_87_count_2Identity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_88AssignVariableOpassignvariableop_88_total_1Identity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_89AssignVariableOpassignvariableop_89_count_1Identity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_90AssignVariableOpassignvariableop_90_totalIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_91AssignVariableOpassignvariableop_91_countIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ╖
Identity_92Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_93IdentityIdentity_92:output:0^NoOp_1*
T0*
_output_shapes
: А
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91*
_output_shapes
 "#
identity_93Identity_93:output:0*(
_construction_contextkEagerRuntime*╧
_input_shapes╜
║: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_91:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:73
1
_user_specified_nameconv2d_transpose/kernel:51
/
_user_specified_nameconv2d_transpose/bias:;	7
5
_user_specified_namebatch_normalization_1/gamma::
6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:95
3
_user_specified_nameconv2d_transpose_1/kernel:73
1
_user_specified_nameconv2d_transpose_1/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:95
3
_user_specified_nameconv2d_transpose_2/kernel:73
1
_user_specified_nameconv2d_transpose_2/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_2/kernel:- )
'
_user_specified_nameconv2d_2/bias:/!+
)
_user_specified_nameconv2d_3/kernel:-")
'
_user_specified_nameconv2d_3/bias:/#+
)
_user_specified_nameconv2d_4/kernel:-$)
'
_user_specified_nameconv2d_4/bias:.%*
(
_user_specified_namedense_2/kernel:,&(
&
_user_specified_namedense_2/bias:+''
%
_user_specified_nameiteration_1:/(+
)
_user_specified_namelearning_rate_1:))%
#
_user_specified_name	iteration:-*)
'
_user_specified_namelearning_rate:=+9
7
_user_specified_nameRMSprop/velocity/dense/kernel:;,7
5
_user_specified_nameRMSprop/velocity/dense/bias:J-F
D
_user_specified_name,*RMSprop/velocity/batch_normalization/gamma:I.E
C
_user_specified_name+)RMSprop/velocity/batch_normalization/beta:H/D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose/kernel:F0B
@
_user_specified_name(&RMSprop/velocity/conv2d_transpose/bias:L1H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_1/gamma:K2G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_1/beta:J3F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_1/kernel:H4D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_1/bias:L5H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_2/gamma:K6G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_2/beta:J7F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_2/kernel:H8D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_2/bias:L9H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_3/gamma:K:G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_3/beta:>;:
8
_user_specified_name RMSprop/velocity/conv2d/kernel:<<8
6
_user_specified_nameRMSprop/velocity/conv2d/bias:5=1
/
_user_specified_nameAdam/m/dense_1/kernel:5>1
/
_user_specified_nameAdam/v/dense_1/kernel:3?/
-
_user_specified_nameAdam/m/dense_1/bias:3@/
-
_user_specified_nameAdam/v/dense_1/bias:6A2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6B2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4C0
.
_user_specified_nameAdam/m/conv2d_1/bias:4D0
.
_user_specified_nameAdam/v/conv2d_1/bias:6E2
0
_user_specified_nameAdam/m/conv2d_2/kernel:6F2
0
_user_specified_nameAdam/v/conv2d_2/kernel:4G0
.
_user_specified_nameAdam/m/conv2d_2/bias:4H0
.
_user_specified_nameAdam/v/conv2d_2/bias:6I2
0
_user_specified_nameAdam/m/conv2d_3/kernel:6J2
0
_user_specified_nameAdam/v/conv2d_3/kernel:4K0
.
_user_specified_nameAdam/m/conv2d_3/bias:4L0
.
_user_specified_nameAdam/v/conv2d_3/bias:6M2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6N2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4O0
.
_user_specified_nameAdam/m/conv2d_4/bias:4P0
.
_user_specified_nameAdam/v/conv2d_4/bias:5Q1
/
_user_specified_nameAdam/m/dense_2/kernel:5R1
/
_user_specified_nameAdam/v/dense_2/kernel:3S/
-
_user_specified_nameAdam/m/dense_2/bias:3T/
-
_user_specified_nameAdam/v/dense_2/bias:'U#
!
_user_specified_name	total_3:'V#
!
_user_specified_name	count_3:'W#
!
_user_specified_name	total_2:'X#
!
_user_specified_name	count_2:'Y#
!
_user_specified_name	total_1:'Z#
!
_user_specified_name	count_1:%[!

_user_specified_nametotal:%\!

_user_specified_namecount
√
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_72124

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╨

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_70159

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ц
Я
(__inference_conv2d_2_layer_call_fn_72039

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_70171x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         

А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:%!

_user_specified_name72033:%!

_user_specified_name72035
Ь
·
A__inference_conv2d_layer_call_and_return_conditional_losses_69838

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0П
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+                           S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ы
Х
'__inference_dense_2_layer_call_fn_72191

inputs
unknown:	Аd
	unknown_0:
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_70265o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аd: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         Аd
 
_user_specified_nameinputs:%!

_user_specified_name72185:%!

_user_specified_name72187
█
▒
%__inference_model_layer_call_fn_70037
input_1
unknown:
╜А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
	unknown_3:	А2
	unknown_4:	А2#
	unknown_5: @
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_69923Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         ╜: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:         ╜
!
_user_specified_name	input_1:%!

_user_specified_name69983:%!

_user_specified_name69985:%!

_user_specified_name69987:%!

_user_specified_name69989:%!

_user_specified_name69991:%!

_user_specified_name69993:%!

_user_specified_name69995:%!

_user_specified_name69997:%	!

_user_specified_name69999:%
!

_user_specified_name70001:%!

_user_specified_name70003:%!

_user_specified_name70005:%!

_user_specified_name70007:%!

_user_specified_name70009:%!

_user_specified_name70011:%!

_user_specified_name70013:%!

_user_specified_name70015:%!

_user_specified_name70017:%!

_user_specified_name70019:%!

_user_specified_name70021:%!

_user_specified_name70023:%!

_user_specified_name70025:%!

_user_specified_name70027:%!

_user_specified_name70029:%!

_user_specified_name70031:%!

_user_specified_name70033
Ю
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_69371

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Й
┐
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71639

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ї
`
B__inference_dropout_layer_call_and_return_conditional_losses_71536

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         

@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         

@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         

@:W S
/
_output_shapes
:         

@
 
_user_specified_nameinputs
▓
№
C__inference_conv2d_1_layer_call_and_return_conditional_losses_72003

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ((: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ((
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я
b
)__inference_dropout_4_layer_call_fn_72149

inputs
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_70246x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Т!
Ъ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_71840

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
л
C
'__inference_reshape_layer_call_fn_71495

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_69751h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А2:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs
█
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_70122

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :(Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :(Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         ((`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         (("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         └:P L
(
_output_shapes
:         └
 
_user_specified_nameinputs
│
c
G__inference_activation_2_layer_call_and_return_conditional_losses_69806

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ю
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_71553

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
п8
ч
B__inference_model_1_layer_call_and_return_conditional_losses_70334
input_2
input_3!
dense_1_70276:
┘└
dense_1_70278:	└(
conv2d_1_70283:@
conv2d_1_70285:@)
conv2d_2_70294:@А
conv2d_2_70296:	А*
conv2d_3_70305:АА
conv2d_3_70307:	А*
conv2d_4_70316:АА
conv2d_4_70318:	А 
dense_2_70328:	Аd
dense_2_70330:
identityИв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallы
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_1_70276dense_1_70278*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_70103у
reshape_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_70122ы
concatenate/PartitionedCallPartitionedCallinput_2"reshape_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_70130У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_1_70283conv2d_1_70285*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_70142ф
dropout_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_70292Т
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_70294conv2d_2_70296*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_70171х
dropout_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_70303Т
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv2d_3_70305conv2d_3_70307*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_70200х
dropout_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_70314Т
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_4_70316conv2d_4_70318*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_70229х
dropout_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_70325╥
flatten/PartitionedCallPartitionedCall"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_70253Г
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_70328dense_2_70330*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_70265w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         Є
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         ((:         ┘: : : : : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:X T
/
_output_shapes
:         ((
!
_user_specified_name	input_2:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_3:%!

_user_specified_name70276:%!

_user_specified_name70278:%!

_user_specified_name70283:%!

_user_specified_name70285:%!

_user_specified_name70294:%!

_user_specified_name70296:%!

_user_specified_name70305:%	!

_user_specified_name70307:%
!

_user_specified_name70316:%!

_user_specified_name70318:%!

_user_specified_name70328:%!

_user_specified_name70330
Л
H
,__inference_activation_2_layer_call_fn_71793

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_69806z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Ц[
├
@__inference_model_layer_call_and_return_conditional_losses_69845
input_1
dense_69718:
╜А2
dense_69720:	А2(
batch_normalization_69723:	А2(
batch_normalization_69725:	А2(
batch_normalization_69727:	А2(
batch_normalization_69729:	А20
conv2d_transpose_69767: @$
conv2d_transpose_69769: )
batch_normalization_1_69772: )
batch_normalization_1_69774: )
batch_normalization_1_69776: )
batch_normalization_1_69778: 2
conv2d_transpose_1_69788: &
conv2d_transpose_1_69790:)
batch_normalization_2_69793:)
batch_normalization_2_69795:)
batch_normalization_2_69797:)
batch_normalization_2_69799:2
conv2d_transpose_2_69808:&
conv2d_transpose_2_69810:)
batch_normalization_3_69813:)
batch_normalization_3_69815:)
batch_normalization_3_69817:)
batch_normalization_3_69819:&
conv2d_69839:
conv2d_69841:
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallв*conv2d_transpose_2/StatefulPartitionedCallвdense/StatefulPartitionedCallвdropout/StatefulPartitionedCallу
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_69718dense_69720*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_69717Є
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_69723batch_normalization_69725batch_normalization_69727batch_normalization_69729*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_69313ъ
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_69736┌
reshape/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_69751ч
dropout/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_69764¤
up_sampling2d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_69371╟
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_transpose_69767conv2d_transpose_69769*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_69409в
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_69772batch_normalization_1_69774batch_normalization_1_69776batch_normalization_1_69778*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_69436Й
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_69785■
up_sampling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_69492╤
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_transpose_1_69788conv2d_transpose_1_69790*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_69530д
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_2_69793batch_normalization_2_69795batch_normalization_2_69797batch_normalization_2_69799*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_69557Й
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_69806╬
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0conv2d_transpose_2_69808conv2d_transpose_2_69810*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69634д
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_3_69813batch_normalization_3_69815batch_normalization_3_69817batch_normalization_3_69819*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69661Й
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_69826Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0conv2d_69839conv2d_69841*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_69838Р
IdentityIdentity'conv2d/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ╚
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         ╜: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:Q M
(
_output_shapes
:         ╜
!
_user_specified_name	input_1:%!

_user_specified_name69718:%!

_user_specified_name69720:%!

_user_specified_name69723:%!

_user_specified_name69725:%!

_user_specified_name69727:%!

_user_specified_name69729:%!

_user_specified_name69767:%!

_user_specified_name69769:%	!

_user_specified_name69772:%
!

_user_specified_name69774:%!

_user_specified_name69776:%!

_user_specified_name69778:%!

_user_specified_name69788:%!

_user_specified_name69790:%!

_user_specified_name69793:%!

_user_specified_name69795:%!

_user_specified_name69797:%!

_user_specified_name69799:%!

_user_specified_name69808:%!

_user_specified_name69810:%!

_user_specified_name69813:%!

_user_specified_name69815:%!

_user_specified_name69817:%!

_user_specified_name69819:%!

_user_specified_name69839:%!

_user_specified_name69841
█
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_71970

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :(Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :(Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         ((`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         (("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         └:P L
(
_output_shapes
:         └
 
_user_specified_nameinputs
═
a
E__inference_activation_layer_call_and_return_conditional_losses_71490

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:         А2[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:         А2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А2:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs
З)
╩

B__inference_model_2_layer_call_and_return_conditional_losses_70835
input_4
input_5
model_70692:
╜А2
model_70694:	А2
model_70696:	А2
model_70698:	А2
model_70700:	А2
model_70702:	А2%
model_70704: @
model_70706: 
model_70708: 
model_70710: 
model_70712: 
model_70714: %
model_70716: 
model_70718:
model_70720:
model_70722:
model_70724:
model_70726:%
model_70728:
model_70730:
model_70732:
model_70734:
model_70736:
model_70738:%
model_70740:
model_70742:!
model_1_70809:
┘└
model_1_70811:	└'
model_1_70813:@
model_1_70815:@(
model_1_70817:@А
model_1_70819:	А)
model_1_70821:АА
model_1_70823:	А)
model_1_70825:АА
model_1_70827:	А 
model_1_70829:	Аd
model_1_70831:
identityИвmodel/StatefulPartitionedCallвmodel_1/StatefulPartitionedCall═
concatenate_1/PartitionedCallPartitionedCallinput_4input_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╜* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_70514Г
model/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0model_70692model_70694model_70696model_70698model_70700model_70702model_70704model_70706model_70708model_70710model_70712model_70714model_70716model_70718model_70720model_70722model_70724model_70726model_70728model_70730model_70732model_70734model_70736model_70738model_70740model_70742*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_69923╜
model_1/StatefulPartitionedCallStatefulPartitionedCall&model/StatefulPartitionedCall:output:0input_5model_1_70809model_1_70811model_1_70813model_1_70815model_1_70817model_1_70819model_1_70821model_1_70823model_1_70825model_1_70827model_1_70829model_1_70831*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_70808w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d
NoOpNoOp^model/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         d:         ┘: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_4:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_5:%!

_user_specified_name70692:%!

_user_specified_name70694:%!

_user_specified_name70696:%!

_user_specified_name70698:%!

_user_specified_name70700:%!

_user_specified_name70702:%!

_user_specified_name70704:%	!

_user_specified_name70706:%
!

_user_specified_name70708:%!

_user_specified_name70710:%!

_user_specified_name70712:%!

_user_specified_name70714:%!

_user_specified_name70716:%!

_user_specified_name70718:%!

_user_specified_name70720:%!

_user_specified_name70722:%!

_user_specified_name70724:%!

_user_specified_name70726:%!

_user_specified_name70728:%!

_user_specified_name70730:%!

_user_specified_name70732:%!

_user_specified_name70734:%!

_user_specified_name70736:%!

_user_specified_name70738:%!

_user_specified_name70740:%!

_user_specified_name70742:%!

_user_specified_name70809:%!

_user_specified_name70811:%!

_user_specified_name70813:%!

_user_specified_name70815:% !

_user_specified_name70817:%!!

_user_specified_name70819:%"!

_user_specified_name70821:%#!

_user_specified_name70823:%$!

_user_specified_name70825:%%!

_user_specified_name70827:%&!

_user_specified_name70829:%'!

_user_specified_name70831
З

╨
5__inference_batch_normalization_2_layer_call_fn_71752

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_69575Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:%!

_user_specified_name71742:%!

_user_specified_name71744:%!

_user_specified_name71746:%!

_user_specified_name71748
Е

╨
5__inference_batch_normalization_2_layer_call_fn_71739

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_69557Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:%!

_user_specified_name71729:%!

_user_specified_name71731:%!

_user_specified_name71733:%!

_user_specified_name71735
╫

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_70217

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Щ
а
(__inference_conv2d_4_layer_call_fn_72133

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_70229x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:%!

_user_specified_name72127:%!

_user_specified_name72129
√
▀
'__inference_model_1_layer_call_fn_71225
inputs_0
inputs_1
unknown:
┘└
	unknown_0:	└#
	unknown_1:@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	Аd

unknown_10:
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_70808o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+                           :         ┘: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         ┘
"
_user_specified_name
inputs_1:%!

_user_specified_name71199:%!

_user_specified_name71201:%!

_user_specified_name71203:%!

_user_specified_name71205:%!

_user_specified_name71207:%!

_user_specified_name71209:%!

_user_specified_name71211:%	!

_user_specified_name71213:%
!

_user_specified_name71215:%!

_user_specified_name71217:%!

_user_specified_name71219:%!

_user_specified_name71221
Л
H
,__inference_activation_3_layer_call_fn_71907

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_69826z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
√
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_70314

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╛
 
C__inference_conv2d_3_layer_call_and_return_conditional_losses_72097

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
З

╨
5__inference_batch_normalization_3_layer_call_fn_71866

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69679Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:%!

_user_specified_name71856:%!

_user_specified_name71858:%!

_user_specified_name71860:%!

_user_specified_name71862
│
c
G__inference_activation_2_layer_call_and_return_conditional_losses_71798

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
√
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_72077

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         

Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         

А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         

А:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs
З

╨
5__inference_batch_normalization_1_layer_call_fn_71621

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_69454Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:%!

_user_specified_name71611:%!

_user_specified_name71613:%!

_user_specified_name71615:%!

_user_specified_name71617
╙
▒
%__inference_model_layer_call_fn_69980
input_1
unknown:
╜А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
	unknown_3:	А2
	unknown_4:	А2#
	unknown_5: @
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_69845Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         ╜: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:         ╜
!
_user_specified_name	input_1:%!

_user_specified_name69926:%!

_user_specified_name69928:%!

_user_specified_name69930:%!

_user_specified_name69932:%!

_user_specified_name69934:%!

_user_specified_name69936:%!

_user_specified_name69938:%!

_user_specified_name69940:%	!

_user_specified_name69942:%
!

_user_specified_name69944:%!

_user_specified_name69946:%!

_user_specified_name69948:%!

_user_specified_name69950:%!

_user_specified_name69952:%!

_user_specified_name69954:%!

_user_specified_name69956:%!

_user_specified_name69958:%!

_user_specified_name69960:%!

_user_specified_name69962:%!

_user_specified_name69964:%!

_user_specified_name69966:%!

_user_specified_name69968:%!

_user_specified_name69970:%!

_user_specified_name69972:%!

_user_specified_name69974:%!

_user_specified_name69976
Й
┐
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_69436

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╞
^
B__inference_flatten_layer_call_and_return_conditional_losses_72182

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     2  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АdY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Аd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
■	
Ї
@__inference_dense_layer_call_and_return_conditional_losses_69717

inputs2
matmul_readvariableop_resource:
╜А2.
biasadd_readvariableop_resource:	А2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
╜А2*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А2*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╜: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╜
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┘
^
B__inference_reshape_layer_call_and_return_conditional_losses_71509

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         

@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А2:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs
я
b
)__inference_dropout_2_layer_call_fn_72055

inputs
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_70188x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         

А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         

А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs
╫

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_70188

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         

АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         

А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         

АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         

Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         

А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         

А:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs
║
■
C__inference_conv2d_2_layer_call_and_return_conditional_losses_70171

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         

Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         

АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ы
е
0__inference_conv2d_transpose_layer_call_fn_71562

inputs!
unknown: @
	unknown_0: 
identityИвStatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_69409Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:%!

_user_specified_name71556:%!

_user_specified_name71558
ч
p
F__inference_concatenate_layer_call_and_return_conditional_losses_70130

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :}
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         ((_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         (("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         ((:         ((:W S
/
_output_shapes
:         ((
 
_user_specified_nameinputs:WS
/
_output_shapes
:         ((
 
_user_specified_nameinputs
╧
Ы
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71657

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Р!
Ш
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_69409

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                            ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
√
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_70325

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
░&
ы
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71460

inputs6
'assignmovingavg_readvariableop_resource:	А28
)assignmovingavg_1_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А20
!batchnorm_readvariableop_resource:	А2
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А2*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2И
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А2*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А2*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А2*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А2*
dtype0В
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:А2y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2м
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А2*
dtype0И
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А2*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А2*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А2╞
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А2: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
п 
╝	
'__inference_model_2_layer_call_fn_70917
input_4
input_5
unknown:
╜А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
	unknown_3:	А2
	unknown_4:	А2#
	unknown_5: @
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:
┘└

unknown_26:	└$

unknown_27:@

unknown_28:@%

unknown_29:@А

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А

unknown_35:	Аd

unknown_36:
identityИвStatefulPartitionedCall╔
StatefulPartitionedCallStatefulPartitionedCallinput_4input_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *@
_read_only_resource_inputs"
 	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_70687o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         d:         ┘: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_4:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_5:%!

_user_specified_name70839:%!

_user_specified_name70841:%!

_user_specified_name70843:%!

_user_specified_name70845:%!

_user_specified_name70847:%!

_user_specified_name70849:%!

_user_specified_name70851:%	!

_user_specified_name70853:%
!

_user_specified_name70855:%!

_user_specified_name70857:%!

_user_specified_name70859:%!

_user_specified_name70861:%!

_user_specified_name70863:%!

_user_specified_name70865:%!

_user_specified_name70867:%!

_user_specified_name70869:%!

_user_specified_name70871:%!

_user_specified_name70873:%!

_user_specified_name70875:%!

_user_specified_name70877:%!

_user_specified_name70879:%!

_user_specified_name70881:%!

_user_specified_name70883:%!

_user_specified_name70885:%!

_user_specified_name70887:%!

_user_specified_name70889:%!

_user_specified_name70891:%!

_user_specified_name70893:%!

_user_specified_name70895:%!

_user_specified_name70897:% !

_user_specified_name70899:%!!

_user_specified_name70901:%"!

_user_specified_name70903:%#!

_user_specified_name70905:%$!

_user_specified_name70907:%%!

_user_specified_name70909:%&!

_user_specified_name70911:%'!

_user_specified_name70913
╫

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_72166

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Т!
Ъ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69634

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Л
H
,__inference_activation_1_layer_call_fn_71662

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_69785z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                            "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Й
┐
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71884

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Й
┐
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69661

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╒m
┘	
B__inference_model_1_layer_call_and_return_conditional_losses_71317
inputs_0
inputs_1:
&dense_1_matmul_readvariableop_resource:
┘└6
'dense_1_biasadd_readvariableop_resource:	└A
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	Аd5
'dense_2_biasadd_readvariableop_resource:
identityИвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
┘└*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └Г
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └e
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::э╧g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :█
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         ((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :й
concatenate/concatConcatV2inputs_0reshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:         ((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0└
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         @\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Х
dropout_1/dropout/MulMulconv2d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:         @p
dropout_1/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
::э╧и
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╠
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*/
_output_shapes
:         @П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╔
conv2d_2/Conv2DConv2D#dropout_1/dropout/SelectV2:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         

А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Ц
dropout_2/dropout/MulMulconv2d_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:         

Аp
dropout_2/dropout/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
::э╧й
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:         

А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>═
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         

А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*0
_output_shapes
:         

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╔
conv2d_3/Conv2DConv2D#dropout_2/dropout/SelectV2:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Ц
dropout_3/dropout/MulMulconv2d_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:         Аp
dropout_3/dropout/ShapeShapeconv2d_3/Relu:activations:0*
T0*
_output_shapes
::э╧й
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>═
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*0
_output_shapes
:         АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╔
conv2d_4/Conv2DConv2D#dropout_3/dropout/SelectV2:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         А\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Ц
dropout_4/dropout/MulMulconv2d_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*0
_output_shapes
:         Аp
dropout_4/dropout/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
::э╧й
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>═
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А^
dropout_4/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_4/dropout/SelectV2SelectV2"dropout_4/dropout/GreaterEqual:z:0dropout_4/dropout/Mul:z:0"dropout_4/dropout/Const_1:output:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     2  К
flatten/ReshapeReshape#dropout_4/dropout/SelectV2:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+                           :         ┘: : : : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         ┘
"
_user_specified_name
inputs_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
с
▒
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71480

inputs0
!batchnorm_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А22
#batchnorm_readvariableop_1_resource:	А22
#batchnorm_readvariableop_2_resource:	А2
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А2*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А2*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А2*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А2*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А2Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А2: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т!
Ъ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_71726

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е

╨
5__inference_batch_normalization_3_layer_call_fn_71853

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69661Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:%!

_user_specified_name71843:%!

_user_specified_name71845:%!

_user_specified_name71847:%!

_user_specified_name71849
Й
┐
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_69557

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
С 
╕	
#__inference_signature_wrapper_71150
input_4
input_5
unknown:
╜А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
	unknown_3:	А2
	unknown_4:	А2#
	unknown_5: @
	unknown_6: 
	unknown_7: 
	unknown_8: 
	unknown_9: 

unknown_10: $

unknown_11: 

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16:$

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:

unknown_25:
┘└

unknown_26:	└$

unknown_27:@

unknown_28:@%

unknown_29:@А

unknown_30:	А&

unknown_31:АА

unknown_32:	А&

unknown_33:АА

unknown_34:	А

unknown_35:	Аd

unknown_36:
identityИвStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinput_4input_5unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_69279o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         d:         ┘: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_4:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_5:%!

_user_specified_name71072:%!

_user_specified_name71074:%!

_user_specified_name71076:%!

_user_specified_name71078:%!

_user_specified_name71080:%!

_user_specified_name71082:%!

_user_specified_name71084:%	!

_user_specified_name71086:%
!

_user_specified_name71088:%!

_user_specified_name71090:%!

_user_specified_name71092:%!

_user_specified_name71094:%!

_user_specified_name71096:%!

_user_specified_name71098:%!

_user_specified_name71100:%!

_user_specified_name71102:%!

_user_specified_name71104:%!

_user_specified_name71106:%!

_user_specified_name71108:%!

_user_specified_name71110:%!

_user_specified_name71112:%!

_user_specified_name71114:%!

_user_specified_name71116:%!

_user_specified_name71118:%!

_user_specified_name71120:%!

_user_specified_name71122:%!

_user_specified_name71124:%!

_user_specified_name71126:%!

_user_specified_name71128:%!

_user_specified_name71130:% !

_user_specified_name71132:%!!

_user_specified_name71134:%"!

_user_specified_name71136:%#!

_user_specified_name71138:%$!

_user_specified_name71140:%%!

_user_specified_name71142:%&!

_user_specified_name71144:%'!

_user_specified_name71146
╫

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_72072

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         

АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         

А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         

АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         

Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         

А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         

А:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs
н
C
'__inference_flatten_layer_call_fn_72176

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_70253a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         Аd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Й
┐
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71770

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%═╠╠=╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Е

╨
5__inference_batch_normalization_1_layer_call_fn_71608

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_69436Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:%!

_user_specified_name71598:%!

_user_specified_name71600:%!

_user_specified_name71602:%!

_user_specified_name71604
я
Ч
'__inference_dense_1_layer_call_fn_71941

inputs
unknown:
┘└
	unknown_0:	└
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_70103p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         └<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ┘: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ┘
 
_user_specified_nameinputs:%!

_user_specified_name71935:%!

_user_specified_name71937
╧
Ы
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_69454

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╧
Ы
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71902

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
│
c
G__inference_activation_1_layer_call_and_return_conditional_losses_71667

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                            t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                            "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╠M
┘	
B__inference_model_1_layer_call_and_return_conditional_losses_71381
inputs_0
inputs_1:
&dense_1_matmul_readvariableop_resource:
┘└6
'dense_1_biasadd_readvariableop_resource:	└A
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	Аd5
'dense_2_biasadd_readvariableop_resource:
identityИвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
┘└*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └Г
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └e
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::э╧g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :█
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         ((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :й
concatenate/concatConcatV2inputs_0reshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:         ((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0└
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         @u
dropout_1/IdentityIdentityconv2d_1/Relu:activations:0*
T0*/
_output_shapes
:         @П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0┴
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         

Аv
dropout_2/IdentityIdentityconv2d_2/Relu:activations:0*
T0*0
_output_shapes
:         

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┴
conv2d_3/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аv
dropout_3/IdentityIdentityconv2d_3/Relu:activations:0*
T0*0
_output_shapes
:         АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┴
conv2d_4/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         Аv
dropout_4/IdentityIdentityconv2d_4/Relu:activations:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     2  В
flatten/ReshapeReshapedropout_4/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+                           :         ┘: : : : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         ┘
"
_user_specified_name
inputs_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┴
E
)__inference_dropout_4_layer_call_fn_72154

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_70325i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ы
Х
%__inference_dense_layer_call_fn_71390

inputs
unknown:
╜А2
	unknown_0:	А2
identityИвStatefulPartitionedCall╓
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_69717p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╜: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╜
 
_user_specified_nameinputs:%!

_user_specified_name71384:%!

_user_specified_name71386
─M
╫	
B__inference_model_1_layer_call_and_return_conditional_losses_70808

inputs
inputs_1:
&dense_1_matmul_readvariableop_resource:
┘└6
'dense_1_biasadd_readvariableop_resource:	└A
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	Аd5
'dense_2_biasadd_readvariableop_resource:
identityИвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
┘└*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └Г
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └e
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::э╧g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :█
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         ((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :з
concatenate/concatConcatV2inputsreshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:         ((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0└
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         @u
dropout_1/IdentityIdentityconv2d_1/Relu:activations:0*
T0*/
_output_shapes
:         @П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0┴
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         

Аv
dropout_2/IdentityIdentityconv2d_2/Relu:activations:0*
T0*0
_output_shapes
:         

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┴
conv2d_3/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         Аv
dropout_3/IdentityIdentityconv2d_3/Relu:activations:0*
T0*0
_output_shapes
:         АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0┴
conv2d_4/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         Аv
dropout_4/IdentityIdentityconv2d_4/Relu:activations:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     2  В
flatten/ReshapeReshapedropout_4/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+                           :         ┘: : : : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ┘
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
√
▀
'__inference_model_1_layer_call_fn_71195
inputs_0
inputs_1
unknown:
┘└
	unknown_0:	└#
	unknown_1:@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	Аd

unknown_10:
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_70660o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+                           :         ┘: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+                           
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         ┘
"
_user_specified_name
inputs_1:%!

_user_specified_name71169:%!

_user_specified_name71171:%!

_user_specified_name71173:%!

_user_specified_name71175:%!

_user_specified_name71177:%!

_user_specified_name71179:%!

_user_specified_name71181:%	!

_user_specified_name71183:%
!

_user_specified_name71185:%!

_user_specified_name71187:%!

_user_specified_name71189:%!

_user_specified_name71191
╗>
ў
B__inference_model_1_layer_call_and_return_conditional_losses_70272
input_2
input_3!
dense_1_70104:
┘└
dense_1_70106:	└(
conv2d_1_70143:@
conv2d_1_70145:@)
conv2d_2_70172:@А
conv2d_2_70174:	А*
conv2d_3_70201:АА
conv2d_3_70203:	А*
conv2d_4_70230:АА
conv2d_4_70232:	А 
dense_2_70266:	Аd
dense_2_70268:
identityИв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallв!dropout_2/StatefulPartitionedCallв!dropout_3/StatefulPartitionedCallв!dropout_4/StatefulPartitionedCallы
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_1_70104dense_1_70106*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         └*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_70103у
reshape_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_70122ы
concatenate/PartitionedCallPartitionedCallinput_2"reshape_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_70130У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_1_70143conv2d_1_70145*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_70142Ї
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_70159Ъ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_70172conv2d_2_70174*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_2_layer_call_and_return_conditional_losses_70171Щ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_70188Ъ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv2d_3_70201conv2d_3_70203*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_70200Щ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_70217Ъ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_4_70230conv2d_4_70232*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_70229Щ
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_70246┌
flatten/PartitionedCallPartitionedCall*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         Аd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_70253Г
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_70266dense_2_70268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_70265w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         В
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         ((:         ┘: : : : : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:X T
/
_output_shapes
:         ((
!
_user_specified_name	input_2:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_3:%!

_user_specified_name70104:%!

_user_specified_name70106:%!

_user_specified_name70143:%!

_user_specified_name70145:%!

_user_specified_name70172:%!

_user_specified_name70174:%!

_user_specified_name70201:%	!

_user_specified_name70203:%
!

_user_specified_name70230:%!

_user_specified_name70232:%!

_user_specified_name70266:%!

_user_specified_name70268
я
b
)__inference_dropout_3_layer_call_fn_72102

inputs
identityИвStatefulPartitionedCall╚
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_70217x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╞
^
B__inference_flatten_layer_call_and_return_conditional_losses_70253

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"     2  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АdY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         Аd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╫

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_70246

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
ї
`
B__inference_dropout_layer_call_and_return_conditional_losses_69868

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         

@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         

@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         

@:W S
/
_output_shapes
:         

@
 
_user_specified_nameinputs
╣
C
'__inference_dropout_layer_call_fn_71519

inputs
identity╡
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_69868h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         

@:W S
/
_output_shapes
:         

@
 
_user_specified_nameinputs
╢
K
/__inference_up_sampling2d_1_layer_call_fn_71672

inputs
identity╪
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_69492Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
√
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_70303

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         

Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         

А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         

А:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs
ў
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_72030

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
а	
╥
3__inference_batch_normalization_layer_call_fn_71413

inputs
unknown:	А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_69313p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs:%!

_user_specified_name71403:%!

_user_specified_name71405:%!

_user_specified_name71407:%!

_user_specified_name71409
╠

Ї
B__inference_dense_2_layer_call_and_return_conditional_losses_70265

inputs1
matmul_readvariableop_resource:	Аd-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Аd
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┴
E
)__inference_dropout_2_layer_call_fn_72060

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         

А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_70303i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         

А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         

А:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs
╠

Ї
B__inference_dense_2_layer_call_and_return_conditional_losses_72202

inputs1
matmul_readvariableop_resource:	Аd-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         Аd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         Аd
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
│
c
G__inference_activation_3_layer_call_and_return_conditional_losses_69826

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
 (
╩

B__inference_model_2_layer_call_and_return_conditional_losses_70687
input_4
input_5
model_70516:
╜А2
model_70518:	А2
model_70520:	А2
model_70522:	А2
model_70524:	А2
model_70526:	А2%
model_70528: @
model_70530: 
model_70532: 
model_70534: 
model_70536: 
model_70538: %
model_70540: 
model_70542:
model_70544:
model_70546:
model_70548:
model_70550:%
model_70552:
model_70554:
model_70556:
model_70558:
model_70560:
model_70562:%
model_70564:
model_70566:!
model_1_70661:
┘└
model_1_70663:	└'
model_1_70665:@
model_1_70667:@(
model_1_70669:@А
model_1_70671:	А)
model_1_70673:АА
model_1_70675:	А)
model_1_70677:АА
model_1_70679:	А 
model_1_70681:	Аd
model_1_70683:
identityИвmodel/StatefulPartitionedCallвmodel_1/StatefulPartitionedCall═
concatenate_1/PartitionedCallPartitionedCallinput_4input_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╜* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_70514√
model/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0model_70516model_70518model_70520model_70522model_70524model_70526model_70528model_70530model_70532model_70534model_70536model_70538model_70540model_70542model_70544model_70546model_70548model_70550model_70552model_70554model_70556model_70558model_70560model_70562model_70564model_70566*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_69845╜
model_1/StatefulPartitionedCallStatefulPartitionedCall&model/StatefulPartitionedCall:output:0input_5model_1_70661model_1_70663model_1_70665model_1_70667model_1_70669model_1_70671model_1_70673model_1_70675model_1_70677model_1_70679model_1_70681model_1_70683*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_70660w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d
NoOpNoOp^model/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         d:         ┘: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:P L
'
_output_shapes
:         d
!
_user_specified_name	input_4:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_5:%!

_user_specified_name70516:%!

_user_specified_name70518:%!

_user_specified_name70520:%!

_user_specified_name70522:%!

_user_specified_name70524:%!

_user_specified_name70526:%!

_user_specified_name70528:%	!

_user_specified_name70530:%
!

_user_specified_name70532:%!

_user_specified_name70534:%!

_user_specified_name70536:%!

_user_specified_name70538:%!

_user_specified_name70540:%!

_user_specified_name70542:%!

_user_specified_name70544:%!

_user_specified_name70546:%!

_user_specified_name70548:%!

_user_specified_name70550:%!

_user_specified_name70552:%!

_user_specified_name70554:%!

_user_specified_name70556:%!

_user_specified_name70558:%!

_user_specified_name70560:%!

_user_specified_name70562:%!

_user_specified_name70564:%!

_user_specified_name70566:%!

_user_specified_name70661:%!

_user_specified_name70663:%!

_user_specified_name70665:%!

_user_specified_name70667:% !

_user_specified_name70669:%!!

_user_specified_name70671:%"!

_user_specified_name70673:%#!

_user_specified_name70675:%$!

_user_specified_name70677:%%!

_user_specified_name70679:%&!

_user_specified_name70681:%'!

_user_specified_name70683
╛
 
C__inference_conv2d_4_layer_call_and_return_conditional_losses_70229

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
√
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_72171

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:         Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
я
r
F__inference_concatenate_layer_call_and_return_conditional_losses_71983
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*/
_output_shapes
:         ((_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:         (("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         ((:         ((:Y U
/
_output_shapes
:         ((
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:         ((
"
_user_specified_name
inputs_1
╜
E
)__inference_dropout_1_layer_call_fn_72013

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_70292h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Ь
·
A__inference_conv2d_layer_call_and_return_conditional_losses_71932

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0л
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0П
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+                           S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
а
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_71684

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
■	
Ї
@__inference_dense_layer_call_and_return_conditional_losses_71400

inputs2
matmul_readvariableop_resource:
╜А2.
biasadd_readvariableop_resource:	А2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
╜А2*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А2*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         А2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╜: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╜
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я
з
2__inference_conv2d_transpose_2_layer_call_fn_71807

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69634Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:%!

_user_specified_name71801:%!

_user_specified_name71803
╤
▌
'__inference_model_1_layer_call_fn_70364
input_2
input_3
unknown:
┘└
	unknown_0:	└#
	unknown_1:@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	Аd

unknown_10:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinput_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_70272o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         ((:         ┘: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         ((
!
_user_specified_name	input_2:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_3:%!

_user_specified_name70338:%!

_user_specified_name70340:%!

_user_specified_name70342:%!

_user_specified_name70344:%!

_user_specified_name70346:%!

_user_specified_name70348:%!

_user_specified_name70350:%	!

_user_specified_name70352:%
!

_user_specified_name70354:%!

_user_specified_name70356:%!

_user_specified_name70358:%!

_user_specified_name70360
с
▒
N__inference_batch_normalization_layer_call_and_return_conditional_losses_69333

inputs0
!batchnorm_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А22
#batchnorm_readvariableop_1_resource:	А22
#batchnorm_readvariableop_2_resource:	А2
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А2*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А2*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А2*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А2*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А2Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А2: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я
з
2__inference_conv2d_transpose_1_layer_call_fn_71693

inputs!
unknown: 
	unknown_0:
identityИвStatefulPartitionedCall№
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_69530Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:%!

_user_specified_name71687:%!

_user_specified_name71689
╝╓
╬)
 __inference__wrapped_model_69279
input_4
input_5F
2model_2_model_dense_matmul_readvariableop_resource:
╜А2B
3model_2_model_dense_biasadd_readvariableop_resource:	А2R
Cmodel_2_model_batch_normalization_batchnorm_readvariableop_resource:	А2V
Gmodel_2_model_batch_normalization_batchnorm_mul_readvariableop_resource:	А2T
Emodel_2_model_batch_normalization_batchnorm_readvariableop_1_resource:	А2T
Emodel_2_model_batch_normalization_batchnorm_readvariableop_2_resource:	А2a
Gmodel_2_model_conv2d_transpose_conv2d_transpose_readvariableop_resource: @L
>model_2_model_conv2d_transpose_biasadd_readvariableop_resource: I
;model_2_model_batch_normalization_1_readvariableop_resource: K
=model_2_model_batch_normalization_1_readvariableop_1_resource: Z
Lmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource: \
Nmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource: c
Imodel_2_model_conv2d_transpose_1_conv2d_transpose_readvariableop_resource: N
@model_2_model_conv2d_transpose_1_biasadd_readvariableop_resource:I
;model_2_model_batch_normalization_2_readvariableop_resource:K
=model_2_model_batch_normalization_2_readvariableop_1_resource:Z
Lmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:\
Nmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:c
Imodel_2_model_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:N
@model_2_model_conv2d_transpose_2_biasadd_readvariableop_resource:I
;model_2_model_batch_normalization_3_readvariableop_resource:K
=model_2_model_batch_normalization_3_readvariableop_1_resource:Z
Lmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:\
Nmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:M
3model_2_model_conv2d_conv2d_readvariableop_resource:B
4model_2_model_conv2d_biasadd_readvariableop_resource:J
6model_2_model_1_dense_1_matmul_readvariableop_resource:
┘└F
7model_2_model_1_dense_1_biasadd_readvariableop_resource:	└Q
7model_2_model_1_conv2d_1_conv2d_readvariableop_resource:@F
8model_2_model_1_conv2d_1_biasadd_readvariableop_resource:@R
7model_2_model_1_conv2d_2_conv2d_readvariableop_resource:@АG
8model_2_model_1_conv2d_2_biasadd_readvariableop_resource:	АS
7model_2_model_1_conv2d_3_conv2d_readvariableop_resource:ААG
8model_2_model_1_conv2d_3_biasadd_readvariableop_resource:	АS
7model_2_model_1_conv2d_4_conv2d_readvariableop_resource:ААG
8model_2_model_1_conv2d_4_biasadd_readvariableop_resource:	АI
6model_2_model_1_dense_2_matmul_readvariableop_resource:	АdE
7model_2_model_1_dense_2_biasadd_readvariableop_resource:
identityИв:model_2/model/batch_normalization/batchnorm/ReadVariableOpв<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1в<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2в>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpвCmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвEmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в2model_2/model/batch_normalization_1/ReadVariableOpв4model_2/model/batch_normalization_1/ReadVariableOp_1вCmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвEmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в2model_2/model/batch_normalization_2/ReadVariableOpв4model_2/model/batch_normalization_2/ReadVariableOp_1вCmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвEmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в2model_2/model/batch_normalization_3/ReadVariableOpв4model_2/model/batch_normalization_3/ReadVariableOp_1в+model_2/model/conv2d/BiasAdd/ReadVariableOpв*model_2/model/conv2d/Conv2D/ReadVariableOpв5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOpв>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOpв7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpв@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOpв7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpв@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOpв*model_2/model/dense/BiasAdd/ReadVariableOpв)model_2/model/dense/MatMul/ReadVariableOpв/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOpв.model_2/model_1/conv2d_1/Conv2D/ReadVariableOpв/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOpв.model_2/model_1/conv2d_2/Conv2D/ReadVariableOpв/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOpв.model_2/model_1/conv2d_3/Conv2D/ReadVariableOpв/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOpв.model_2/model_1/conv2d_4/Conv2D/ReadVariableOpв.model_2/model_1/dense_1/BiasAdd/ReadVariableOpв-model_2/model_1/dense_1/MatMul/ReadVariableOpв.model_2/model_1/dense_2/BiasAdd/ReadVariableOpв-model_2/model_1/dense_2/MatMul/ReadVariableOpc
!model_2/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :в
model_2/concatenate_1/concatConcatV2input_4input_5*model_2/concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:         ╜Ю
)model_2/model/dense/MatMul/ReadVariableOpReadVariableOp2model_2_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
╜А2*
dtype0▒
model_2/model/dense/MatMulMatMul%model_2/concatenate_1/concat:output:01model_2/model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2Ы
*model_2/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_2_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:А2*
dtype0│
model_2/model/dense/BiasAddBiasAdd$model_2/model/dense/MatMul:product:02model_2/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2╗
:model_2/model/batch_normalization/batchnorm/ReadVariableOpReadVariableOpCmodel_2_model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:А2*
dtype0v
1model_2/model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:▐
/model_2/model/batch_normalization/batchnorm/addAddV2Bmodel_2/model/batch_normalization/batchnorm/ReadVariableOp:value:0:model_2/model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2Х
1model_2/model/batch_normalization/batchnorm/RsqrtRsqrt3model_2/model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:А2├
>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpGmodel_2_model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А2*
dtype0█
/model_2/model/batch_normalization/batchnorm/mulMul5model_2/model/batch_normalization/batchnorm/Rsqrt:y:0Fmodel_2/model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2╞
1model_2/model/batch_normalization/batchnorm/mul_1Mul$model_2/model/dense/BiasAdd:output:03model_2/model/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2┐
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpEmodel_2_model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:А2*
dtype0┘
1model_2/model/batch_normalization/batchnorm/mul_2MulDmodel_2/model/batch_normalization/batchnorm/ReadVariableOp_1:value:03model_2/model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2┐
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpEmodel_2_model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:А2*
dtype0┘
/model_2/model/batch_normalization/batchnorm/subSubDmodel_2/model/batch_normalization/batchnorm/ReadVariableOp_2:value:05model_2/model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2┘
1model_2/model/batch_normalization/batchnorm/add_1AddV25model_2/model/batch_normalization/batchnorm/mul_1:z:03model_2/model/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2П
model_2/model/activation/ReluRelu5model_2/model/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         А2Д
model_2/model/reshape/ShapeShape+model_2/model/activation/Relu:activations:0*
T0*
_output_shapes
::э╧s
)model_2/model/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+model_2/model/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+model_2/model/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#model_2/model/reshape/strided_sliceStridedSlice$model_2/model/reshape/Shape:output:02model_2/model/reshape/strided_slice/stack:output:04model_2/model/reshape/strided_slice/stack_1:output:04model_2/model/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%model_2/model/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
g
%model_2/model/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
g
%model_2/model/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@Ч
#model_2/model/reshape/Reshape/shapePack,model_2/model/reshape/strided_slice:output:0.model_2/model/reshape/Reshape/shape/1:output:0.model_2/model/reshape/Reshape/shape/2:output:0.model_2/model/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:╜
model_2/model/reshape/ReshapeReshape+model_2/model/activation/Relu:activations:0,model_2/model/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:         

@М
model_2/model/dropout/IdentityIdentity&model_2/model/reshape/Reshape:output:0*
T0*/
_output_shapes
:         

@r
!model_2/model/up_sampling2d/ConstConst*
_output_shapes
:*
dtype0*
valueB"
   
   t
#model_2/model/up_sampling2d/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      е
model_2/model/up_sampling2d/mulMul*model_2/model/up_sampling2d/Const:output:0,model_2/model/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:є
8model_2/model/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor'model_2/model/dropout/Identity:output:0#model_2/model/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:         @*
half_pixel_centers(л
$model_2/model/conv2d_transpose/ShapeShapeImodel_2/model/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::э╧|
2model_2/model/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4model_2/model/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4model_2/model/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
,model_2/model/conv2d_transpose/strided_sliceStridedSlice-model_2/model/conv2d_transpose/Shape:output:0;model_2/model/conv2d_transpose/strided_slice/stack:output:0=model_2/model/conv2d_transpose/strided_slice/stack_1:output:0=model_2/model/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&model_2/model/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :h
&model_2/model/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :h
&model_2/model/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value	B : д
$model_2/model/conv2d_transpose/stackPack5model_2/model/conv2d_transpose/strided_slice:output:0/model_2/model/conv2d_transpose/stack/1:output:0/model_2/model/conv2d_transpose/stack/2:output:0/model_2/model/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:~
4model_2/model/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6model_2/model/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6model_2/model/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
.model_2/model/conv2d_transpose/strided_slice_1StridedSlice-model_2/model/conv2d_transpose/stack:output:0=model_2/model/conv2d_transpose/strided_slice_1/stack:output:0?model_2/model/conv2d_transpose/strided_slice_1/stack_1:output:0?model_2/model/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╬
>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpGmodel_2_model_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0ъ
/model_2/model/conv2d_transpose/conv2d_transposeConv2DBackpropInput-model_2/model/conv2d_transpose/stack:output:0Fmodel_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0Imodel_2/model/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
░
5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp>model_2_model_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0ф
&model_2/model/conv2d_transpose/BiasAddBiasAdd8model_2/model/conv2d_transpose/conv2d_transpose:output:0=model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          к
2model_2/model/batch_normalization_1/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_1_readvariableop_resource*
_output_shapes
: *
dtype0о
4model_2/model/batch_normalization_1/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
: *
dtype0╠
Cmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╨
Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0У
4model_2/model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3/model_2/model/conv2d_transpose/BiasAdd:output:0:model_2/model/batch_normalization_1/ReadVariableOp:value:0<model_2/model/batch_normalization_1/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( Ы
model_2/model/activation_1/ReluRelu8model_2/model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:          t
#model_2/model/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%model_2/model/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      л
!model_2/model/up_sampling2d_1/mulMul,model_2/model/up_sampling2d_1/Const:output:0.model_2/model/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:¤
:model_2/model/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor-model_2/model/activation_1/Relu:activations:0%model_2/model/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:         (( *
half_pixel_centers(п
&model_2/model/conv2d_transpose_1/ShapeShapeKmodel_2/model/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::э╧~
4model_2/model/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6model_2/model/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6model_2/model/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
.model_2/model/conv2d_transpose_1/strided_sliceStridedSlice/model_2/model/conv2d_transpose_1/Shape:output:0=model_2/model/conv2d_transpose_1/strided_slice/stack:output:0?model_2/model/conv2d_transpose_1/strided_slice/stack_1:output:0?model_2/model/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(model_2/model/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(j
(model_2/model/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(j
(model_2/model/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :о
&model_2/model/conv2d_transpose_1/stackPack7model_2/model/conv2d_transpose_1/strided_slice:output:01model_2/model/conv2d_transpose_1/stack/1:output:01model_2/model/conv2d_transpose_1/stack/2:output:01model_2/model/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:А
6model_2/model/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8model_2/model/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8model_2/model/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
0model_2/model/conv2d_transpose_1/strided_slice_1StridedSlice/model_2/model/conv2d_transpose_1/stack:output:0?model_2/model/conv2d_transpose_1/strided_slice_1/stack:output:0Amodel_2/model/conv2d_transpose_1/strided_slice_1/stack_1:output:0Amodel_2/model/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0Є
1model_2/model/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput/model_2/model/conv2d_transpose_1/stack:output:0Hmodel_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Kmodel_2/model/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:         ((*
paddingSAME*
strides
┤
7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
(model_2/model/conv2d_transpose_1/BiasAddBiasAdd:model_2/model/conv2d_transpose_1/conv2d_transpose:output:0?model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ((к
2model_2/model/batch_normalization_2/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0о
4model_2/model/batch_normalization_2/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0╠
Cmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╨
Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
4model_2/model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV31model_2/model/conv2d_transpose_1/BiasAdd:output:0:model_2/model/batch_normalization_2/ReadVariableOp:value:0<model_2/model/batch_normalization_2/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ((:::::*
epsilon%oГ:*
is_training( Ы
model_2/model/activation_2/ReluRelu8model_2/model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ((С
&model_2/model/conv2d_transpose_2/ShapeShape-model_2/model/activation_2/Relu:activations:0*
T0*
_output_shapes
::э╧~
4model_2/model/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6model_2/model/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6model_2/model/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
.model_2/model/conv2d_transpose_2/strided_sliceStridedSlice/model_2/model/conv2d_transpose_2/Shape:output:0=model_2/model/conv2d_transpose_2/strided_slice/stack:output:0?model_2/model/conv2d_transpose_2/strided_slice/stack_1:output:0?model_2/model/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(model_2/model/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B :(j
(model_2/model/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B :(j
(model_2/model/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :о
&model_2/model/conv2d_transpose_2/stackPack7model_2/model/conv2d_transpose_2/strided_slice:output:01model_2/model/conv2d_transpose_2/stack/1:output:01model_2/model/conv2d_transpose_2/stack/2:output:01model_2/model/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:А
6model_2/model/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8model_2/model/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8model_2/model/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:■
0model_2/model/conv2d_transpose_2/strided_slice_1StridedSlice/model_2/model/conv2d_transpose_2/stack:output:0?model_2/model/conv2d_transpose_2/strided_slice_1/stack:output:0Amodel_2/model/conv2d_transpose_2/strided_slice_1/stack_1:output:0Amodel_2/model/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask╥
@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0╘
1model_2/model/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput/model_2/model/conv2d_transpose_2/stack:output:0Hmodel_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0-model_2/model/activation_2/Relu:activations:0*
T0*/
_output_shapes
:         ((*
paddingSAME*
strides
┤
7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ъ
(model_2/model/conv2d_transpose_2/BiasAddBiasAdd:model_2/model/conv2d_transpose_2/conv2d_transpose:output:0?model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ((к
2model_2/model/batch_normalization_3/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0о
4model_2/model/batch_normalization_3/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0╠
Cmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╨
Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
4model_2/model/batch_normalization_3/FusedBatchNormV3FusedBatchNormV31model_2/model/conv2d_transpose_2/BiasAdd:output:0:model_2/model/batch_normalization_3/ReadVariableOp:value:0<model_2/model/batch_normalization_3/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         ((:::::*
epsilon%oГ:*
is_training( Ы
model_2/model/activation_3/ReluRelu8model_2/model/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         ((ж
*model_2/model/conv2d/Conv2D/ReadVariableOpReadVariableOp3model_2_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0ъ
model_2/model/conv2d/Conv2DConv2D-model_2/model/activation_3/Relu:activations:02model_2/model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ((*
paddingSAME*
strides
Ь
+model_2/model/conv2d/BiasAdd/ReadVariableOpReadVariableOp4model_2_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╝
model_2/model/conv2d/BiasAddBiasAdd$model_2/model/conv2d/Conv2D:output:03model_2/model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         ((И
model_2/model/conv2d/SigmoidSigmoid%model_2/model/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:         ((ж
-model_2/model_1/dense_1/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
┘└*
dtype0Ы
model_2/model_1/dense_1/MatMulMatMulinput_55model_2/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └г
.model_2/model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0┐
model_2/model_1/dense_1/BiasAddBiasAdd(model_2/model_1/dense_1/MatMul:product:06model_2/model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └Е
model_2/model_1/reshape_1/ShapeShape(model_2/model_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
::э╧w
-model_2/model_1/reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/model_2/model_1/reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/model_2/model_1/reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╙
'model_2/model_1/reshape_1/strided_sliceStridedSlice(model_2/model_1/reshape_1/Shape:output:06model_2/model_1/reshape_1/strided_slice/stack:output:08model_2/model_1/reshape_1/strided_slice/stack_1:output:08model_2/model_1/reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)model_2/model_1/reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :(k
)model_2/model_1/reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :(k
)model_2/model_1/reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :л
'model_2/model_1/reshape_1/Reshape/shapePack0model_2/model_1/reshape_1/strided_slice:output:02model_2/model_1/reshape_1/Reshape/shape/1:output:02model_2/model_1/reshape_1/Reshape/shape/2:output:02model_2/model_1/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:┬
!model_2/model_1/reshape_1/ReshapeReshape(model_2/model_1/dense_1/BiasAdd:output:00model_2/model_1/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         ((i
'model_2/model_1/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ё
"model_2/model_1/concatenate/concatConcatV2 model_2/model/conv2d/Sigmoid:y:0*model_2/model_1/reshape_1/Reshape:output:00model_2/model_1/concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:         ((о
.model_2/model_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ё
model_2/model_1/conv2d_1/Conv2DConv2D+model_2/model_1/concatenate/concat:output:06model_2/model_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
д
/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╚
 model_2/model_1/conv2d_1/BiasAddBiasAdd(model_2/model_1/conv2d_1/Conv2D:output:07model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @К
model_2/model_1/conv2d_1/ReluRelu)model_2/model_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         @Х
"model_2/model_1/dropout_1/IdentityIdentity+model_2/model_1/conv2d_1/Relu:activations:0*
T0*/
_output_shapes
:         @п
.model_2/model_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ё
model_2/model_1/conv2d_2/Conv2DConv2D+model_2/model_1/dropout_1/Identity:output:06model_2/model_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingSAME*
strides
е
/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╔
 model_2/model_1/conv2d_2/BiasAddBiasAdd(model_2/model_1/conv2d_2/Conv2D:output:07model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АЛ
model_2/model_1/conv2d_2/ReluRelu)model_2/model_1/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         

АЦ
"model_2/model_1/dropout_2/IdentityIdentity+model_2/model_1/conv2d_2/Relu:activations:0*
T0*0
_output_shapes
:         

А░
.model_2/model_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ё
model_2/model_1/conv2d_3/Conv2DConv2D+model_2/model_1/dropout_2/Identity:output:06model_2/model_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
е
/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╔
 model_2/model_1/conv2d_3/BiasAddBiasAdd(model_2/model_1/conv2d_3/Conv2D:output:07model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЛ
model_2/model_1/conv2d_3/ReluRelu)model_2/model_1/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         АЦ
"model_2/model_1/dropout_3/IdentityIdentity+model_2/model_1/conv2d_3/Relu:activations:0*
T0*0
_output_shapes
:         А░
.model_2/model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0ё
model_2/model_1/conv2d_4/Conv2DConv2D+model_2/model_1/dropout_3/Identity:output:06model_2/model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
е
/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╔
 model_2/model_1/conv2d_4/BiasAddBiasAdd(model_2/model_1/conv2d_4/Conv2D:output:07model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АЛ
model_2/model_1/conv2d_4/ReluRelu)model_2/model_1/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         АЦ
"model_2/model_1/dropout_4/IdentityIdentity+model_2/model_1/conv2d_4/Relu:activations:0*
T0*0
_output_shapes
:         Аn
model_2/model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     2  ▓
model_2/model_1/flatten/ReshapeReshape+model_2/model_1/dropout_4/Identity:output:0&model_2/model_1/flatten/Const:output:0*
T0*(
_output_shapes
:         Аdе
-model_2/model_1/dense_2/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0╗
model_2/model_1/dense_2/MatMulMatMul(model_2/model_1/flatten/Reshape:output:05model_2/model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         в
.model_2/model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╛
model_2/model_1/dense_2/BiasAddBiasAdd(model_2/model_1/dense_2/MatMul:product:06model_2/model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ж
model_2/model_1/dense_2/SigmoidSigmoid(model_2/model_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         r
IdentityIdentity#model_2/model_1/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Б
NoOpNoOp;^model_2/model/batch_normalization/batchnorm/ReadVariableOp=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_1=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_2?^model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpD^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_1/ReadVariableOp5^model_2/model/batch_normalization_1/ReadVariableOp_1D^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_2/ReadVariableOp5^model_2/model/batch_normalization_2/ReadVariableOp_1D^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_3/ReadVariableOp5^model_2/model/batch_normalization_3/ReadVariableOp_1,^model_2/model/conv2d/BiasAdd/ReadVariableOp+^model_2/model/conv2d/Conv2D/ReadVariableOp6^model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp?^model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp+^model_2/model/dense/BiasAdd/ReadVariableOp*^model_2/model/dense/MatMul/ReadVariableOp0^model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_1/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_2/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_3/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_4/Conv2D/ReadVariableOp/^model_2/model_1/dense_1/BiasAdd/ReadVariableOp.^model_2/model_1/dense_1/MatMul/ReadVariableOp/^model_2/model_1/dense_2/BiasAdd/ReadVariableOp.^model_2/model_1/dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:         d:         ┘: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2x
:model_2/model/batch_normalization/batchnorm/ReadVariableOp:model_2/model/batch_normalization/batchnorm/ReadVariableOp2|
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1<model_2/model/batch_normalization/batchnorm/ReadVariableOp_12|
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2<model_2/model/batch_normalization/batchnorm/ReadVariableOp_22А
>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOp>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOp2К
Cmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2О
Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12h
2model_2/model/batch_normalization_1/ReadVariableOp2model_2/model/batch_normalization_1/ReadVariableOp2l
4model_2/model/batch_normalization_1/ReadVariableOp_14model_2/model/batch_normalization_1/ReadVariableOp_12К
Cmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2О
Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12h
2model_2/model/batch_normalization_2/ReadVariableOp2model_2/model/batch_normalization_2/ReadVariableOp2l
4model_2/model/batch_normalization_2/ReadVariableOp_14model_2/model/batch_normalization_2/ReadVariableOp_12К
Cmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2О
Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12h
2model_2/model/batch_normalization_3/ReadVariableOp2model_2/model/batch_normalization_3/ReadVariableOp2l
4model_2/model/batch_normalization_3/ReadVariableOp_14model_2/model/batch_normalization_3/ReadVariableOp_12Z
+model_2/model/conv2d/BiasAdd/ReadVariableOp+model_2/model/conv2d/BiasAdd/ReadVariableOp2X
*model_2/model/conv2d/Conv2D/ReadVariableOp*model_2/model/conv2d/Conv2D/ReadVariableOp2n
5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp2А
>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp2r
7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp2Д
@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2r
7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp2Д
@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2X
*model_2/model/dense/BiasAdd/ReadVariableOp*model_2/model/dense/BiasAdd/ReadVariableOp2V
)model_2/model/dense/MatMul/ReadVariableOp)model_2/model/dense/MatMul/ReadVariableOp2b
/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp2`
.model_2/model_1/conv2d_1/Conv2D/ReadVariableOp.model_2/model_1/conv2d_1/Conv2D/ReadVariableOp2b
/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp2`
.model_2/model_1/conv2d_2/Conv2D/ReadVariableOp.model_2/model_1/conv2d_2/Conv2D/ReadVariableOp2b
/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp2`
.model_2/model_1/conv2d_3/Conv2D/ReadVariableOp.model_2/model_1/conv2d_3/Conv2D/ReadVariableOp2b
/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp2`
.model_2/model_1/conv2d_4/Conv2D/ReadVariableOp.model_2/model_1/conv2d_4/Conv2D/ReadVariableOp2`
.model_2/model_1/dense_1/BiasAdd/ReadVariableOp.model_2/model_1/dense_1/BiasAdd/ReadVariableOp2^
-model_2/model_1/dense_1/MatMul/ReadVariableOp-model_2/model_1/dense_1/MatMul/ReadVariableOp2`
.model_2/model_1/dense_2/BiasAdd/ReadVariableOp.model_2/model_1/dense_2/BiasAdd/ReadVariableOp2^
-model_2/model_1/dense_2/MatMul/ReadVariableOp-model_2/model_1/dense_2/MatMul/ReadVariableOp:P L
'
_output_shapes
:         d
!
_user_specified_name	input_4:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_5:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource
┴
E
)__inference_dropout_3_layer_call_fn_72107

inputs
identity╕
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_70314i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
Щ
а
(__inference_conv2d_3_layer_call_fn_72086

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_70200x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         

А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs:%!

_user_specified_name72080:%!

_user_specified_name72082
╬

a
B__inference_dropout_layer_call_and_return_conditional_losses_69764

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         

@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         

@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         

@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         

@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         

@:W S
/
_output_shapes
:         

@
 
_user_specified_nameinputs
╛
 
C__inference_conv2d_4_layer_call_and_return_conditional_losses_72144

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╫
Ы
&__inference_conv2d_layer_call_fn_71921

inputs!
unknown:
	unknown_0:
identityИвStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_69838Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:%!

_user_specified_name71915:%!

_user_specified_name71917
╫

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_72119

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>п
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╨

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_72025

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         @Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         @"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
■╝
╧W
__inference__traced_save_72777
file_prefix7
#read_disablecopyonread_dense_kernel:
╜А22
#read_1_disablecopyonread_dense_bias:	А2A
2read_2_disablecopyonread_batch_normalization_gamma:	А2@
1read_3_disablecopyonread_batch_normalization_beta:	А2G
8read_4_disablecopyonread_batch_normalization_moving_mean:	А2K
<read_5_disablecopyonread_batch_normalization_moving_variance:	А2J
0read_6_disablecopyonread_conv2d_transpose_kernel: @<
.read_7_disablecopyonread_conv2d_transpose_bias: B
4read_8_disablecopyonread_batch_normalization_1_gamma: A
3read_9_disablecopyonread_batch_normalization_1_beta: I
;read_10_disablecopyonread_batch_normalization_1_moving_mean: M
?read_11_disablecopyonread_batch_normalization_1_moving_variance: M
3read_12_disablecopyonread_conv2d_transpose_1_kernel: ?
1read_13_disablecopyonread_conv2d_transpose_1_bias:C
5read_14_disablecopyonread_batch_normalization_2_gamma:B
4read_15_disablecopyonread_batch_normalization_2_beta:I
;read_16_disablecopyonread_batch_normalization_2_moving_mean:M
?read_17_disablecopyonread_batch_normalization_2_moving_variance:M
3read_18_disablecopyonread_conv2d_transpose_2_kernel:?
1read_19_disablecopyonread_conv2d_transpose_2_bias:C
5read_20_disablecopyonread_batch_normalization_3_gamma:B
4read_21_disablecopyonread_batch_normalization_3_beta:I
;read_22_disablecopyonread_batch_normalization_3_moving_mean:M
?read_23_disablecopyonread_batch_normalization_3_moving_variance:A
'read_24_disablecopyonread_conv2d_kernel:3
%read_25_disablecopyonread_conv2d_bias:<
(read_26_disablecopyonread_dense_1_kernel:
┘└5
&read_27_disablecopyonread_dense_1_bias:	└C
)read_28_disablecopyonread_conv2d_1_kernel:@5
'read_29_disablecopyonread_conv2d_1_bias:@D
)read_30_disablecopyonread_conv2d_2_kernel:@А6
'read_31_disablecopyonread_conv2d_2_bias:	АE
)read_32_disablecopyonread_conv2d_3_kernel:АА6
'read_33_disablecopyonread_conv2d_3_bias:	АE
)read_34_disablecopyonread_conv2d_4_kernel:АА6
'read_35_disablecopyonread_conv2d_4_bias:	А;
(read_36_disablecopyonread_dense_2_kernel:	Аd4
&read_37_disablecopyonread_dense_2_bias:/
%read_38_disablecopyonread_iteration_1:	 3
)read_39_disablecopyonread_learning_rate_1: -
#read_40_disablecopyonread_iteration:	 1
'read_41_disablecopyonread_learning_rate: K
7read_42_disablecopyonread_rmsprop_velocity_dense_kernel:
╜А2D
5read_43_disablecopyonread_rmsprop_velocity_dense_bias:	А2S
Dread_44_disablecopyonread_rmsprop_velocity_batch_normalization_gamma:	А2R
Cread_45_disablecopyonread_rmsprop_velocity_batch_normalization_beta:	А2\
Bread_46_disablecopyonread_rmsprop_velocity_conv2d_transpose_kernel: @N
@read_47_disablecopyonread_rmsprop_velocity_conv2d_transpose_bias: T
Fread_48_disablecopyonread_rmsprop_velocity_batch_normalization_1_gamma: S
Eread_49_disablecopyonread_rmsprop_velocity_batch_normalization_1_beta: ^
Dread_50_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_kernel: P
Bread_51_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_bias:T
Fread_52_disablecopyonread_rmsprop_velocity_batch_normalization_2_gamma:S
Eread_53_disablecopyonread_rmsprop_velocity_batch_normalization_2_beta:^
Dread_54_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_kernel:P
Bread_55_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_bias:T
Fread_56_disablecopyonread_rmsprop_velocity_batch_normalization_3_gamma:S
Eread_57_disablecopyonread_rmsprop_velocity_batch_normalization_3_beta:R
8read_58_disablecopyonread_rmsprop_velocity_conv2d_kernel:D
6read_59_disablecopyonread_rmsprop_velocity_conv2d_bias:C
/read_60_disablecopyonread_adam_m_dense_1_kernel:
┘└C
/read_61_disablecopyonread_adam_v_dense_1_kernel:
┘└<
-read_62_disablecopyonread_adam_m_dense_1_bias:	└<
-read_63_disablecopyonread_adam_v_dense_1_bias:	└J
0read_64_disablecopyonread_adam_m_conv2d_1_kernel:@J
0read_65_disablecopyonread_adam_v_conv2d_1_kernel:@<
.read_66_disablecopyonread_adam_m_conv2d_1_bias:@<
.read_67_disablecopyonread_adam_v_conv2d_1_bias:@K
0read_68_disablecopyonread_adam_m_conv2d_2_kernel:@АK
0read_69_disablecopyonread_adam_v_conv2d_2_kernel:@А=
.read_70_disablecopyonread_adam_m_conv2d_2_bias:	А=
.read_71_disablecopyonread_adam_v_conv2d_2_bias:	АL
0read_72_disablecopyonread_adam_m_conv2d_3_kernel:ААL
0read_73_disablecopyonread_adam_v_conv2d_3_kernel:АА=
.read_74_disablecopyonread_adam_m_conv2d_3_bias:	А=
.read_75_disablecopyonread_adam_v_conv2d_3_bias:	АL
0read_76_disablecopyonread_adam_m_conv2d_4_kernel:ААL
0read_77_disablecopyonread_adam_v_conv2d_4_kernel:АА=
.read_78_disablecopyonread_adam_m_conv2d_4_bias:	А=
.read_79_disablecopyonread_adam_v_conv2d_4_bias:	АB
/read_80_disablecopyonread_adam_m_dense_2_kernel:	АdB
/read_81_disablecopyonread_adam_v_dense_2_kernel:	Аd;
-read_82_disablecopyonread_adam_m_dense_2_bias:;
-read_83_disablecopyonread_adam_v_dense_2_bias:+
!read_84_disablecopyonread_total_3: +
!read_85_disablecopyonread_count_3: +
!read_86_disablecopyonread_total_2: +
!read_87_disablecopyonread_count_2: +
!read_88_disablecopyonread_total_1: +
!read_89_disablecopyonread_count_1: )
read_90_disablecopyonread_total: )
read_91_disablecopyonread_count: 
savev2_const
identity_185ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_36/DisableCopyOnReadвRead_36/ReadVariableOpвRead_37/DisableCopyOnReadвRead_37/ReadVariableOpвRead_38/DisableCopyOnReadвRead_38/ReadVariableOpвRead_39/DisableCopyOnReadвRead_39/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_40/DisableCopyOnReadвRead_40/ReadVariableOpвRead_41/DisableCopyOnReadвRead_41/ReadVariableOpвRead_42/DisableCopyOnReadвRead_42/ReadVariableOpвRead_43/DisableCopyOnReadвRead_43/ReadVariableOpвRead_44/DisableCopyOnReadвRead_44/ReadVariableOpвRead_45/DisableCopyOnReadвRead_45/ReadVariableOpвRead_46/DisableCopyOnReadвRead_46/ReadVariableOpвRead_47/DisableCopyOnReadвRead_47/ReadVariableOpвRead_48/DisableCopyOnReadвRead_48/ReadVariableOpвRead_49/DisableCopyOnReadвRead_49/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_50/DisableCopyOnReadвRead_50/ReadVariableOpвRead_51/DisableCopyOnReadвRead_51/ReadVariableOpвRead_52/DisableCopyOnReadвRead_52/ReadVariableOpвRead_53/DisableCopyOnReadвRead_53/ReadVariableOpвRead_54/DisableCopyOnReadвRead_54/ReadVariableOpвRead_55/DisableCopyOnReadвRead_55/ReadVariableOpвRead_56/DisableCopyOnReadвRead_56/ReadVariableOpвRead_57/DisableCopyOnReadвRead_57/ReadVariableOpвRead_58/DisableCopyOnReadвRead_58/ReadVariableOpвRead_59/DisableCopyOnReadвRead_59/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_60/DisableCopyOnReadвRead_60/ReadVariableOpвRead_61/DisableCopyOnReadвRead_61/ReadVariableOpвRead_62/DisableCopyOnReadвRead_62/ReadVariableOpвRead_63/DisableCopyOnReadвRead_63/ReadVariableOpвRead_64/DisableCopyOnReadвRead_64/ReadVariableOpвRead_65/DisableCopyOnReadвRead_65/ReadVariableOpвRead_66/DisableCopyOnReadвRead_66/ReadVariableOpвRead_67/DisableCopyOnReadвRead_67/ReadVariableOpвRead_68/DisableCopyOnReadвRead_68/ReadVariableOpвRead_69/DisableCopyOnReadвRead_69/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_70/DisableCopyOnReadвRead_70/ReadVariableOpвRead_71/DisableCopyOnReadвRead_71/ReadVariableOpвRead_72/DisableCopyOnReadвRead_72/ReadVariableOpвRead_73/DisableCopyOnReadвRead_73/ReadVariableOpвRead_74/DisableCopyOnReadвRead_74/ReadVariableOpвRead_75/DisableCopyOnReadвRead_75/ReadVariableOpвRead_76/DisableCopyOnReadвRead_76/ReadVariableOpвRead_77/DisableCopyOnReadвRead_77/ReadVariableOpвRead_78/DisableCopyOnReadвRead_78/ReadVariableOpвRead_79/DisableCopyOnReadвRead_79/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_80/DisableCopyOnReadвRead_80/ReadVariableOpвRead_81/DisableCopyOnReadвRead_81/ReadVariableOpвRead_82/DisableCopyOnReadвRead_82/ReadVariableOpвRead_83/DisableCopyOnReadвRead_83/ReadVariableOpвRead_84/DisableCopyOnReadвRead_84/ReadVariableOpвRead_85/DisableCopyOnReadвRead_85/ReadVariableOpвRead_86/DisableCopyOnReadвRead_86/ReadVariableOpвRead_87/DisableCopyOnReadвRead_87/ReadVariableOpвRead_88/DisableCopyOnReadвRead_88/ReadVariableOpвRead_89/DisableCopyOnReadвRead_89/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpвRead_90/DisableCopyOnReadвRead_90/ReadVariableOpвRead_91/DisableCopyOnReadвRead_91/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 б
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
╜А2*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
╜А2c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
╜А2w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 а
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Ж
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 п
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_batch_normalization_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Е
Read_3/DisableCopyOnReadDisableCopyOnRead1read_3_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 о
Read_3/ReadVariableOpReadVariableOp1read_3_disablecopyonread_batch_normalization_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2М
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 ╡
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_batch_normalization_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Р
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 ╣
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_batch_normalization_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Д
Read_6/DisableCopyOnReadDisableCopyOnRead0read_6_disablecopyonread_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 ╕
Read_6/ReadVariableOpReadVariableOp0read_6_disablecopyonread_conv2d_transpose_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @В
Read_7/DisableCopyOnReadDisableCopyOnRead.read_7_disablecopyonread_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 к
Read_7/ReadVariableOpReadVariableOp.read_7_disablecopyonread_conv2d_transpose_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
: И
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ░
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_batch_normalization_1_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: З
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 п
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_batch_normalization_1_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: Р
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_10/ReadVariableOpReadVariableOp;read_10_disablecopyonread_batch_normalization_1_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: Ф
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 ╜
Read_11/ReadVariableOpReadVariableOp?read_11_disablecopyonread_batch_normalization_1_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: И
Read_12/DisableCopyOnReadDisableCopyOnRead3read_12_disablecopyonread_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 ╜
Read_12/ReadVariableOpReadVariableOp3read_12_disablecopyonread_conv2d_transpose_1_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ж
Read_13/DisableCopyOnReadDisableCopyOnRead1read_13_disablecopyonread_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 п
Read_13/ReadVariableOpReadVariableOp1read_13_disablecopyonread_conv2d_transpose_1_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:К
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 │
Read_14/ReadVariableOpReadVariableOp5read_14_disablecopyonread_batch_normalization_2_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:Й
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ▓
Read_15/ReadVariableOpReadVariableOp4read_15_disablecopyonread_batch_normalization_2_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_16/ReadVariableOpReadVariableOp;read_16_disablecopyonread_batch_normalization_2_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:Ф
Read_17/DisableCopyOnReadDisableCopyOnRead?read_17_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 ╜
Read_17/ReadVariableOpReadVariableOp?read_17_disablecopyonread_batch_normalization_2_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:И
Read_18/DisableCopyOnReadDisableCopyOnRead3read_18_disablecopyonread_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 ╜
Read_18/ReadVariableOpReadVariableOp3read_18_disablecopyonread_conv2d_transpose_2_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*&
_output_shapes
:Ж
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 п
Read_19/ReadVariableOpReadVariableOp1read_19_disablecopyonread_conv2d_transpose_2_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:К
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 │
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_batch_normalization_3_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:Й
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ▓
Read_21/ReadVariableOpReadVariableOp4read_21_disablecopyonread_batch_normalization_3_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:Р
Read_22/DisableCopyOnReadDisableCopyOnRead;read_22_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 ╣
Read_22/ReadVariableOpReadVariableOp;read_22_disablecopyonread_batch_normalization_3_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:Ф
Read_23/DisableCopyOnReadDisableCopyOnRead?read_23_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 ╜
Read_23/ReadVariableOpReadVariableOp?read_23_disablecopyonread_batch_normalization_3_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:|
Read_24/DisableCopyOnReadDisableCopyOnRead'read_24_disablecopyonread_conv2d_kernel"/device:CPU:0*
_output_shapes
 ▒
Read_24/ReadVariableOpReadVariableOp'read_24_disablecopyonread_conv2d_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:z
Read_25/DisableCopyOnReadDisableCopyOnRead%read_25_disablecopyonread_conv2d_bias"/device:CPU:0*
_output_shapes
 г
Read_25/ReadVariableOpReadVariableOp%read_25_disablecopyonread_conv2d_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_26/DisableCopyOnReadDisableCopyOnRead(read_26_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 м
Read_26/ReadVariableOpReadVariableOp(read_26_disablecopyonread_dense_1_kernel^Read_26/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
┘└*
dtype0q
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
┘└g
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0* 
_output_shapes
:
┘└{
Read_27/DisableCopyOnReadDisableCopyOnRead&read_27_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 е
Read_27/ReadVariableOpReadVariableOp&read_27_disablecopyonread_dense_1_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:└*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:└b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:└~
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 │
Read_28/ReadVariableOpReadVariableOp)read_28_disablecopyonread_conv2d_1_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*&
_output_shapes
:@|
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 е
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_conv2d_1_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_conv2d_2_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*'
_output_shapes
:@А|
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 ж
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_conv2d_2_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_32/DisableCopyOnReadDisableCopyOnRead)read_32_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_32/ReadVariableOpReadVariableOp)read_32_disablecopyonread_conv2d_3_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*(
_output_shapes
:АА|
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 ж
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_conv2d_3_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_34/DisableCopyOnReadDisableCopyOnRead)read_34_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_34/ReadVariableOpReadVariableOp)read_34_disablecopyonread_conv2d_4_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*(
_output_shapes
:АА|
Read_35/DisableCopyOnReadDisableCopyOnRead'read_35_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 ж
Read_35/ReadVariableOpReadVariableOp'read_35_disablecopyonread_conv2d_4_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:А}
Read_36/DisableCopyOnReadDisableCopyOnRead(read_36_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 л
Read_36/ReadVariableOpReadVariableOp(read_36_disablecopyonread_dense_2_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Аd*
dtype0p
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аdf
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:	Аd{
Read_37/DisableCopyOnReadDisableCopyOnRead&read_37_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 д
Read_37/ReadVariableOpReadVariableOp&read_37_disablecopyonread_dense_2_bias^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_38/DisableCopyOnReadDisableCopyOnRead%read_38_disablecopyonread_iteration_1"/device:CPU:0*
_output_shapes
 Я
Read_38/ReadVariableOpReadVariableOp%read_38_disablecopyonread_iteration_1^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0	*
_output_shapes
: ~
Read_39/DisableCopyOnReadDisableCopyOnRead)read_39_disablecopyonread_learning_rate_1"/device:CPU:0*
_output_shapes
 г
Read_39/ReadVariableOpReadVariableOp)read_39_disablecopyonread_learning_rate_1^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_40/DisableCopyOnReadDisableCopyOnRead#read_40_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_40/ReadVariableOpReadVariableOp#read_40_disablecopyonread_iteration^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_41/DisableCopyOnReadDisableCopyOnRead'read_41_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 б
Read_41/ReadVariableOpReadVariableOp'read_41_disablecopyonread_learning_rate^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes
: М
Read_42/DisableCopyOnReadDisableCopyOnRead7read_42_disablecopyonread_rmsprop_velocity_dense_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_42/ReadVariableOpReadVariableOp7read_42_disablecopyonread_rmsprop_velocity_dense_kernel^Read_42/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
╜А2*
dtype0q
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
╜А2g
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0* 
_output_shapes
:
╜А2К
Read_43/DisableCopyOnReadDisableCopyOnRead5read_43_disablecopyonread_rmsprop_velocity_dense_bias"/device:CPU:0*
_output_shapes
 ┤
Read_43/ReadVariableOpReadVariableOp5read_43_disablecopyonread_rmsprop_velocity_dense_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0l
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2b
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Щ
Read_44/DisableCopyOnReadDisableCopyOnReadDread_44_disablecopyonread_rmsprop_velocity_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 ├
Read_44/ReadVariableOpReadVariableOpDread_44_disablecopyonread_rmsprop_velocity_batch_normalization_gamma^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0l
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2b
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Ш
Read_45/DisableCopyOnReadDisableCopyOnReadCread_45_disablecopyonread_rmsprop_velocity_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ┬
Read_45/ReadVariableOpReadVariableOpCread_45_disablecopyonread_rmsprop_velocity_batch_normalization_beta^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0l
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2b
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Ч
Read_46/DisableCopyOnReadDisableCopyOnReadBread_46_disablecopyonread_rmsprop_velocity_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 ╠
Read_46/ReadVariableOpReadVariableOpBread_46_disablecopyonread_rmsprop_velocity_conv2d_transpose_kernel^Read_46/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Х
Read_47/DisableCopyOnReadDisableCopyOnRead@read_47_disablecopyonread_rmsprop_velocity_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 ╛
Read_47/ReadVariableOpReadVariableOp@read_47_disablecopyonread_rmsprop_velocity_conv2d_transpose_bias^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
: Ы
Read_48/DisableCopyOnReadDisableCopyOnReadFread_48_disablecopyonread_rmsprop_velocity_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ─
Read_48/ReadVariableOpReadVariableOpFread_48_disablecopyonread_rmsprop_velocity_batch_normalization_1_gamma^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
: Ъ
Read_49/DisableCopyOnReadDisableCopyOnReadEread_49_disablecopyonread_rmsprop_velocity_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ├
Read_49/ReadVariableOpReadVariableOpEread_49_disablecopyonread_rmsprop_velocity_batch_normalization_1_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
: Щ
Read_50/DisableCopyOnReadDisableCopyOnReadDread_50_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 ╬
Read_50/ReadVariableOpReadVariableOpDread_50_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_kernel^Read_50/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0x
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: o
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ч
Read_51/DisableCopyOnReadDisableCopyOnReadBread_51_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 └
Read_51/ReadVariableOpReadVariableOpBread_51_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_bias^Read_51/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*
_output_shapes
:Ы
Read_52/DisableCopyOnReadDisableCopyOnReadFread_52_disablecopyonread_rmsprop_velocity_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ─
Read_52/ReadVariableOpReadVariableOpFread_52_disablecopyonread_rmsprop_velocity_batch_normalization_2_gamma^Read_52/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*
_output_shapes
:Ъ
Read_53/DisableCopyOnReadDisableCopyOnReadEread_53_disablecopyonread_rmsprop_velocity_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ├
Read_53/ReadVariableOpReadVariableOpEread_53_disablecopyonread_rmsprop_velocity_batch_normalization_2_beta^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:Щ
Read_54/DisableCopyOnReadDisableCopyOnReadDread_54_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 ╬
Read_54/ReadVariableOpReadVariableOpDread_54_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_kernel^Read_54/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*&
_output_shapes
:Ч
Read_55/DisableCopyOnReadDisableCopyOnReadBread_55_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 └
Read_55/ReadVariableOpReadVariableOpBread_55_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_bias^Read_55/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*
_output_shapes
:Ы
Read_56/DisableCopyOnReadDisableCopyOnReadFread_56_disablecopyonread_rmsprop_velocity_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ─
Read_56/ReadVariableOpReadVariableOpFread_56_disablecopyonread_rmsprop_velocity_batch_normalization_3_gamma^Read_56/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*
_output_shapes
:Ъ
Read_57/DisableCopyOnReadDisableCopyOnReadEread_57_disablecopyonread_rmsprop_velocity_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ├
Read_57/ReadVariableOpReadVariableOpEread_57_disablecopyonread_rmsprop_velocity_batch_normalization_3_beta^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:Н
Read_58/DisableCopyOnReadDisableCopyOnRead8read_58_disablecopyonread_rmsprop_velocity_conv2d_kernel"/device:CPU:0*
_output_shapes
 ┬
Read_58/ReadVariableOpReadVariableOp8read_58_disablecopyonread_rmsprop_velocity_conv2d_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
:Л
Read_59/DisableCopyOnReadDisableCopyOnRead6read_59_disablecopyonread_rmsprop_velocity_conv2d_bias"/device:CPU:0*
_output_shapes
 ┤
Read_59/ReadVariableOpReadVariableOp6read_59_disablecopyonread_rmsprop_velocity_conv2d_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_60/DisableCopyOnReadDisableCopyOnRead/read_60_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 │
Read_60/ReadVariableOpReadVariableOp/read_60_disablecopyonread_adam_m_dense_1_kernel^Read_60/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
┘└*
dtype0r
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
┘└i
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0* 
_output_shapes
:
┘└Д
Read_61/DisableCopyOnReadDisableCopyOnRead/read_61_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 │
Read_61/ReadVariableOpReadVariableOp/read_61_disablecopyonread_adam_v_dense_1_kernel^Read_61/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
┘└*
dtype0r
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
┘└i
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0* 
_output_shapes
:
┘└В
Read_62/DisableCopyOnReadDisableCopyOnRead-read_62_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 м
Read_62/ReadVariableOpReadVariableOp-read_62_disablecopyonread_adam_m_dense_1_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:└*
dtype0m
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:└d
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes	
:└В
Read_63/DisableCopyOnReadDisableCopyOnRead-read_63_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 м
Read_63/ReadVariableOpReadVariableOp-read_63_disablecopyonread_adam_v_dense_1_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:└*
dtype0m
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:└d
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes	
:└Е
Read_64/DisableCopyOnReadDisableCopyOnRead0read_64_disablecopyonread_adam_m_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ║
Read_64/ReadVariableOpReadVariableOp0read_64_disablecopyonread_adam_m_conv2d_1_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0x
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Е
Read_65/DisableCopyOnReadDisableCopyOnRead0read_65_disablecopyonread_adam_v_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ║
Read_65/ReadVariableOpReadVariableOp0read_65_disablecopyonread_adam_v_conv2d_1_kernel^Read_65/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0x
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Г
Read_66/DisableCopyOnReadDisableCopyOnRead.read_66_disablecopyonread_adam_m_conv2d_1_bias"/device:CPU:0*
_output_shapes
 м
Read_66/ReadVariableOpReadVariableOp.read_66_disablecopyonread_adam_m_conv2d_1_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:@Г
Read_67/DisableCopyOnReadDisableCopyOnRead.read_67_disablecopyonread_adam_v_conv2d_1_bias"/device:CPU:0*
_output_shapes
 м
Read_67/ReadVariableOpReadVariableOp.read_67_disablecopyonread_adam_v_conv2d_1_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:@Е
Read_68/DisableCopyOnReadDisableCopyOnRead0read_68_disablecopyonread_adam_m_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_68/ReadVariableOpReadVariableOp0read_68_disablecopyonread_adam_m_conv2d_2_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0y
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аp
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АЕ
Read_69/DisableCopyOnReadDisableCopyOnRead0read_69_disablecopyonread_adam_v_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_69/ReadVariableOpReadVariableOp0read_69_disablecopyonread_adam_v_conv2d_2_kernel^Read_69/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0y
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аp
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АГ
Read_70/DisableCopyOnReadDisableCopyOnRead.read_70_disablecopyonread_adam_m_conv2d_2_bias"/device:CPU:0*
_output_shapes
 н
Read_70/ReadVariableOpReadVariableOp.read_70_disablecopyonread_adam_m_conv2d_2_bias^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_71/DisableCopyOnReadDisableCopyOnRead.read_71_disablecopyonread_adam_v_conv2d_2_bias"/device:CPU:0*
_output_shapes
 н
Read_71/ReadVariableOpReadVariableOp.read_71_disablecopyonread_adam_v_conv2d_2_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_72/DisableCopyOnReadDisableCopyOnRead0read_72_disablecopyonread_adam_m_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_72/ReadVariableOpReadVariableOp0read_72_disablecopyonread_adam_m_conv2d_3_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААЕ
Read_73/DisableCopyOnReadDisableCopyOnRead0read_73_disablecopyonread_adam_v_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_73/ReadVariableOpReadVariableOp0read_73_disablecopyonread_adam_v_conv2d_3_kernel^Read_73/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААГ
Read_74/DisableCopyOnReadDisableCopyOnRead.read_74_disablecopyonread_adam_m_conv2d_3_bias"/device:CPU:0*
_output_shapes
 н
Read_74/ReadVariableOpReadVariableOp.read_74_disablecopyonread_adam_m_conv2d_3_bias^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_75/DisableCopyOnReadDisableCopyOnRead.read_75_disablecopyonread_adam_v_conv2d_3_bias"/device:CPU:0*
_output_shapes
 н
Read_75/ReadVariableOpReadVariableOp.read_75_disablecopyonread_adam_v_conv2d_3_bias^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЕ
Read_76/DisableCopyOnReadDisableCopyOnRead0read_76_disablecopyonread_adam_m_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_76/ReadVariableOpReadVariableOp0read_76_disablecopyonread_adam_m_conv2d_4_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААЕ
Read_77/DisableCopyOnReadDisableCopyOnRead0read_77_disablecopyonread_adam_v_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_77/ReadVariableOpReadVariableOp0read_77_disablecopyonread_adam_v_conv2d_4_kernel^Read_77/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААГ
Read_78/DisableCopyOnReadDisableCopyOnRead.read_78_disablecopyonread_adam_m_conv2d_4_bias"/device:CPU:0*
_output_shapes
 н
Read_78/ReadVariableOpReadVariableOp.read_78_disablecopyonread_adam_m_conv2d_4_bias^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes	
:АГ
Read_79/DisableCopyOnReadDisableCopyOnRead.read_79_disablecopyonread_adam_v_conv2d_4_bias"/device:CPU:0*
_output_shapes
 н
Read_79/ReadVariableOpReadVariableOp.read_79_disablecopyonread_adam_v_conv2d_4_bias^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_80/DisableCopyOnReadDisableCopyOnRead/read_80_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_80/ReadVariableOpReadVariableOp/read_80_disablecopyonread_adam_m_dense_2_kernel^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Аd*
dtype0q
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аdh
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
:	АdД
Read_81/DisableCopyOnReadDisableCopyOnRead/read_81_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_81/ReadVariableOpReadVariableOp/read_81_disablecopyonread_adam_v_dense_2_kernel^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Аd*
dtype0q
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аdh
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
:	АdВ
Read_82/DisableCopyOnReadDisableCopyOnRead-read_82_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 л
Read_82/ReadVariableOpReadVariableOp-read_82_disablecopyonread_adam_m_dense_2_bias^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_83/DisableCopyOnReadDisableCopyOnRead-read_83_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 л
Read_83/ReadVariableOpReadVariableOp-read_83_disablecopyonread_adam_v_dense_2_bias^Read_83/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_84/DisableCopyOnReadDisableCopyOnRead!read_84_disablecopyonread_total_3"/device:CPU:0*
_output_shapes
 Ы
Read_84/ReadVariableOpReadVariableOp!read_84_disablecopyonread_total_3^Read_84/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_85/DisableCopyOnReadDisableCopyOnRead!read_85_disablecopyonread_count_3"/device:CPU:0*
_output_shapes
 Ы
Read_85/ReadVariableOpReadVariableOp!read_85_disablecopyonread_count_3^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_86/DisableCopyOnReadDisableCopyOnRead!read_86_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 Ы
Read_86/ReadVariableOpReadVariableOp!read_86_disablecopyonread_total_2^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_87/DisableCopyOnReadDisableCopyOnRead!read_87_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 Ы
Read_87/ReadVariableOpReadVariableOp!read_87_disablecopyonread_count_2^Read_87/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_88/DisableCopyOnReadDisableCopyOnRead!read_88_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_88/ReadVariableOpReadVariableOp!read_88_disablecopyonread_total_1^Read_88/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_89/DisableCopyOnReadDisableCopyOnRead!read_89_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_89/ReadVariableOpReadVariableOp!read_89_disablecopyonread_count_1^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_90/DisableCopyOnReadDisableCopyOnReadread_90_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_90/ReadVariableOpReadVariableOpread_90_disablecopyonread_total^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_91/DisableCopyOnReadDisableCopyOnReadread_91_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_91/ReadVariableOpReadVariableOpread_91_disablecopyonread_count^Read_91/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*
_output_shapes
: А(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*й'
valueЯ'BЬ']B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHк
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*╧
value┼B┬]B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┴
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *k
dtypesa
_2]		Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_184Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_185IdentityIdentity_184:output:0^NoOp*
T0*
_output_shapes
: л&
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp*
_output_shapes
 "%
identity_185Identity_185:output:0*(
_construction_contextkEagerRuntime*╤
_input_shapes┐
╝: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:95
3
_user_specified_namebatch_normalization/gamma:84
2
_user_specified_namebatch_normalization/beta:?;
9
_user_specified_name!batch_normalization/moving_mean:C?
=
_user_specified_name%#batch_normalization/moving_variance:73
1
_user_specified_nameconv2d_transpose/kernel:51
/
_user_specified_nameconv2d_transpose/bias:;	7
5
_user_specified_namebatch_normalization_1/gamma::
6
4
_user_specified_namebatch_normalization_1/beta:A=
;
_user_specified_name#!batch_normalization_1/moving_mean:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:95
3
_user_specified_nameconv2d_transpose_1/kernel:73
1
_user_specified_nameconv2d_transpose_1/bias:;7
5
_user_specified_namebatch_normalization_2/gamma::6
4
_user_specified_namebatch_normalization_2/beta:A=
;
_user_specified_name#!batch_normalization_2/moving_mean:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:95
3
_user_specified_nameconv2d_transpose_2/kernel:73
1
_user_specified_nameconv2d_transpose_2/bias:;7
5
_user_specified_namebatch_normalization_3/gamma::6
4
_user_specified_namebatch_normalization_3/beta:A=
;
_user_specified_name#!batch_normalization_3/moving_mean:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:-)
'
_user_specified_nameconv2d/kernel:+'
%
_user_specified_nameconv2d/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_2/kernel:- )
'
_user_specified_nameconv2d_2/bias:/!+
)
_user_specified_nameconv2d_3/kernel:-")
'
_user_specified_nameconv2d_3/bias:/#+
)
_user_specified_nameconv2d_4/kernel:-$)
'
_user_specified_nameconv2d_4/bias:.%*
(
_user_specified_namedense_2/kernel:,&(
&
_user_specified_namedense_2/bias:+''
%
_user_specified_nameiteration_1:/(+
)
_user_specified_namelearning_rate_1:))%
#
_user_specified_name	iteration:-*)
'
_user_specified_namelearning_rate:=+9
7
_user_specified_nameRMSprop/velocity/dense/kernel:;,7
5
_user_specified_nameRMSprop/velocity/dense/bias:J-F
D
_user_specified_name,*RMSprop/velocity/batch_normalization/gamma:I.E
C
_user_specified_name+)RMSprop/velocity/batch_normalization/beta:H/D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose/kernel:F0B
@
_user_specified_name(&RMSprop/velocity/conv2d_transpose/bias:L1H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_1/gamma:K2G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_1/beta:J3F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_1/kernel:H4D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_1/bias:L5H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_2/gamma:K6G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_2/beta:J7F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_2/kernel:H8D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_2/bias:L9H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_3/gamma:K:G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_3/beta:>;:
8
_user_specified_name RMSprop/velocity/conv2d/kernel:<<8
6
_user_specified_nameRMSprop/velocity/conv2d/bias:5=1
/
_user_specified_nameAdam/m/dense_1/kernel:5>1
/
_user_specified_nameAdam/v/dense_1/kernel:3?/
-
_user_specified_nameAdam/m/dense_1/bias:3@/
-
_user_specified_nameAdam/v/dense_1/bias:6A2
0
_user_specified_nameAdam/m/conv2d_1/kernel:6B2
0
_user_specified_nameAdam/v/conv2d_1/kernel:4C0
.
_user_specified_nameAdam/m/conv2d_1/bias:4D0
.
_user_specified_nameAdam/v/conv2d_1/bias:6E2
0
_user_specified_nameAdam/m/conv2d_2/kernel:6F2
0
_user_specified_nameAdam/v/conv2d_2/kernel:4G0
.
_user_specified_nameAdam/m/conv2d_2/bias:4H0
.
_user_specified_nameAdam/v/conv2d_2/bias:6I2
0
_user_specified_nameAdam/m/conv2d_3/kernel:6J2
0
_user_specified_nameAdam/v/conv2d_3/kernel:4K0
.
_user_specified_nameAdam/m/conv2d_3/bias:4L0
.
_user_specified_nameAdam/v/conv2d_3/bias:6M2
0
_user_specified_nameAdam/m/conv2d_4/kernel:6N2
0
_user_specified_nameAdam/v/conv2d_4/kernel:4O0
.
_user_specified_nameAdam/m/conv2d_4/bias:4P0
.
_user_specified_nameAdam/v/conv2d_4/bias:5Q1
/
_user_specified_nameAdam/m/dense_2/kernel:5R1
/
_user_specified_nameAdam/v/dense_2/kernel:3S/
-
_user_specified_nameAdam/m/dense_2/bias:3T/
-
_user_specified_nameAdam/v/dense_2/bias:'U#
!
_user_specified_name	total_3:'V#
!
_user_specified_name	count_3:'W#
!
_user_specified_name	total_2:'X#
!
_user_specified_name	count_2:'Y#
!
_user_specified_name	total_1:'Z#
!
_user_specified_name	count_1:%[!

_user_specified_nametotal:%\!

_user_specified_namecount:=]9

_output_shapes
: 

_user_specified_nameConst
а
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_69492

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╜
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:V
ConstConst*
_output_shapes
:*
dtype0*
valueB"      W
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:╡
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4                                    *
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ў
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_70292

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:         @c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:         @"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
в	
╥
3__inference_batch_normalization_layer_call_fn_71426

inputs
unknown:	А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_69333p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs:%!

_user_specified_name71416:%!

_user_specified_name71418:%!

_user_specified_name71420:%!

_user_specified_name71422
г
F
*__inference_activation_layer_call_fn_71485

inputs
identity▒
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_69736a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А2:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs
╧
Ы
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_69575

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
┘
^
B__inference_reshape_layer_call_and_return_conditional_losses_69751

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:         

@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:         

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А2:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs
═m
╫	
B__inference_model_1_layer_call_and_return_conditional_losses_70660

inputs
inputs_1:
&dense_1_matmul_readvariableop_resource:
┘└6
'dense_1_biasadd_readvariableop_resource:	└A
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_2_matmul_readvariableop_resource:	Аd5
'dense_2_biasadd_readvariableop_resource:
identityИвconv2d_1/BiasAdd/ReadVariableOpвconv2d_1/Conv2D/ReadVariableOpвconv2d_2/BiasAdd/ReadVariableOpвconv2d_2/Conv2D/ReadVariableOpвconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвdense_1/BiasAdd/ReadVariableOpвdense_1/MatMul/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
┘└*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └Г
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └e
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::э╧g
reshape_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
reshape_1/strided_sliceStridedSlicereshape_1/Shape:output:0&reshape_1/strided_slice/stack:output:0(reshape_1/strided_slice/stack_1:output:0(reshape_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_1/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :([
reshape_1/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :█
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:         ((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :з
concatenate/concatConcatV2inputsreshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:         ((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0└
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         @\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Х
dropout_1/dropout/MulMulconv2d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:         @p
dropout_1/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
::э╧и
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>╠
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ├
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*/
_output_shapes
:         @П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0╔
conv2d_2/Conv2DConv2D#dropout_1/dropout/SelectV2:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         

А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Ц
dropout_2/dropout/MulMulconv2d_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:         

Аp
dropout_2/dropout/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
::э╧й
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:         

А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>═
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         

А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*0
_output_shapes
:         

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╔
conv2d_3/Conv2DConv2D#dropout_2/dropout/SelectV2:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:         А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Ц
dropout_3/dropout/MulMulconv2d_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:         Аp
dropout_3/dropout/ShapeShapeconv2d_3/Relu:activations:0*
T0*
_output_shapes
::э╧й
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>═
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*0
_output_shapes
:         АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0╔
conv2d_4/Conv2DConv2D#dropout_3/dropout/SelectV2:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:         А\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?Ц
dropout_4/dropout/MulMulconv2d_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*0
_output_shapes
:         Аp
dropout_4/dropout/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
::э╧й
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*0
_output_shapes
:         А*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>═
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А^
dropout_4/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ─
dropout_4/dropout/SelectV2SelectV2"dropout_4/dropout/GreaterEqual:z:0dropout_4/dropout/Mul:z:0"dropout_4/dropout/Const_1:output:0*
T0*0
_output_shapes
:         А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"     2  К
flatten/ReshapeReshape#dropout_4/dropout/SelectV2:output:0flatten/Const:output:0*
T0*(
_output_shapes
:         АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ░
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+                           :         ┘: : : : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ┘
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╛
 
C__inference_conv2d_3_layer_call_and_return_conditional_losses_70200

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         

А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
`
'__inference_dropout_layer_call_fn_71514

inputs
identityИвStatefulPartitionedCall┼
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_69764w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         

@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         

@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         

@
 
_user_specified_nameinputs
▓
№
C__inference_conv2d_1_layer_call_and_return_conditional_losses_70142

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ((: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         ((
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╜
r
H__inference_concatenate_1_layer_call_and_return_conditional_losses_70514

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :v
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:         ╜X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         ╜"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         d:         ┘:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs:PL
(
_output_shapes
:         ┘
 
_user_specified_nameinputs
■Y
б
@__inference_model_layer_call_and_return_conditional_losses_69923
input_1
dense_69848:
╜А2
dense_69850:	А2(
batch_normalization_69853:	А2(
batch_normalization_69855:	А2(
batch_normalization_69857:	А2(
batch_normalization_69859:	А20
conv2d_transpose_69871: @$
conv2d_transpose_69873: )
batch_normalization_1_69876: )
batch_normalization_1_69878: )
batch_normalization_1_69880: )
batch_normalization_1_69882: 2
conv2d_transpose_1_69887: &
conv2d_transpose_1_69889:)
batch_normalization_2_69892:)
batch_normalization_2_69894:)
batch_normalization_2_69896:)
batch_normalization_2_69898:2
conv2d_transpose_2_69902:&
conv2d_transpose_2_69904:)
batch_normalization_3_69907:)
batch_normalization_3_69909:)
batch_normalization_3_69911:)
batch_normalization_3_69913:&
conv2d_69917:
conv2d_69919:
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв(conv2d_transpose/StatefulPartitionedCallв*conv2d_transpose_1/StatefulPartitionedCallв*conv2d_transpose_2/StatefulPartitionedCallвdense/StatefulPartitionedCallу
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_69848dense_69850*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_69717Ї
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_69853batch_normalization_69855batch_normalization_69857batch_normalization_69859*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_69333ъ
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_69736┌
reshape/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_69751╫
dropout/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         

@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_69868ї
up_sampling2d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_69371╟
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_transpose_69871conv2d_transpose_69873*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_69409д
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_69876batch_normalization_1_69878batch_normalization_1_69880batch_normalization_1_69882*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_69454Й
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_69785■
up_sampling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_69492╤
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_transpose_1_69887conv2d_transpose_1_69889*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_69530ж
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_2_69892batch_normalization_2_69894batch_normalization_2_69896batch_normalization_2_69898*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_69575Й
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_69806╬
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0conv2d_transpose_2_69902conv2d_transpose_2_69904*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69634ж
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_3_69907batch_normalization_3_69909batch_normalization_3_69911batch_normalization_3_69913*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69679Й
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_69826Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0conv2d_69917conv2d_69919*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_69838Р
IdentityIdentity'conv2d/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ж
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:         ╜: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:Q M
(
_output_shapes
:         ╜
!
_user_specified_name	input_1:%!

_user_specified_name69848:%!

_user_specified_name69850:%!

_user_specified_name69853:%!

_user_specified_name69855:%!

_user_specified_name69857:%!

_user_specified_name69859:%!

_user_specified_name69871:%!

_user_specified_name69873:%	!

_user_specified_name69876:%
!

_user_specified_name69878:%!

_user_specified_name69880:%!

_user_specified_name69882:%!

_user_specified_name69887:%!

_user_specified_name69889:%!

_user_specified_name69892:%!

_user_specified_name69894:%!

_user_specified_name69896:%!

_user_specified_name69898:%!

_user_specified_name69902:%!

_user_specified_name69904:%!

_user_specified_name69907:%!

_user_specified_name69909:%!

_user_specified_name69911:%!

_user_specified_name69913:%!

_user_specified_name69917:%!

_user_specified_name69919
┼
t
H__inference_concatenate_1_layer_call_and_return_conditional_losses_71165
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :x
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:         ╜X
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:         ╜"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         d:         ┘:Q M
'
_output_shapes
:         d
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         ┘
"
_user_specified_name
inputs_1
А

Ў
B__inference_dense_1_layer_call_and_return_conditional_losses_70103

inputs2
matmul_readvariableop_resource:
┘└.
biasadd_readvariableop_resource:	└
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
┘└*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:└*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         └`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:         └S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ┘: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ┘
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
п
E
)__inference_reshape_1_layer_call_fn_71956

inputs
identity╖
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_70122h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         (("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         └:P L
(
_output_shapes
:         └
 
_user_specified_nameinputs
╤
▌
'__inference_model_1_layer_call_fn_70394
input_2
input_3
unknown:
┘└
	unknown_0:	└#
	unknown_1:@
	unknown_2:@$
	unknown_3:@А
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А%
	unknown_7:АА
	unknown_8:	А
	unknown_9:	Аd

unknown_10:
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinput_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_70334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:         ((:         ┘: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:         ((
!
_user_specified_name	input_2:QM
(
_output_shapes
:         ┘
!
_user_specified_name	input_3:%!

_user_specified_name70368:%!

_user_specified_name70370:%!

_user_specified_name70372:%!

_user_specified_name70374:%!

_user_specified_name70376:%!

_user_specified_name70378:%!

_user_specified_name70380:%	!

_user_specified_name70382:%
!

_user_specified_name70384:%!

_user_specified_name70386:%!

_user_specified_name70388:%!

_user_specified_name70390
о
Y
-__inference_concatenate_1_layer_call_fn_71158
inputs_0
inputs_1
identity┴
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╜* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_70514a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ╜"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':         d:         ┘:Q M
'
_output_shapes
:         d
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:         ┘
"
_user_specified_name
inputs_1
║
■
C__inference_conv2d_2_layer_call_and_return_conditional_losses_72050

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         

АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         

Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         

АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╧
Ы
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71788

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╧
Ы
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69679

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
░&
ы
N__inference_batch_normalization_layer_call_and_return_conditional_losses_69313

inputs6
'assignmovingavg_readvariableop_resource:	А28
)assignmovingavg_1_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А20
!batchnorm_readvariableop_resource:	А2
identityИвAssignMovingAvgвAssignMovingAvg/ReadVariableOpвAssignMovingAvg_1в AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: А
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А2*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2И
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Я
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А2*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А2*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А2*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=Г
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:А2*
dtype0В
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:А2y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:А2м
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=З
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:А2*
dtype0И
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:А2
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:А2┤
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А2*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А2*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:         А2╞
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         А2: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
═
a
E__inference_activation_layer_call_and_return_conditional_losses_69736

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:         А2[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:         А2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А2:P L
(
_output_shapes
:         А2
 
_user_specified_nameinputs
Р!
Ш
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_71595

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B : y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                            ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╬

a
B__inference_dropout_layer_call_and_return_conditional_losses_71531

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU╒?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:         

@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Ф
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:         

@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠>о
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         

@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:         

@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:         

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         

@:W S
/
_output_shapes
:         

@
 
_user_specified_nameinputs
Т!
Ъ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_69530

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┘
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0▄
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0Щ
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+                           ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
╓
W
+__inference_concatenate_layer_call_fn_71976
inputs_0
inputs_1
identity╞
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         ((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_70130h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:         (("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:         ((:         ((:Y U
/
_output_shapes
:         ((
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:         ((
"
_user_specified_name
inputs_1
Т
Э
(__inference_conv2d_1_layer_call_fn_71992

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_70142w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         ((: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         ((
 
_user_specified_nameinputs:%!

_user_specified_name71986:%!

_user_specified_name71988
│
c
G__inference_activation_3_layer_call_and_return_conditional_losses_71912

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                           t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                           "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           :i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
│
c
G__inference_activation_1_layer_call_and_return_conditional_losses_69785

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+                            t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+                            "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ш
serving_default╘
;
input_40
serving_default_input_4:0         d
<
input_51
serving_default_input_5:0         ┘;
model_10
StatefulPartitionedCall:0         tensorflow/serving/predict:рХ
╪
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Г
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
layer_with_weights-3
layer-8
layer-9
layer-10
 layer_with_weights-4
 layer-11
!layer_with_weights-5
!layer-12
"layer-13
#layer_with_weights-6
#layer-14
$layer_with_weights-7
$layer-15
%layer-16
&layer_with_weights-8
&layer-17
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_network
Ъ
-layer-0
.layer_with_weights-0
.layer-1
/layer-2
0layer-3
1layer-4
2layer_with_weights-1
2layer-5
3layer-6
4layer_with_weights-2
4layer-7
5layer-8
6layer_with_weights-3
6layer-9
7layer-10
8layer_with_weights-4
8layer-11
9layer-12
:layer-13
;layer_with_weights-5
;layer-14
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
B	optimizer"
_tf_keras_network
╞
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17
U18
V19
W20
X21
Y22
Z23
[24
\25
]26
^27
_28
`29
a30
b31
c32
d33
e34
f35
g36
h37"
trackable_list_wrapper
ж
C0
D1
E2
F3
I4
J5
K6
L7
O8
P9
Q10
R11
U12
V13
W14
X15
[16
\17"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┴
ntrace_0
otrace_12К
'__inference_model_2_layer_call_fn_70917
'__inference_model_2_layer_call_fn_70999╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zntrace_0zotrace_1
ў
ptrace_0
qtrace_12└
B__inference_model_2_layer_call_and_return_conditional_losses_70687
B__inference_model_2_layer_call_and_return_conditional_losses_70835╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zptrace_0zqtrace_1
╘B╤
 __inference__wrapped_model_69279input_4input_5"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
┤
r
_variables
s_iterations
t_learning_rate
u_index_dict
v_velocities
w
_momentums
x_average_gradients
y_update_step_xla"
experimentalOptimizer
,
zserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
щ
Аtrace_02╩
-__inference_concatenate_1_layer_call_fn_71158Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
Д
Бtrace_02х
H__inference_concatenate_1_layer_call_and_return_conditional_losses_71165Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zБtrace_0
"
_tf_keras_input_layer
┴
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
ё
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
	Оaxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance"
_tf_keras_layer
л
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+а&call_and_return_all_conditional_losses
б_random_generator"
_tf_keras_layer
л
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses

Ikernel
Jbias
!о_jit_compiled_convolution_op"
_tf_keras_layer
ё
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses
	╡axis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance"
_tf_keras_layer
л
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses"
_tf_keras_layer
л
╝	variables
╜trainable_variables
╛regularization_losses
┐	keras_api
└__call__
+┴&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
┬	variables
├trainable_variables
─regularization_losses
┼	keras_api
╞__call__
+╟&call_and_return_all_conditional_losses

Okernel
Pbias
!╚_jit_compiled_convolution_op"
_tf_keras_layer
ё
╔	variables
╩trainable_variables
╦regularization_losses
╠	keras_api
═__call__
+╬&call_and_return_all_conditional_losses
	╧axis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance"
_tf_keras_layer
л
╨	variables
╤trainable_variables
╥regularization_losses
╙	keras_api
╘__call__
+╒&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
╓	variables
╫trainable_variables
╪regularization_losses
┘	keras_api
┌__call__
+█&call_and_return_all_conditional_losses

Ukernel
Vbias
!▄_jit_compiled_convolution_op"
_tf_keras_layer
ё
▌	variables
▐trainable_variables
▀regularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
	уaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance"
_tf_keras_layer
л
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+я&call_and_return_all_conditional_losses

[kernel
\bias
!Ё_jit_compiled_convolution_op"
_tf_keras_layer
ц
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17
U18
V19
W20
X21
Y22
Z23
[24
\25"
trackable_list_wrapper
ж
C0
D1
E2
F3
I4
J5
K6
L7
O8
P9
Q10
R11
U12
V13
W14
X15
[16
\17"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
┴
Ўtrace_0
ўtrace_12Ж
%__inference_model_layer_call_fn_69980
%__inference_model_layer_call_fn_70037╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0zўtrace_1
ў
°trace_0
∙trace_12╝
@__inference_model_layer_call_and_return_conditional_losses_69845
@__inference_model_layer_call_and_return_conditional_losses_69923╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0z∙trace_1
"
_tf_keras_input_layer
┴
·	variables
√trainable_variables
№regularization_losses
¤	keras_api
■__call__
+ &call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
"
_tf_keras_input_layer
л
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
л
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
ф
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses

_kernel
`bias
!Т_jit_compiled_convolution_op"
_tf_keras_layer
├
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_random_generator"
_tf_keras_layer
ф
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses

akernel
bbias
!а_jit_compiled_convolution_op"
_tf_keras_layer
├
б	variables
вtrainable_variables
гregularization_losses
д	keras_api
е__call__
+ж&call_and_return_all_conditional_losses
з_random_generator"
_tf_keras_layer
ф
и	variables
йtrainable_variables
кregularization_losses
л	keras_api
м__call__
+н&call_and_return_all_conditional_losses

ckernel
dbias
!о_jit_compiled_convolution_op"
_tf_keras_layer
├
п	variables
░trainable_variables
▒regularization_losses
▓	keras_api
│__call__
+┤&call_and_return_all_conditional_losses
╡_random_generator"
_tf_keras_layer
ф
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses

ekernel
fbias
!╝_jit_compiled_convolution_op"
_tf_keras_layer
├
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses
├_random_generator"
_tf_keras_layer
л
─	variables
┼trainable_variables
╞regularization_losses
╟	keras_api
╚__call__
+╔&call_and_return_all_conditional_losses"
_tf_keras_layer
┴
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses

gkernel
hbias"
_tf_keras_layer
v
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╨non_trainable_variables
╤layers
╥metrics
 ╙layer_regularization_losses
╘layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
╧
╒trace_0
╓trace_1
╫trace_2
╪trace_32▄
'__inference_model_1_layer_call_fn_70364
'__inference_model_1_layer_call_fn_70394
'__inference_model_1_layer_call_fn_71195
'__inference_model_1_layer_call_fn_71225╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╒trace_0z╓trace_1z╫trace_2z╪trace_3
╗
┘trace_0
┌trace_1
█trace_2
▄trace_32╚
B__inference_model_1_layer_call_and_return_conditional_losses_70272
B__inference_model_1_layer_call_and_return_conditional_losses_70334
B__inference_model_1_layer_call_and_return_conditional_losses_71317
B__inference_model_1_layer_call_and_return_conditional_losses_71381╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┘trace_0z┌trace_1z█trace_2z▄trace_3
г
▌
_variables
▐_iterations
▀_learning_rate
р_index_dict
с
_momentums
т_velocities
у_update_step_xla"
experimentalOptimizer
 :
╜А22dense/kernel
:А22
dense/bias
(:&А22batch_normalization/gamma
':%А22batch_normalization/beta
0:.А2 (2batch_normalization/moving_mean
4:2А2 (2#batch_normalization/moving_variance
1:/ @2conv2d_transpose/kernel
#:! 2conv2d_transpose/bias
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
3:1 2conv2d_transpose_1/kernel
%:#2conv2d_transpose_1/bias
):'2batch_normalization_2/gamma
(:&2batch_normalization_2/beta
1:/ (2!batch_normalization_2/moving_mean
5:3 (2%batch_normalization_2/moving_variance
3:12conv2d_transpose_2/kernel
%:#2conv2d_transpose_2/bias
):'2batch_normalization_3/gamma
(:&2batch_normalization_3/beta
1:/ (2!batch_normalization_3/moving_mean
5:3 (2%batch_normalization_3/moving_variance
':%2conv2d/kernel
:2conv2d/bias
": 
┘└2dense_1/kernel
:└2dense_1/bias
):'@2conv2d_1/kernel
:@2conv2d_1/bias
*:(@А2conv2d_2/kernel
:А2conv2d_2/bias
+:)АА2conv2d_3/kernel
:А2conv2d_3/bias
+:)АА2conv2d_4/kernel
:А2conv2d_4/bias
!:	Аd2dense_2/kernel
:2dense_2/bias
╢
G0
H1
M2
N3
S4
T5
Y6
Z7
]8
^9
_10
`11
a12
b13
c14
d15
e16
f17
g18
h19"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
0
ф0
х1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
°Bї
'__inference_model_2_layer_call_fn_70917input_4input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
'__inference_model_2_layer_call_fn_70999input_4input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
B__inference_model_2_layer_call_and_return_conditional_losses_70687input_4input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
B__inference_model_2_layer_call_and_return_conditional_losses_70835input_4input_5"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
└
s0
ц1
ч2
ш3
щ4
ъ5
ы6
ь7
э8
ю9
я10
Ё11
ё12
Є13
є14
Ї15
ї16
Ў17
ў18"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
╕
ц0
ч1
ш2
щ3
ъ4
ы5
ь6
э7
ю8
я9
Ё10
ё11
Є12
є13
Ї14
ї15
Ў16
ў17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
╤B╬
#__inference_signature_wrapper_71150input_4input_5"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
-__inference_concatenate_1_layer_call_fn_71158inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
H__inference_concatenate_1_layer_call_and_return_conditional_losses_71165inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
°non_trainable_variables
∙layers
·metrics
 √layer_regularization_losses
№layer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
с
¤trace_02┬
%__inference_dense_layer_call_fn_71390Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z¤trace_0
№
■trace_02▌
@__inference_dense_layer_call_and_return_conditional_losses_71400Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
<
E0
F1
G2
H3"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
 non_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
▌
Дtrace_0
Еtrace_12в
3__inference_batch_normalization_layer_call_fn_71413
3__inference_batch_normalization_layer_call_fn_71426╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zДtrace_0zЕtrace_1
У
Жtrace_0
Зtrace_12╪
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71460
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71480╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0zЗtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
ц
Нtrace_02╟
*__inference_activation_layer_call_fn_71485Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
Б
Оtrace_02т
E__inference_activation_layer_call_and_return_conditional_losses_71490Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zОtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
у
Фtrace_02─
'__inference_reshape_layer_call_fn_71495Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
■
Хtrace_02▀
B__inference_reshape_layer_call_and_return_conditional_losses_71509Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zХtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
╣
Ыtrace_0
Ьtrace_12■
'__inference_dropout_layer_call_fn_71514
'__inference_dropout_layer_call_fn_71519й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0zЬtrace_1
я
Эtrace_0
Юtrace_12┤
B__inference_dropout_layer_call_and_return_conditional_losses_71531
B__inference_dropout_layer_call_and_return_conditional_losses_71536й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0zЮtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
щ
дtrace_02╩
-__inference_up_sampling2d_layer_call_fn_71541Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
Д
еtrace_02х
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_71553Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zеtrace_0
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
ь
лtrace_02═
0__inference_conv2d_transpose_layer_call_fn_71562Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zлtrace_0
З
мtrace_02ш
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_71595Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zмtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
K0
L1
M2
N3"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
с
▓trace_0
│trace_12ж
5__inference_batch_normalization_1_layer_call_fn_71608
5__inference_batch_normalization_1_layer_call_fn_71621╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▓trace_0z│trace_1
Ч
┤trace_0
╡trace_12▄
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71639
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71657╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┤trace_0z╡trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╢non_trainable_variables
╖layers
╕metrics
 ╣layer_regularization_losses
║layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
ш
╗trace_02╔
,__inference_activation_1_layer_call_fn_71662Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0
Г
╝trace_02ф
G__inference_activation_1_layer_call_and_return_conditional_losses_71667Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╜non_trainable_variables
╛layers
┐metrics
 └layer_regularization_losses
┴layer_metrics
╝	variables
╜trainable_variables
╛regularization_losses
└__call__
+┴&call_and_return_all_conditional_losses
'┴"call_and_return_conditional_losses"
_generic_user_object
ы
┬trace_02╠
/__inference_up_sampling2d_1_layer_call_fn_71672Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
Ж
├trace_02ч
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_71684Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z├trace_0
.
O0
P1"
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
─non_trainable_variables
┼layers
╞metrics
 ╟layer_regularization_losses
╚layer_metrics
┬	variables
├trainable_variables
─regularization_losses
╞__call__
+╟&call_and_return_all_conditional_losses
'╟"call_and_return_conditional_losses"
_generic_user_object
ю
╔trace_02╧
2__inference_conv2d_transpose_1_layer_call_fn_71693Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0
Й
╩trace_02ъ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_71726Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╩trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
Q0
R1
S2
T3"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╦non_trainable_variables
╠layers
═metrics
 ╬layer_regularization_losses
╧layer_metrics
╔	variables
╩trainable_variables
╦regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
с
╨trace_0
╤trace_12ж
5__inference_batch_normalization_2_layer_call_fn_71739
5__inference_batch_normalization_2_layer_call_fn_71752╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╨trace_0z╤trace_1
Ч
╥trace_0
╙trace_12▄
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71770
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71788╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╥trace_0z╙trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
╨	variables
╤trainable_variables
╥regularization_losses
╘__call__
+╒&call_and_return_all_conditional_losses
'╒"call_and_return_conditional_losses"
_generic_user_object
ш
┘trace_02╔
,__inference_activation_2_layer_call_fn_71793Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┘trace_0
Г
┌trace_02ф
G__inference_activation_2_layer_call_and_return_conditional_losses_71798Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0
.
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
█non_trainable_variables
▄layers
▌metrics
 ▐layer_regularization_losses
▀layer_metrics
╓	variables
╫trainable_variables
╪regularization_losses
┌__call__
+█&call_and_return_all_conditional_losses
'█"call_and_return_conditional_losses"
_generic_user_object
ю
рtrace_02╧
2__inference_conv2d_transpose_2_layer_call_fn_71807Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zрtrace_0
Й
сtrace_02ъ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_71840Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zсtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
W0
X1
Y2
Z3"
trackable_list_wrapper
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
тnon_trainable_variables
уlayers
фmetrics
 хlayer_regularization_losses
цlayer_metrics
▌	variables
▐trainable_variables
▀regularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
с
чtrace_0
шtrace_12ж
5__inference_batch_normalization_3_layer_call_fn_71853
5__inference_batch_normalization_3_layer_call_fn_71866╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zчtrace_0zшtrace_1
Ч
щtrace_0
ъtrace_12▄
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71884
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71902╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zщtrace_0zъtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
яlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
ш
Ёtrace_02╔
,__inference_activation_3_layer_call_fn_71907Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
Г
ёtrace_02ф
G__inference_activation_3_layer_call_and_return_conditional_losses_71912Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zёtrace_0
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
т
ўtrace_02├
&__inference_conv2d_layer_call_fn_71921Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zўtrace_0
¤
°trace_02▐
A__inference_conv2d_layer_call_and_return_conditional_losses_71932Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
X
G0
H1
M2
N3
S4
T5
Y6
Z7"
trackable_list_wrapper
ж
0
1
2
3
4
5
6
7
8
9
10
 11
!12
"13
#14
$15
%16
&17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
%__inference_model_layer_call_fn_69980input_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
%__inference_model_layer_call_fn_70037input_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
@__inference_model_layer_call_and_return_conditional_losses_69845input_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ИBЕ
@__inference_model_layer_call_and_return_conditional_losses_69923input_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
·	variables
√trainable_variables
№regularization_losses
■__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
у
■trace_02─
'__inference_dense_1_layer_call_fn_71941Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z■trace_0
■
 trace_02▀
B__inference_dense_1_layer_call_and_return_conditional_losses_71951Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
х
Еtrace_02╞
)__inference_reshape_1_layer_call_fn_71956Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЕtrace_0
А
Жtrace_02с
D__inference_reshape_1_layer_call_and_return_conditional_losses_71970Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
ч
Мtrace_02╚
+__inference_concatenate_layer_call_fn_71976Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
В
Нtrace_02у
F__inference_concatenate_layer_call_and_return_conditional_losses_71983Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
ф
Уtrace_02┼
(__inference_conv2d_1_layer_call_fn_71992Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
 
Фtrace_02р
C__inference_conv2d_1_layer_call_and_return_conditional_losses_72003Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
╜
Ъtrace_0
Ыtrace_12В
)__inference_dropout_1_layer_call_fn_72008
)__inference_dropout_1_layer_call_fn_72013й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0zЫtrace_1
є
Ьtrace_0
Эtrace_12╕
D__inference_dropout_1_layer_call_and_return_conditional_losses_72025
D__inference_dropout_1_layer_call_and_return_conditional_losses_72030й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЬtrace_0zЭtrace_1
"
_generic_user_object
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Юnon_trainable_variables
Яlayers
аmetrics
 бlayer_regularization_losses
вlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
ф
гtrace_02┼
(__inference_conv2d_2_layer_call_fn_72039Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zгtrace_0
 
дtrace_02р
C__inference_conv2d_2_layer_call_and_return_conditional_losses_72050Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zдtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
б	variables
вtrainable_variables
гregularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
╜
кtrace_0
лtrace_12В
)__inference_dropout_2_layer_call_fn_72055
)__inference_dropout_2_layer_call_fn_72060й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zкtrace_0zлtrace_1
є
мtrace_0
нtrace_12╕
D__inference_dropout_2_layer_call_and_return_conditional_losses_72072
D__inference_dropout_2_layer_call_and_return_conditional_losses_72077й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zмtrace_0zнtrace_1
"
_generic_user_object
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
и	variables
йtrainable_variables
кregularization_losses
м__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
ф
│trace_02┼
(__inference_conv2d_3_layer_call_fn_72086Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z│trace_0
 
┤trace_02р
C__inference_conv2d_3_layer_call_and_return_conditional_losses_72097Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┤trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
п	variables
░trainable_variables
▒regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
╜
║trace_0
╗trace_12В
)__inference_dropout_3_layer_call_fn_72102
)__inference_dropout_3_layer_call_fn_72107й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0z╗trace_1
є
╝trace_0
╜trace_12╕
D__inference_dropout_3_layer_call_and_return_conditional_losses_72119
D__inference_dropout_3_layer_call_and_return_conditional_losses_72124й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╝trace_0z╜trace_1
"
_generic_user_object
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╛non_trainable_variables
┐layers
└metrics
 ┴layer_regularization_losses
┬layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
ф
├trace_02┼
(__inference_conv2d_4_layer_call_fn_72133Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z├trace_0
 
─trace_02р
C__inference_conv2d_4_layer_call_and_return_conditional_losses_72144Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z─trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
╜
╩trace_0
╦trace_12В
)__inference_dropout_4_layer_call_fn_72149
)__inference_dropout_4_layer_call_fn_72154й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╩trace_0z╦trace_1
є
╠trace_0
═trace_12╕
D__inference_dropout_4_layer_call_and_return_conditional_losses_72166
D__inference_dropout_4_layer_call_and_return_conditional_losses_72171й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╠trace_0z═trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
─	variables
┼trainable_variables
╞regularization_losses
╚__call__
+╔&call_and_return_all_conditional_losses
'╔"call_and_return_conditional_losses"
_generic_user_object
у
╙trace_02─
'__inference_flatten_layer_call_fn_72176Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╙trace_0
■
╘trace_02▀
B__inference_flatten_layer_call_and_return_conditional_losses_72182Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses"
_generic_user_object
у
┌trace_02─
'__inference_dense_2_layer_call_fn_72191Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0
■
█trace_02▀
B__inference_dense_2_layer_call_and_return_conditional_losses_72202Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
v
]0
^1
_2
`3
a4
b5
c6
d7
e8
f9
g10
h11"
trackable_list_wrapper
О
-0
.1
/2
03
14
25
36
47
58
69
710
811
912
:13
;14"
trackable_list_wrapper
0
▄0
▌1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
°Bї
'__inference_model_1_layer_call_fn_70364input_2input_3"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
'__inference_model_1_layer_call_fn_70394input_2input_3"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
'__inference_model_1_layer_call_fn_71195inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
'__inference_model_1_layer_call_fn_71225inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
B__inference_model_1_layer_call_and_return_conditional_losses_70272input_2input_3"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
УBР
B__inference_model_1_layer_call_and_return_conditional_losses_70334input_2input_3"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
B__inference_model_1_layer_call_and_return_conditional_losses_71317inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
B__inference_model_1_layer_call_and_return_conditional_losses_71381inputs_0inputs_1"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ў
▐0
▐1
▀2
р3
с4
т5
у6
ф7
х8
ц9
ч10
ш11
щ12
ъ13
ы14
ь15
э16
ю17
я18
Ё19
ё20
Є21
є22
Ї23
ї24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
▐0
р1
т2
ф3
ц4
ш5
ъ6
ь7
ю8
Ё9
Є10
Ї11"
trackable_list_wrapper
В
▀0
с1
у2
х3
ч4
щ5
ы6
э7
я8
ё9
є10
ї11"
trackable_list_wrapper
╡2▓п
ж▓в
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
R
Ў	variables
ў	keras_api

°total

∙count"
_tf_keras_metric
c
·	variables
√	keras_api

№total

¤count
■
_fn_kwargs"
_tf_keras_metric
/:-
╜А22RMSprop/velocity/dense/kernel
(:&А22RMSprop/velocity/dense/bias
7:5А22*RMSprop/velocity/batch_normalization/gamma
6:4А22)RMSprop/velocity/batch_normalization/beta
@:> @2(RMSprop/velocity/conv2d_transpose/kernel
2:0 2&RMSprop/velocity/conv2d_transpose/bias
8:6 2,RMSprop/velocity/batch_normalization_1/gamma
7:5 2+RMSprop/velocity/batch_normalization_1/beta
B:@ 2*RMSprop/velocity/conv2d_transpose_1/kernel
4:22(RMSprop/velocity/conv2d_transpose_1/bias
8:62,RMSprop/velocity/batch_normalization_2/gamma
7:52+RMSprop/velocity/batch_normalization_2/beta
B:@2*RMSprop/velocity/conv2d_transpose_2/kernel
4:22(RMSprop/velocity/conv2d_transpose_2/bias
8:62,RMSprop/velocity/batch_normalization_3/gamma
7:52+RMSprop/velocity/batch_normalization_3/beta
6:42RMSprop/velocity/conv2d/kernel
(:&2RMSprop/velocity/conv2d/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╧B╠
%__inference_dense_layer_call_fn_71390inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ъBч
@__inference_dense_layer_call_and_return_conditional_losses_71400inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
3__inference_batch_normalization_layer_call_fn_71413inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
3__inference_batch_normalization_layer_call_fn_71426inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71460inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71480inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╘B╤
*__inference_activation_layer_call_fn_71485inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_activation_layer_call_and_return_conditional_losses_71490inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_reshape_layer_call_fn_71495inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_reshape_layer_call_and_return_conditional_losses_71509inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
тB▀
'__inference_dropout_layer_call_fn_71514inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
тB▀
'__inference_dropout_layer_call_fn_71519inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
B__inference_dropout_layer_call_and_return_conditional_losses_71531inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
B__inference_dropout_layer_call_and_return_conditional_losses_71536inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╫B╘
-__inference_up_sampling2d_layer_call_fn_71541inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЄBя
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_71553inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┌B╫
0__inference_conv2d_transpose_layer_call_fn_71562inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_71595inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
5__inference_batch_normalization_1_layer_call_fn_71608inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
5__inference_batch_normalization_1_layer_call_fn_71621inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71639inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71657inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╓B╙
,__inference_activation_1_layer_call_fn_71662inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_activation_1_layer_call_and_return_conditional_losses_71667inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
┘B╓
/__inference_up_sampling2d_1_layer_call_fn_71672inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_71684inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
2__inference_conv2d_transpose_1_layer_call_fn_71693inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_71726inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
5__inference_batch_normalization_2_layer_call_fn_71739inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
5__inference_batch_normalization_2_layer_call_fn_71752inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71770inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71788inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╓B╙
,__inference_activation_2_layer_call_fn_71793inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_activation_2_layer_call_and_return_conditional_losses_71798inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
2__inference_conv2d_transpose_2_layer_call_fn_71807inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_71840inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
5__inference_batch_normalization_3_layer_call_fn_71853inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
5__inference_batch_normalization_3_layer_call_fn_71866inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71884inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЧBФ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71902inputs"╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╓B╙
,__inference_activation_3_layer_call_fn_71907inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ёBю
G__inference_activation_3_layer_call_and_return_conditional_losses_71912inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╨B═
&__inference_conv2d_layer_call_fn_71921inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ыBш
A__inference_conv2d_layer_call_and_return_conditional_losses_71932inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_dense_1_layer_call_fn_71941inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_1_layer_call_and_return_conditional_losses_71951inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╙B╨
)__inference_reshape_1_layer_call_fn_71956inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_reshape_1_layer_call_and_return_conditional_losses_71970inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
сB▐
+__inference_concatenate_layer_call_fn_71976inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
F__inference_concatenate_layer_call_and_return_conditional_losses_71983inputs_0inputs_1"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_conv2d_1_layer_call_fn_71992inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_conv2d_1_layer_call_and_return_conditional_losses_72003inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
)__inference_dropout_1_layer_call_fn_72008inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_1_layer_call_fn_72013inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_1_layer_call_and_return_conditional_losses_72025inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_1_layer_call_and_return_conditional_losses_72030inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_conv2d_2_layer_call_fn_72039inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_conv2d_2_layer_call_and_return_conditional_losses_72050inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
)__inference_dropout_2_layer_call_fn_72055inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_2_layer_call_fn_72060inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_2_layer_call_and_return_conditional_losses_72072inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_2_layer_call_and_return_conditional_losses_72077inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_conv2d_3_layer_call_fn_72086inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_72097inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
)__inference_dropout_3_layer_call_fn_72102inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_3_layer_call_fn_72107inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_3_layer_call_and_return_conditional_losses_72119inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_3_layer_call_and_return_conditional_losses_72124inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
e0
f1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╥B╧
(__inference_conv2d_4_layer_call_fn_72133inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_72144inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
фBс
)__inference_dropout_4_layer_call_fn_72149inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
фBс
)__inference_dropout_4_layer_call_fn_72154inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_4_layer_call_and_return_conditional_losses_72166inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
D__inference_dropout_4_layer_call_and_return_conditional_losses_72171inputs"й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_flatten_layer_call_fn_72176inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_flatten_layer_call_and_return_conditional_losses_72182inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╤B╬
'__inference_dense_2_layer_call_fn_72191inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_2_layer_call_and_return_conditional_losses_72202inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
 	variables
А	keras_api

Бtotal

Вcount"
_tf_keras_metric
c
Г	variables
Д	keras_api

Еtotal

Жcount
З
_fn_kwargs"
_tf_keras_metric
':%
┘└2Adam/m/dense_1/kernel
':%
┘└2Adam/v/dense_1/kernel
 :└2Adam/m/dense_1/bias
 :└2Adam/v/dense_1/bias
.:,@2Adam/m/conv2d_1/kernel
.:,@2Adam/v/conv2d_1/kernel
 :@2Adam/m/conv2d_1/bias
 :@2Adam/v/conv2d_1/bias
/:-@А2Adam/m/conv2d_2/kernel
/:-@А2Adam/v/conv2d_2/kernel
!:А2Adam/m/conv2d_2/bias
!:А2Adam/v/conv2d_2/bias
0:.АА2Adam/m/conv2d_3/kernel
0:.АА2Adam/v/conv2d_3/kernel
!:А2Adam/m/conv2d_3/bias
!:А2Adam/v/conv2d_3/bias
0:.АА2Adam/m/conv2d_4/kernel
0:.АА2Adam/v/conv2d_4/kernel
!:А2Adam/m/conv2d_4/bias
!:А2Adam/v/conv2d_4/bias
&:$	Аd2Adam/m/dense_2/kernel
&:$	Аd2Adam/v/dense_2/kernel
:2Adam/m/dense_2/bias
:2Adam/v/dense_2/bias
0
°0
∙1"
trackable_list_wrapper
.
Ў	variables"
_generic_user_object
:  (2total
:  (2count
0
№0
¤1"
trackable_list_wrapper
.
·	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Б0
В1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
:  (2total
:  (2count
0
Е0
Ж1"
trackable_list_wrapper
.
Г	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper█
 __inference__wrapped_model_69279╢&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghYвV
OвL
JЪG
!К
input_4         d
"К
input_5         ┘
к "1к.
,
model_1!К
model_1         ▀
G__inference_activation_1_layer_call_and_return_conditional_losses_71667УIвF
?в<
:К7
inputs+                            
к "FвC
<К9
tensor_0+                            
Ъ ╣
,__inference_activation_1_layer_call_fn_71662ИIвF
?в<
:К7
inputs+                            
к ";К8
unknown+                            ▀
G__inference_activation_2_layer_call_and_return_conditional_losses_71798УIвF
?в<
:К7
inputs+                           
к "FвC
<К9
tensor_0+                           
Ъ ╣
,__inference_activation_2_layer_call_fn_71793ИIвF
?в<
:К7
inputs+                           
к ";К8
unknown+                           ▀
G__inference_activation_3_layer_call_and_return_conditional_losses_71912УIвF
?в<
:К7
inputs+                           
к "FвC
<К9
tensor_0+                           
Ъ ╣
,__inference_activation_3_layer_call_fn_71907ИIвF
?в<
:К7
inputs+                           
к ";К8
unknown+                           к
E__inference_activation_layer_call_and_return_conditional_losses_71490a0в-
&в#
!К
inputs         А2
к "-в*
#К 
tensor_0         А2
Ъ Д
*__inference_activation_layer_call_fn_71485V0в-
&в#
!К
inputs         А2
к ""К
unknown         А2Ў
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71639бKLMNQвN
GвD
:К7
inputs+                            
p

 
к "FвC
<К9
tensor_0+                            
Ъ Ў
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_71657бKLMNQвN
GвD
:К7
inputs+                            
p 

 
к "FвC
<К9
tensor_0+                            
Ъ ╨
5__inference_batch_normalization_1_layer_call_fn_71608ЦKLMNQвN
GвD
:К7
inputs+                            
p

 
к ";К8
unknown+                            ╨
5__inference_batch_normalization_1_layer_call_fn_71621ЦKLMNQвN
GвD
:К7
inputs+                            
p 

 
к ";К8
unknown+                            Ў
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71770бQRSTQвN
GвD
:К7
inputs+                           
p

 
к "FвC
<К9
tensor_0+                           
Ъ Ў
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_71788бQRSTQвN
GвD
:К7
inputs+                           
p 

 
к "FвC
<К9
tensor_0+                           
Ъ ╨
5__inference_batch_normalization_2_layer_call_fn_71739ЦQRSTQвN
GвD
:К7
inputs+                           
p

 
к ";К8
unknown+                           ╨
5__inference_batch_normalization_2_layer_call_fn_71752ЦQRSTQвN
GвD
:К7
inputs+                           
p 

 
к ";К8
unknown+                           Ў
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71884бWXYZQвN
GвD
:К7
inputs+                           
p

 
к "FвC
<К9
tensor_0+                           
Ъ Ў
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_71902бWXYZQвN
GвD
:К7
inputs+                           
p 

 
к "FвC
<К9
tensor_0+                           
Ъ ╨
5__inference_batch_normalization_3_layer_call_fn_71853ЦWXYZQвN
GвD
:К7
inputs+                           
p

 
к ";К8
unknown+                           ╨
5__inference_batch_normalization_3_layer_call_fn_71866ЦWXYZQвN
GвD
:К7
inputs+                           
p 

 
к ";К8
unknown+                           ┴
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71460oGHEF8в5
.в+
!К
inputs         А2
p

 
к "-в*
#К 
tensor_0         А2
Ъ ┴
N__inference_batch_normalization_layer_call_and_return_conditional_losses_71480oHEGF8в5
.в+
!К
inputs         А2
p 

 
к "-в*
#К 
tensor_0         А2
Ъ Ы
3__inference_batch_normalization_layer_call_fn_71413dGHEF8в5
.в+
!К
inputs         А2
p

 
к ""К
unknown         А2Ы
3__inference_batch_normalization_layer_call_fn_71426dHEGF8в5
.в+
!К
inputs         А2
p 

 
к ""К
unknown         А2┘
H__inference_concatenate_1_layer_call_and_return_conditional_losses_71165М[вX
QвN
LЪI
"К
inputs_0         d
#К 
inputs_1         ┘
к "-в*
#К 
tensor_0         ╜
Ъ │
-__inference_concatenate_1_layer_call_fn_71158Б[вX
QвN
LЪI
"К
inputs_0         d
#К 
inputs_1         ┘
к ""К
unknown         ╜э
F__inference_concatenate_layer_call_and_return_conditional_losses_71983вjвg
`в]
[ЪX
*К'
inputs_0         ((
*К'
inputs_1         ((
к "4в1
*К'
tensor_0         ((
Ъ ╟
+__inference_concatenate_layer_call_fn_71976Чjвg
`в]
[ЪX
*К'
inputs_0         ((
*К'
inputs_1         ((
к ")К&
unknown         ((║
C__inference_conv2d_1_layer_call_and_return_conditional_losses_72003s_`7в4
-в*
(К%
inputs         ((
к "4в1
*К'
tensor_0         @
Ъ Ф
(__inference_conv2d_1_layer_call_fn_71992h_`7в4
-в*
(К%
inputs         ((
к ")К&
unknown         @╗
C__inference_conv2d_2_layer_call_and_return_conditional_losses_72050tab7в4
-в*
(К%
inputs         @
к "5в2
+К(
tensor_0         

А
Ъ Х
(__inference_conv2d_2_layer_call_fn_72039iab7в4
-в*
(К%
inputs         @
к "*К'
unknown         

А╝
C__inference_conv2d_3_layer_call_and_return_conditional_losses_72097ucd8в5
.в+
)К&
inputs         

А
к "5в2
+К(
tensor_0         А
Ъ Ц
(__inference_conv2d_3_layer_call_fn_72086jcd8в5
.в+
)К&
inputs         

А
к "*К'
unknown         А╝
C__inference_conv2d_4_layer_call_and_return_conditional_losses_72144uef8в5
.в+
)К&
inputs         А
к "5в2
+К(
tensor_0         А
Ъ Ц
(__inference_conv2d_4_layer_call_fn_72133jef8в5
.в+
)К&
inputs         А
к "*К'
unknown         А▌
A__inference_conv2d_layer_call_and_return_conditional_losses_71932Ч[\IвF
?в<
:К7
inputs+                           
к "FвC
<К9
tensor_0+                           
Ъ ╖
&__inference_conv2d_layer_call_fn_71921М[\IвF
?в<
:К7
inputs+                           
к ";К8
unknown+                           щ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_71726ЧOPIвF
?в<
:К7
inputs+                            
к "FвC
<К9
tensor_0+                           
Ъ ├
2__inference_conv2d_transpose_1_layer_call_fn_71693МOPIвF
?в<
:К7
inputs+                            
к ";К8
unknown+                           щ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_71840ЧUVIвF
?в<
:К7
inputs+                           
к "FвC
<К9
tensor_0+                           
Ъ ├
2__inference_conv2d_transpose_2_layer_call_fn_71807МUVIвF
?в<
:К7
inputs+                           
к ";К8
unknown+                           ч
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_71595ЧIJIвF
?в<
:К7
inputs+                           @
к "FвC
<К9
tensor_0+                            
Ъ ┴
0__inference_conv2d_transpose_layer_call_fn_71562МIJIвF
?в<
:К7
inputs+                           @
к ";К8
unknown+                            л
B__inference_dense_1_layer_call_and_return_conditional_losses_71951e]^0в-
&в#
!К
inputs         ┘
к "-в*
#К 
tensor_0         └
Ъ Е
'__inference_dense_1_layer_call_fn_71941Z]^0в-
&в#
!К
inputs         ┘
к ""К
unknown         └к
B__inference_dense_2_layer_call_and_return_conditional_losses_72202dgh0в-
&в#
!К
inputs         Аd
к ",в)
"К
tensor_0         
Ъ Д
'__inference_dense_2_layer_call_fn_72191Ygh0в-
&в#
!К
inputs         Аd
к "!К
unknown         й
@__inference_dense_layer_call_and_return_conditional_losses_71400eCD0в-
&в#
!К
inputs         ╜
к "-в*
#К 
tensor_0         А2
Ъ Г
%__inference_dense_layer_call_fn_71390ZCD0в-
&в#
!К
inputs         ╜
к ""К
unknown         А2╗
D__inference_dropout_1_layer_call_and_return_conditional_losses_72025s;в8
1в.
(К%
inputs         @
p
к "4в1
*К'
tensor_0         @
Ъ ╗
D__inference_dropout_1_layer_call_and_return_conditional_losses_72030s;в8
1в.
(К%
inputs         @
p 
к "4в1
*К'
tensor_0         @
Ъ Х
)__inference_dropout_1_layer_call_fn_72008h;в8
1в.
(К%
inputs         @
p
к ")К&
unknown         @Х
)__inference_dropout_1_layer_call_fn_72013h;в8
1в.
(К%
inputs         @
p 
к ")К&
unknown         @╜
D__inference_dropout_2_layer_call_and_return_conditional_losses_72072u<в9
2в/
)К&
inputs         

А
p
к "5в2
+К(
tensor_0         

А
Ъ ╜
D__inference_dropout_2_layer_call_and_return_conditional_losses_72077u<в9
2в/
)К&
inputs         

А
p 
к "5в2
+К(
tensor_0         

А
Ъ Ч
)__inference_dropout_2_layer_call_fn_72055j<в9
2в/
)К&
inputs         

А
p
к "*К'
unknown         

АЧ
)__inference_dropout_2_layer_call_fn_72060j<в9
2в/
)К&
inputs         

А
p 
к "*К'
unknown         

А╜
D__inference_dropout_3_layer_call_and_return_conditional_losses_72119u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ ╜
D__inference_dropout_3_layer_call_and_return_conditional_losses_72124u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ Ч
)__inference_dropout_3_layer_call_fn_72102j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         АЧ
)__inference_dropout_3_layer_call_fn_72107j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         А╜
D__inference_dropout_4_layer_call_and_return_conditional_losses_72166u<в9
2в/
)К&
inputs         А
p
к "5в2
+К(
tensor_0         А
Ъ ╜
D__inference_dropout_4_layer_call_and_return_conditional_losses_72171u<в9
2в/
)К&
inputs         А
p 
к "5в2
+К(
tensor_0         А
Ъ Ч
)__inference_dropout_4_layer_call_fn_72149j<в9
2в/
)К&
inputs         А
p
к "*К'
unknown         АЧ
)__inference_dropout_4_layer_call_fn_72154j<в9
2в/
)К&
inputs         А
p 
к "*К'
unknown         А╣
B__inference_dropout_layer_call_and_return_conditional_losses_71531s;в8
1в.
(К%
inputs         

@
p
к "4в1
*К'
tensor_0         

@
Ъ ╣
B__inference_dropout_layer_call_and_return_conditional_losses_71536s;в8
1в.
(К%
inputs         

@
p 
к "4в1
*К'
tensor_0         

@
Ъ У
'__inference_dropout_layer_call_fn_71514h;в8
1в.
(К%
inputs         

@
p
к ")К&
unknown         

@У
'__inference_dropout_layer_call_fn_71519h;в8
1в.
(К%
inputs         

@
p 
к ")К&
unknown         

@п
B__inference_flatten_layer_call_and_return_conditional_losses_72182i8в5
.в+
)К&
inputs         А
к "-в*
#К 
tensor_0         Аd
Ъ Й
'__inference_flatten_layer_call_fn_72176^8в5
.в+
)К&
inputs         А
к ""К
unknown         Аdю
B__inference_model_1_layer_call_and_return_conditional_losses_70272з]^_`abcdefghiвf
_в\
RЪO
)К&
input_2         ((
"К
input_3         ┘
p

 
к ",в)
"К
tensor_0         
Ъ ю
B__inference_model_1_layer_call_and_return_conditional_losses_70334з]^_`abcdefghiвf
_в\
RЪO
)К&
input_2         ((
"К
input_3         ┘
p 

 
к ",в)
"К
tensor_0         
Ъ В
B__inference_model_1_layer_call_and_return_conditional_losses_71317╗]^_`abcdefgh}вz
sвp
fЪc
<К9
inputs_0+                           
#К 
inputs_1         ┘
p

 
к ",в)
"К
tensor_0         
Ъ В
B__inference_model_1_layer_call_and_return_conditional_losses_71381╗]^_`abcdefgh}вz
sвp
fЪc
<К9
inputs_0+                           
#К 
inputs_1         ┘
p 

 
к ",в)
"К
tensor_0         
Ъ ╚
'__inference_model_1_layer_call_fn_70364Ь]^_`abcdefghiвf
_в\
RЪO
)К&
input_2         ((
"К
input_3         ┘
p

 
к "!К
unknown         ╚
'__inference_model_1_layer_call_fn_70394Ь]^_`abcdefghiвf
_в\
RЪO
)К&
input_2         ((
"К
input_3         ┘
p 

 
к "!К
unknown         ▄
'__inference_model_1_layer_call_fn_71195░]^_`abcdefgh}вz
sвp
fЪc
<К9
inputs_0+                           
#К 
inputs_1         ┘
p

 
к "!К
unknown         ▄
'__inference_model_1_layer_call_fn_71225░]^_`abcdefgh}вz
sвp
fЪc
<К9
inputs_0+                           
#К 
inputs_1         ┘
p 

 
к "!К
unknown         А
B__inference_model_2_layer_call_and_return_conditional_losses_70687╣&CDGHEFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaв^
WвT
JЪG
!К
input_4         d
"К
input_5         ┘
p

 
к ",в)
"К
tensor_0         
Ъ А
B__inference_model_2_layer_call_and_return_conditional_losses_70835╣&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaв^
WвT
JЪG
!К
input_4         d
"К
input_5         ┘
p 

 
к ",в)
"К
tensor_0         
Ъ ┌
'__inference_model_2_layer_call_fn_70917о&CDGHEFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaв^
WвT
JЪG
!К
input_4         d
"К
input_5         ┘
p

 
к "!К
unknown         ┌
'__inference_model_2_layer_call_fn_70999о&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaв^
WвT
JЪG
!К
input_4         d
"К
input_5         ┘
p 

 
к "!К
unknown         ф
@__inference_model_layer_call_and_return_conditional_losses_69845ЯCDGHEFIJKLMNOPQRSTUVWXYZ[\9в6
/в,
"К
input_1         ╜
p

 
к "FвC
<К9
tensor_0+                           
Ъ ф
@__inference_model_layer_call_and_return_conditional_losses_69923ЯCDHEGFIJKLMNOPQRSTUVWXYZ[\9в6
/в,
"К
input_1         ╜
p 

 
к "FвC
<К9
tensor_0+                           
Ъ ╛
%__inference_model_layer_call_fn_69980ФCDGHEFIJKLMNOPQRSTUVWXYZ[\9в6
/в,
"К
input_1         ╜
p

 
к ";К8
unknown+                           ╛
%__inference_model_layer_call_fn_70037ФCDHEGFIJKLMNOPQRSTUVWXYZ[\9в6
/в,
"К
input_1         ╜
p 

 
к ";К8
unknown+                           ░
D__inference_reshape_1_layer_call_and_return_conditional_losses_71970h0в-
&в#
!К
inputs         └
к "4в1
*К'
tensor_0         ((
Ъ К
)__inference_reshape_1_layer_call_fn_71956]0в-
&в#
!К
inputs         └
к ")К&
unknown         ((о
B__inference_reshape_layer_call_and_return_conditional_losses_71509h0в-
&в#
!К
inputs         А2
к "4в1
*К'
tensor_0         

@
Ъ И
'__inference_reshape_layer_call_fn_71495]0в-
&в#
!К
inputs         А2
к ")К&
unknown         

@я
#__inference_signature_wrapper_71150╟&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghjвg
в 
`к]
,
input_4!К
input_4         d
-
input_5"К
input_5         ┘"1к.
,
model_1!К
model_1         Ї
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_71684еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_up_sampling2d_1_layer_call_fn_71672ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Є
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_71553еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╠
-__inference_up_sampling2d_layer_call_fn_71541ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    