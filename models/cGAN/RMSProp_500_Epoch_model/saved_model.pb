к≤&
дЄ
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
ј
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
ы
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
epsilonfloat%Ј—8"&
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
output"out_typeКнout_type"	
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
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
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
 И"serve*2.13.12v2.13.1-0-gf841394b1b78БА 
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
Т
RMSprop/velocity/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/velocity/dense_2/bias
Л
1RMSprop/velocity/dense_2/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_2/bias*
_output_shapes
:*
dtype0
Ы
RMSprop/velocity/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аd*0
shared_name!RMSprop/velocity/dense_2/kernel
Ф
3RMSprop/velocity/dense_2/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_2/kernel*
_output_shapes
:	Аd*
dtype0
Х
RMSprop/velocity/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name RMSprop/velocity/conv2d_4/bias
О
2RMSprop/velocity/conv2d_4/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_4/bias*
_output_shapes	
:А*
dtype0
¶
 RMSprop/velocity/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*1
shared_name" RMSprop/velocity/conv2d_4/kernel
Я
4RMSprop/velocity/conv2d_4/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/conv2d_4/kernel*(
_output_shapes
:АА*
dtype0
Х
RMSprop/velocity/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name RMSprop/velocity/conv2d_3/bias
О
2RMSprop/velocity/conv2d_3/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_3/bias*
_output_shapes	
:А*
dtype0
¶
 RMSprop/velocity/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*1
shared_name" RMSprop/velocity/conv2d_3/kernel
Я
4RMSprop/velocity/conv2d_3/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/conv2d_3/kernel*(
_output_shapes
:АА*
dtype0
Х
RMSprop/velocity/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*/
shared_name RMSprop/velocity/conv2d_2/bias
О
2RMSprop/velocity/conv2d_2/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_2/bias*
_output_shapes	
:А*
dtype0
•
 RMSprop/velocity/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*1
shared_name" RMSprop/velocity/conv2d_2/kernel
Ю
4RMSprop/velocity/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/conv2d_2/kernel*'
_output_shapes
:@А*
dtype0
Ф
RMSprop/velocity/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*/
shared_name RMSprop/velocity/conv2d_1/bias
Н
2RMSprop/velocity/conv2d_1/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/conv2d_1/bias*
_output_shapes
:@*
dtype0
§
 RMSprop/velocity/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" RMSprop/velocity/conv2d_1/kernel
Э
4RMSprop/velocity/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/conv2d_1/kernel*&
_output_shapes
:@*
dtype0
У
RMSprop/velocity/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ј*.
shared_nameRMSprop/velocity/dense_1/bias
М
1RMSprop/velocity/dense_1/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/bias*
_output_shapes	
:ј*
dtype0
Ь
RMSprop/velocity/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ўј*0
shared_name!RMSprop/velocity/dense_1/kernel
Х
3RMSprop/velocity/dense_1/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/kernel* 
_output_shapes
:
ўј*
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
†
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
Ѓ
+RMSprop/velocity/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+RMSprop/velocity/batch_normalization_3/beta
І
?RMSprop/velocity/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp+RMSprop/velocity/batch_normalization_3/beta*
_output_shapes
:*
dtype0
∞
,RMSprop/velocity/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,RMSprop/velocity/batch_normalization_3/gamma
©
@RMSprop/velocity/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp,RMSprop/velocity/batch_normalization_3/gamma*
_output_shapes
:*
dtype0
®
(RMSprop/velocity/conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/velocity/conv2d_transpose_2/bias
°
<RMSprop/velocity/conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOp(RMSprop/velocity/conv2d_transpose_2/bias*
_output_shapes
:*
dtype0
Є
*RMSprop/velocity/conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*RMSprop/velocity/conv2d_transpose_2/kernel
±
>RMSprop/velocity/conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOp*RMSprop/velocity/conv2d_transpose_2/kernel*&
_output_shapes
:*
dtype0
Ѓ
+RMSprop/velocity/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+RMSprop/velocity/batch_normalization_2/beta
І
?RMSprop/velocity/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp+RMSprop/velocity/batch_normalization_2/beta*
_output_shapes
:*
dtype0
∞
,RMSprop/velocity/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,RMSprop/velocity/batch_normalization_2/gamma
©
@RMSprop/velocity/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp,RMSprop/velocity/batch_normalization_2/gamma*
_output_shapes
:*
dtype0
®
(RMSprop/velocity/conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/velocity/conv2d_transpose_1/bias
°
<RMSprop/velocity/conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOp(RMSprop/velocity/conv2d_transpose_1/bias*
_output_shapes
:*
dtype0
Є
*RMSprop/velocity/conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *;
shared_name,*RMSprop/velocity/conv2d_transpose_1/kernel
±
>RMSprop/velocity/conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOp*RMSprop/velocity/conv2d_transpose_1/kernel*&
_output_shapes
: *
dtype0
Ѓ
+RMSprop/velocity/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *<
shared_name-+RMSprop/velocity/batch_normalization_1/beta
І
?RMSprop/velocity/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp+RMSprop/velocity/batch_normalization_1/beta*
_output_shapes
: *
dtype0
∞
,RMSprop/velocity/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,RMSprop/velocity/batch_normalization_1/gamma
©
@RMSprop/velocity/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp,RMSprop/velocity/batch_normalization_1/gamma*
_output_shapes
: *
dtype0
§
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
і
(RMSprop/velocity/conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*9
shared_name*(RMSprop/velocity/conv2d_transpose/kernel
≠
<RMSprop/velocity/conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOp(RMSprop/velocity/conv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
Ђ
)RMSprop/velocity/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*:
shared_name+)RMSprop/velocity/batch_normalization/beta
§
=RMSprop/velocity/batch_normalization/beta/Read/ReadVariableOpReadVariableOp)RMSprop/velocity/batch_normalization/beta*
_output_shapes	
:А2*
dtype0
≠
*RMSprop/velocity/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А2*;
shared_name,*RMSprop/velocity/batch_normalization/gamma
¶
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
љА2*.
shared_nameRMSprop/velocity/dense/kernel
С
1RMSprop/velocity/dense/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense/kernel* 
_output_shapes
:
љА2*
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
shape:ј*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:ј*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ўј*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
ўј*
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
Ґ
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
Ґ
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
Ґ
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
љА2*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
љА2*
dtype0
z
serving_default_input_4Placeholder*'
_output_shapes
:€€€€€€€€€d*
dtype0*
shape:€€€€€€€€€d
|
serving_default_input_5Placeholder*(
_output_shapes
:€€€€€€€€€ў*
dtype0*
shape:€€€€€€€€€ў
•

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4serving_default_input_5dense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/bias*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_68358

NoOpNoOp
∆ш
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Аш
valueхчBсч Bйч
Ѕ
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
м
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
™
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
∞
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
ђ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

Ckernel
Dbias*
№
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
ђ
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses
°_random_generator* 
Ф
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses* 
ѕ
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses

Ikernel
Jbias
!Ѓ_jit_compiled_convolution_op*
№
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
	µaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance*
Ф
ґ	variables
Јtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses* 
Ф
Љ	variables
љtrainable_variables
Њregularization_losses
њ	keras_api
ј__call__
+Ѕ&call_and_return_all_conditional_losses* 
ѕ
¬	variables
√trainable_variables
ƒregularization_losses
≈	keras_api
∆__call__
+«&call_and_return_all_conditional_losses

Okernel
Pbias
!»_jit_compiled_convolution_op*
№
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses
	ѕaxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance*
Ф
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses* 
ѕ
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses

Ukernel
Vbias
!№_jit_compiled_convolution_op*
№
Ё	variables
ёtrainable_variables
яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses
	гaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance*
Ф
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses* 
ѕ
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses

[kernel
\bias
!р_jit_compiled_convolution_op*
 
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
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

цtrace_0
чtrace_1* 

шtrace_0
щtrace_1* 
* 
ђ
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+€&call_and_return_all_conditional_losses

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
ѕ
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses

_kernel
`bias
!Т_jit_compiled_convolution_op*
ђ
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_random_generator* 
ѕ
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses

akernel
bbias
!†_jit_compiled_convolution_op*
ђ
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
І_random_generator* 
ѕ
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses

ckernel
dbias
!Ѓ_jit_compiled_convolution_op*
ђ
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
µ_random_generator* 
ѕ
ґ	variables
Јtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses

ekernel
fbias
!Љ_jit_compiled_convolution_op*
ђ
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√_random_generator* 
Ф
ƒ	variables
≈trainable_variables
∆regularization_losses
«	keras_api
»__call__
+…&call_and_return_all_conditional_losses* 
ђ
 	variables
Ћtrainable_variables
ћregularization_losses
Ќ	keras_api
ќ__call__
+ѕ&call_and_return_all_conditional_losses

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
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
:
’trace_0
÷trace_1
„trace_2
Ўtrace_3* 
:
ўtrace_0
Џtrace_1
џtrace_2
№trace_3* 
°
Ё
_variables
ё_iterations
я_learning_rate
а_index_dict
б_velocities
в
_momentums
г_average_gradients
д_update_step_xla*
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
е0
ж1*
* 
* 
* 
* 
* 
* 
§
s0
з1
и2
й3
к4
л5
м6
н7
о8
п9
р10
с11
т12
у13
ф14
х15
ц16
ч17
ш18*
UO
VARIABLE_VALUEiteration_10optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUElearning_rate_13optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ь
з0
и1
й2
к3
л4
м5
н6
о7
п8
р9
с10
т11
у12
ф13
х14
ц15
ч16
ш17*
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
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

юtrace_0* 

€trace_0* 
 
E0
F1
G2
H3*

E0
F1*
* 
Ю
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses*

Еtrace_0
Жtrace_1* 

Зtrace_0
Иtrace_1* 
* 
* 
* 
* 
Ь
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses* 

Оtrace_0* 

Пtrace_0* 
* 
* 
* 
Ь
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses* 

Хtrace_0* 

Цtrace_0* 
* 
* 
* 
Ь
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses* 

Ьtrace_0
Эtrace_1* 

Юtrace_0
Яtrace_1* 
* 
* 
* 
* 
Ь
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses* 

•trace_0* 

¶trace_0* 

I0
J1*

I0
J1*
* 
Ю
Іnon_trainable_variables
®layers
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses*

ђtrace_0* 

≠trace_0* 
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
Ѓnon_trainable_variables
ѓlayers
∞metrics
 ±layer_regularization_losses
≤layer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses*

≥trace_0
іtrace_1* 

µtrace_0
ґtrace_1* 
* 
* 
* 
* 
Ь
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
ґ	variables
Јtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses* 

Љtrace_0* 

љtrace_0* 
* 
* 
* 
Ь
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
Љ	variables
љtrainable_variables
Њregularization_losses
ј__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses* 

√trace_0* 

ƒtrace_0* 

O0
P1*

O0
P1*
* 
Ю
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
¬	variables
√trainable_variables
ƒregularization_losses
∆__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses*

 trace_0* 

Ћtrace_0* 
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
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses*

—trace_0
“trace_1* 

”trace_0
‘trace_1* 
* 
* 
* 
* 
Ь
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses* 

Џtrace_0* 

џtrace_0* 

U0
V1*

U0
V1*
* 
Ю
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
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
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
Ё	variables
ёtrainable_variables
яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses*

иtrace_0
йtrace_1* 

кtrace_0
лtrace_1* 
* 
* 
* 
* 
Ь
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses* 

сtrace_0* 

тtrace_0* 

[0
\1*

[0
\1*
* 
Ю
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 
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
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses*

€trace_0* 

Аtrace_0* 
* 
* 
* 
Ь
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 
* 
* 
* 
Ь
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses* 

Нtrace_0* 

Оtrace_0* 

_0
`1*
* 
* 
Ю
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses*

Фtrace_0* 

Хtrace_0* 
* 
* 
* 
* 
Ь
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 

Ыtrace_0
Ьtrace_1* 

Эtrace_0
Юtrace_1* 
* 

a0
b1*
* 
* 
Ю
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*

§trace_0* 

•trace_0* 
* 
* 
* 
* 
Ь
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses* 

Ђtrace_0
ђtrace_1* 

≠trace_0
Ѓtrace_1* 
* 

c0
d1*
* 
* 
Ю
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses*

іtrace_0* 

µtrace_0* 
* 
* 
* 
* 
Ь
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses* 

їtrace_0
Љtrace_1* 

љtrace_0
Њtrace_1* 
* 

e0
f1*
* 
* 
Ю
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
ґ	variables
Јtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses*

ƒtrace_0* 

≈trace_0* 
* 
* 
* 
* 
Ь
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses* 

Ћtrace_0
ћtrace_1* 

Ќtrace_0
ќtrace_1* 
* 
* 
* 
* 
Ь
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
ƒ	variables
≈trainable_variables
∆regularization_losses
»__call__
+…&call_and_return_all_conditional_losses
'…"call_and_return_conditional_losses* 

‘trace_0* 

’trace_0* 

g0
h1*
* 
* 
Ю
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
 	variables
Ћtrainable_variables
ћregularization_losses
ќ__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses*

џtrace_0* 

№trace_0* 
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
Ё0
ё1*
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
o
ё0
я1
а2
б3
в4
г5
д6
е7
ж8
з9
и10
й11
к12*
hb
VARIABLE_VALUE	iterationElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUElearning_rateHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
я0
а1
б2
в3
г4
д5
е6
ж7
з8
и9
й10
к11*
* 
* 
* 
<
л	variables
м	keras_api

нtotal

оcount*
M
п	variables
р	keras_api

сtotal

тcount
у
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
ф	variables
х	keras_api

цtotal

чcount*
M
ш	variables
щ	keras_api

ъtotal

ыcount
ь
_fn_kwargs*
y
VARIABLE_VALUERMSprop/velocity/dense_1/kernelFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUERMSprop/velocity/dense_1/biasFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_1/kernelFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/conv2d_1/biasFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_2/kernelFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/conv2d_2/biasFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_3/kernelFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/conv2d_3/biasFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_4/kernelFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUERMSprop/velocity/conv2d_4/biasGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUERMSprop/velocity/dense_2/kernelGlayer_with_weights-1/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/dense_2/biasGlayer_with_weights-1/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*

н0
о1*

л	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

с0
т1*

п	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

ц0
ч1*

ф	variables*
jd
VARIABLE_VALUEtotal_1Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_1Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ъ0
ы1*

ш	variables*
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
№
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/biasiteration_1learning_rate_1	iterationlearning_rateRMSprop/velocity/dense/kernelRMSprop/velocity/dense/bias*RMSprop/velocity/batch_normalization/gamma)RMSprop/velocity/batch_normalization/beta(RMSprop/velocity/conv2d_transpose/kernel&RMSprop/velocity/conv2d_transpose/bias,RMSprop/velocity/batch_normalization_1/gamma+RMSprop/velocity/batch_normalization_1/beta*RMSprop/velocity/conv2d_transpose_1/kernel(RMSprop/velocity/conv2d_transpose_1/bias,RMSprop/velocity/batch_normalization_2/gamma+RMSprop/velocity/batch_normalization_2/beta*RMSprop/velocity/conv2d_transpose_2/kernel(RMSprop/velocity/conv2d_transpose_2/bias,RMSprop/velocity/batch_normalization_3/gamma+RMSprop/velocity/batch_normalization_3/betaRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/biasRMSprop/velocity/dense_1/kernelRMSprop/velocity/dense_1/bias RMSprop/velocity/conv2d_1/kernelRMSprop/velocity/conv2d_1/bias RMSprop/velocity/conv2d_2/kernelRMSprop/velocity/conv2d_2/bias RMSprop/velocity/conv2d_3/kernelRMSprop/velocity/conv2d_3/bias RMSprop/velocity/conv2d_4/kernelRMSprop/velocity/conv2d_4/biasRMSprop/velocity/dense_2/kernelRMSprop/velocity/dense_2/biastotal_3count_3total_2count_2total_1count_1totalcountConst*]
TinV
T2R*
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
__inference__traced_save_69913
„
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/biasiteration_1learning_rate_1	iterationlearning_rateRMSprop/velocity/dense/kernelRMSprop/velocity/dense/bias*RMSprop/velocity/batch_normalization/gamma)RMSprop/velocity/batch_normalization/beta(RMSprop/velocity/conv2d_transpose/kernel&RMSprop/velocity/conv2d_transpose/bias,RMSprop/velocity/batch_normalization_1/gamma+RMSprop/velocity/batch_normalization_1/beta*RMSprop/velocity/conv2d_transpose_1/kernel(RMSprop/velocity/conv2d_transpose_1/bias,RMSprop/velocity/batch_normalization_2/gamma+RMSprop/velocity/batch_normalization_2/beta*RMSprop/velocity/conv2d_transpose_2/kernel(RMSprop/velocity/conv2d_transpose_2/bias,RMSprop/velocity/batch_normalization_3/gamma+RMSprop/velocity/batch_normalization_3/betaRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/biasRMSprop/velocity/dense_1/kernelRMSprop/velocity/dense_1/bias RMSprop/velocity/conv2d_1/kernelRMSprop/velocity/conv2d_1/bias RMSprop/velocity/conv2d_2/kernelRMSprop/velocity/conv2d_2/bias RMSprop/velocity/conv2d_3/kernelRMSprop/velocity/conv2d_3/bias RMSprop/velocity/conv2d_4/kernelRMSprop/velocity/conv2d_4/biasRMSprop/velocity/dense_2/kernelRMSprop/velocity/dense_2/biastotal_3count_3total_2count_2total_1count_1totalcount*\
TinU
S2Q*
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
!__inference__traced_restore_70162Щ§
п
b
)__inference_dropout_2_layer_call_fn_69263

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
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
D__inference_dropout_2_layer_call_and_return_conditional_losses_67396x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
≤
ь
C__inference_conv2d_1_layer_call_and_return_conditional_losses_69211

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€((: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Л
H
,__inference_activation_2_layer_call_fn_69001

inputs
identityћ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_67014z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
А

ц
B__inference_dense_1_layer_call_and_return_conditional_losses_67311

inputs2
matmul_readvariableop_resource:
ўј.
biasadd_readvariableop_resource:	ј
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ўј*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ј*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ў: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ў
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ю	
ф
@__inference_dense_layer_call_and_return_conditional_losses_68608

inputs2
matmul_readvariableop_resource:
љА2.
biasadd_readvariableop_resource:	А2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љА2*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А2*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€љ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ќ
a
E__inference_activation_layer_call_and_return_conditional_losses_66944

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€А2[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А2:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
Ђ
C
'__inference_reshape_layer_call_fn_68703

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
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
B__inference_reshape_layer_call_and_return_conditional_losses_66959h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А2:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
Ю
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_68761

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:љ
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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ы
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_69379

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
∆
^
B__inference_flatten_layer_call_and_return_conditional_losses_69390

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ 2  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АdY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ѓ8
з
B__inference_model_1_layer_call_and_return_conditional_losses_67542
input_2
input_3!
dense_1_67484:
ўј
dense_1_67486:	ј(
conv2d_1_67491:@
conv2d_1_67493:@)
conv2d_2_67502:@А
conv2d_2_67504:	А*
conv2d_3_67513:АА
conv2d_3_67515:	А*
conv2d_4_67524:АА
conv2d_4_67526:	А 
dense_2_67536:	Аd
dense_2_67538:
identityИҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallл
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_1_67484dense_1_67486*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_67311г
reshape_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_67330л
concatenate/PartitionedCallPartitionedCallinput_2"reshape_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_67338У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_1_67491conv2d_1_67493*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_67350д
dropout_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_67500Т
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_67502conv2d_2_67504*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
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
C__inference_conv2d_2_layer_call_and_return_conditional_losses_67379е
dropout_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
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
D__inference_dropout_2_layer_call_and_return_conditional_losses_67511Т
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv2d_3_67513conv2d_3_67515*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_67408е
dropout_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_67522Т
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_4_67524conv2d_4_67526*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_67437е
dropout_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_67533“
flatten/PartitionedCallPartitionedCall"dropout_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Аd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_67461Г
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_67536dense_2_67538*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_67473w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€т
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€((:€€€€€€€€€ў: : : : : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€((
!
_user_specified_name	input_2:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_3:%!

_user_specified_name67484:%!

_user_specified_name67486:%!

_user_specified_name67491:%!

_user_specified_name67493:%!

_user_specified_name67502:%!

_user_specified_name67504:%!

_user_specified_name67513:%	!

_user_specified_name67515:%
!

_user_specified_name67524:%!

_user_specified_name67526:%!

_user_specified_name67536:%!

_user_specified_name67538
Ц
Я
(__inference_conv2d_2_layer_call_fn_69247

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
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
C__inference_conv2d_2_layer_call_and_return_conditional_losses_67379x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:%!

_user_specified_name69241:%!

_user_specified_name69243
Ѓ
Y
-__inference_concatenate_1_layer_call_fn_68366
inputs_0
inputs_1
identityЅ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_67722a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d:€€€€€€€€€ў:Q M
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:€€€€€€€€€ў
"
_user_specified_name
inputs_1
ѕ
Ы
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_66662

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
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
з
p
F__inference_concatenate_layer_call_and_return_conditional_losses_67338

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
:€€€€€€€€€((_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:€€€€€€€€€(("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:€€€€€€€€€((:€€€€€€€€€((:W S
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs:WS
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs
Й
њ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69092

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%Ќћћ=∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
ў
^
B__inference_reshape_layer_call_and_return_conditional_losses_68717

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :@©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А2:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
’m
ў	
B__inference_model_1_layer_call_and_return_conditional_losses_68525
inputs_0
inputs_1:
&dense_1_matmul_readvariableop_resource:
ўј6
'dense_1_biasadd_readvariableop_resource:	јA
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
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ўј*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ј*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јe
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::нѕg
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
value	B :џ
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :©
concatenate/concatConcatV2inputs_0reshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:€€€€€€€€€((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ј
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Х
dropout_1/dropout/MulMulconv2d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@p
dropout_1/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
::нѕ®
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ћ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0…
conv2d_2/Conv2DConv2D#dropout_1/dropout/SelectV2:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Ц
dropout_2/dropout/MulMulconv2d_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Аp
dropout_2/dropout/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
::нѕ©
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ќ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ƒ
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0…
conv2d_3/Conv2DConv2D#dropout_2/dropout/SelectV2:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Ц
dropout_3/dropout/MulMulconv2d_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аp
dropout_3/dropout/ShapeShapeconv2d_3/Relu:activations:0*
T0*
_output_shapes
::нѕ©
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ќ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ƒ
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0…
conv2d_4/Conv2DConv2D#dropout_3/dropout/SelectV2:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Ц
dropout_4/dropout/MulMulconv2d_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аp
dropout_4/dropout/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
::нѕ©
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ќ
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
dropout_4/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ƒ
dropout_4/dropout/SelectV2SelectV2"dropout_4/dropout/GreaterEqual:z:0dropout_4/dropout/Mul:z:0"dropout_4/dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ 2  К
flatten/ReshapeReshape#dropout_4/dropout/SelectV2:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∞
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€ў: : : : : : : : : : : : 2B
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:€€€€€€€€€ў
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
—
Ё
'__inference_model_1_layer_call_fn_67572
input_2
input_3
unknown:
ўј
	unknown_0:	ј#
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
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_67480o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€((:€€€€€€€€€ў: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€((
!
_user_specified_name	input_2:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_3:%!

_user_specified_name67546:%!

_user_specified_name67548:%!

_user_specified_name67550:%!

_user_specified_name67552:%!

_user_specified_name67554:%!

_user_specified_name67556:%!

_user_specified_name67558:%	!

_user_specified_name67560:%
!

_user_specified_name67562:%!

_user_specified_name67564:%!

_user_specified_name67566:%!

_user_specified_name67568
ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_67500

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≥
c
G__inference_activation_2_layer_call_and_return_conditional_losses_67014

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
—
Ё
'__inference_model_1_layer_call_fn_67602
input_2
input_3
unknown:
ўј
	unknown_0:	ј#
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
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinput_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_67542o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€((:€€€€€€€€€ў: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
/
_output_shapes
:€€€€€€€€€((
!
_user_specified_name	input_2:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_3:%!

_user_specified_name67576:%!

_user_specified_name67578:%!

_user_specified_name67580:%!

_user_specified_name67582:%!

_user_specified_name67584:%!

_user_specified_name67586:%!

_user_specified_name67588:%	!

_user_specified_name67590:%
!

_user_specified_name67592:%!

_user_specified_name67594:%!

_user_specified_name67596:%!

_user_specified_name67598
Й
њ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_66869

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%Ќћћ=∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
ќ

a
B__inference_dropout_layer_call_and_return_conditional_losses_66972

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€

@:W S
/
_output_shapes
:€€€€€€€€€

@
 
_user_specified_nameinputs
Л
H
,__inference_activation_1_layer_call_fn_68870

inputs
identityћ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_66993z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ї>
ч
B__inference_model_1_layer_call_and_return_conditional_losses_67480
input_2
input_3!
dense_1_67312:
ўј
dense_1_67314:	ј(
conv2d_1_67351:@
conv2d_1_67353:@)
conv2d_2_67380:@А
conv2d_2_67382:	А*
conv2d_3_67409:АА
conv2d_3_67411:	А*
conv2d_4_67438:АА
conv2d_4_67440:	А 
dense_2_67474:	Аd
dense_2_67476:
identityИҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐdense_2/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallҐ!dropout_4/StatefulPartitionedCallл
dense_1/StatefulPartitionedCallStatefulPartitionedCallinput_3dense_1_67312dense_1_67314*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_67311г
reshape_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_67330л
concatenate/PartitionedCallPartitionedCallinput_2"reshape_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_67338У
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0conv2d_1_67351conv2d_1_67353*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_67350ф
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_67367Ъ
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_67380conv2d_2_67382*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
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
C__inference_conv2d_2_layer_call_and_return_conditional_losses_67379Щ
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
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
D__inference_dropout_2_layer_call_and_return_conditional_losses_67396Ъ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv2d_3_67409conv2d_3_67411*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_67408Щ
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_67425Ъ
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_4_67438conv2d_4_67440*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_67437Щ
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0"^dropout_3/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_67454Џ
flatten/PartitionedCallPartitionedCall*dropout_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Аd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_67461Г
dense_2/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_2_67474dense_2_67476*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_67473w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€В
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€((:€€€€€€€€€ў: : : : : : : : : : : : 2D
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
:€€€€€€€€€((
!
_user_specified_name	input_2:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_3:%!

_user_specified_name67312:%!

_user_specified_name67314:%!

_user_specified_name67351:%!

_user_specified_name67353:%!

_user_specified_name67380:%!

_user_specified_name67382:%!

_user_specified_name67409:%	!

_user_specified_name67411:%
!

_user_specified_name67438:%!

_user_specified_name67440:%!

_user_specified_name67474:%!

_user_specified_name67476
Е

–
5__inference_batch_normalization_2_layer_call_fn_68947

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_66765Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name68937:%!

_user_specified_name68939:%!

_user_specified_name68941:%!

_user_specified_name68943
А

ц
B__inference_dense_1_layer_call_and_return_conditional_losses_69159

inputs2
matmul_readvariableop_resource:
ўј.
biasadd_readvariableop_resource:	ј
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ўј*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ј*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€јS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ў: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€ў
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
†
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_68892

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:љ
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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
З)
 

B__inference_model_2_layer_call_and_return_conditional_losses_68043
input_4
input_5
model_67900:
љА2
model_67902:	А2
model_67904:	А2
model_67906:	А2
model_67908:	А2
model_67910:	А2%
model_67912: @
model_67914: 
model_67916: 
model_67918: 
model_67920: 
model_67922: %
model_67924: 
model_67926:
model_67928:
model_67930:
model_67932:
model_67934:%
model_67936:
model_67938:
model_67940:
model_67942:
model_67944:
model_67946:%
model_67948:
model_67950:!
model_1_68017:
ўј
model_1_68019:	ј'
model_1_68021:@
model_1_68023:@(
model_1_68025:@А
model_1_68027:	А)
model_1_68029:АА
model_1_68031:	А)
model_1_68033:АА
model_1_68035:	А 
model_1_68037:	Аd
model_1_68039:
identityИҐmodel/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCallЌ
concatenate_1/PartitionedCallPartitionedCallinput_4input_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_67722Г
model/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0model_67900model_67902model_67904model_67906model_67908model_67910model_67912model_67914model_67916model_67918model_67920model_67922model_67924model_67926model_67928model_67930model_67932model_67934model_67936model_67938model_67940model_67942model_67944model_67946model_67948model_67950*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_67131љ
model_1/StatefulPartitionedCallStatefulPartitionedCall&model/StatefulPartitionedCall:output:0input_5model_1_68017model_1_68019model_1_68021model_1_68023model_1_68025model_1_68027model_1_68029model_1_68031model_1_68033model_1_68035model_1_68037model_1_68039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_68016w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d
NoOpNoOp^model/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:€€€€€€€€€d:€€€€€€€€€ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_4:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_5:%!

_user_specified_name67900:%!

_user_specified_name67902:%!

_user_specified_name67904:%!

_user_specified_name67906:%!

_user_specified_name67908:%!

_user_specified_name67910:%!

_user_specified_name67912:%	!

_user_specified_name67914:%
!

_user_specified_name67916:%!

_user_specified_name67918:%!

_user_specified_name67920:%!

_user_specified_name67922:%!

_user_specified_name67924:%!

_user_specified_name67926:%!

_user_specified_name67928:%!

_user_specified_name67930:%!

_user_specified_name67932:%!

_user_specified_name67934:%!

_user_specified_name67936:%!

_user_specified_name67938:%!

_user_specified_name67940:%!

_user_specified_name67942:%!

_user_specified_name67944:%!

_user_specified_name67946:%!

_user_specified_name67948:%!

_user_specified_name67950:%!

_user_specified_name68017:%!

_user_specified_name68019:%!

_user_specified_name68021:%!

_user_specified_name68023:% !

_user_specified_name68025:%!!

_user_specified_name68027:%"!

_user_specified_name68029:%#!

_user_specified_name68031:%$!

_user_specified_name68033:%%!

_user_specified_name68035:%&!

_user_specified_name68037:%'!

_user_specified_name68039
ќ

a
B__inference_dropout_layer_call_and_return_conditional_losses_68739

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€

@:W S
/
_output_shapes
:€€€€€€€€€

@
 
_user_specified_nameinputs
Ќ
a
E__inference_activation_layer_call_and_return_conditional_losses_68698

inputs
identityG
ReluReluinputs*
T0*(
_output_shapes
:€€€€€€€€€А2[
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А2:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
Ј 
Љ	
'__inference_model_2_layer_call_fn_68207
input_4
input_5
unknown:
љА2
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
ўј

unknown_26:	ј$

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
identityИҐStatefulPartitionedCall—
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
:€€€€€€€€€*H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_68043o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:€€€€€€€€€d:€€€€€€€€€ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_4:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_5:%!

_user_specified_name68129:%!

_user_specified_name68131:%!

_user_specified_name68133:%!

_user_specified_name68135:%!

_user_specified_name68137:%!

_user_specified_name68139:%!

_user_specified_name68141:%	!

_user_specified_name68143:%
!

_user_specified_name68145:%!

_user_specified_name68147:%!

_user_specified_name68149:%!

_user_specified_name68151:%!

_user_specified_name68153:%!

_user_specified_name68155:%!

_user_specified_name68157:%!

_user_specified_name68159:%!

_user_specified_name68161:%!

_user_specified_name68163:%!

_user_specified_name68165:%!

_user_specified_name68167:%!

_user_specified_name68169:%!

_user_specified_name68171:%!

_user_specified_name68173:%!

_user_specified_name68175:%!

_user_specified_name68177:%!

_user_specified_name68179:%!

_user_specified_name68181:%!

_user_specified_name68183:%!

_user_specified_name68185:%!

_user_specified_name68187:% !

_user_specified_name68189:%!!

_user_specified_name68191:%"!

_user_specified_name68193:%#!

_user_specified_name68195:%$!

_user_specified_name68197:%%!

_user_specified_name68199:%&!

_user_specified_name68201:%'!

_user_specified_name68203
п
b
)__inference_dropout_4_layer_call_fn_69357

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_67454x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ќm
„	
B__inference_model_1_layer_call_and_return_conditional_losses_67868

inputs
inputs_1:
&dense_1_matmul_readvariableop_resource:
ўј6
'dense_1_biasadd_readvariableop_resource:	јA
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
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ўј*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ј*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јe
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::нѕg
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
value	B :џ
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :І
concatenate/concatConcatV2inputsreshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:€€€€€€€€€((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ј
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Х
dropout_1/dropout/MulMulconv2d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@p
dropout_1/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
::нѕ®
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ћ
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    √
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0…
conv2d_2/Conv2DConv2D#dropout_1/dropout/SelectV2:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Ц
dropout_2/dropout/MulMulconv2d_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Аp
dropout_2/dropout/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
::нѕ©
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ќ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ƒ
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0…
conv2d_3/Conv2DConv2D#dropout_2/dropout/SelectV2:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Ц
dropout_3/dropout/MulMulconv2d_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аp
dropout_3/dropout/ShapeShapeconv2d_3/Relu:activations:0*
T0*
_output_shapes
::нѕ©
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ќ
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ƒ
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0…
conv2d_4/Conv2DConv2D#dropout_3/dropout/SelectV2:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?Ц
dropout_4/dropout/MulMulconv2d_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аp
dropout_4/dropout/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
::нѕ©
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ќ
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
dropout_4/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ƒ
dropout_4/dropout/SelectV2SelectV2"dropout_4/dropout/GreaterEqual:z:0dropout_4/dropout/Mul:z:0"dropout_4/dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ 2  К
flatten/ReshapeReshape#dropout_4/dropout/SelectV2:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∞
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€ў: : : : : : : : : : : : 2B
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€ў
 
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
Щ
†
(__inference_conv2d_4_layer_call_fn_69341

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_67437x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:%!

_user_specified_name69335:%!

_user_specified_name69337
†
f
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_66700

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:љ
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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
џ
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_67330

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€((`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€(("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
Р!
Ш
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_66617

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_67076

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€

@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€

@:W S
/
_output_shapes
:€€€€€€€€€

@
 
_user_specified_nameinputs
ѕ
Ы
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_66887

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
Њ
€
C__inference_conv2d_4_layer_call_and_return_conditional_losses_69352

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
є
C
'__inference_dropout_layer_call_fn_68727

inputs
identityµ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
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
B__inference_dropout_layer_call_and_return_conditional_losses_67076h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€

@:W S
/
_output_shapes
:€€€€€€€€€

@
 
_user_specified_nameinputs
≥
c
G__inference_activation_1_layer_call_and_return_conditional_losses_66993

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
џ
`
D__inference_reshape_1_layer_call_and_return_conditional_losses_69178

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€((`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€(("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
п
І
2__inference_conv2d_transpose_2_layer_call_fn_69015

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_66842Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name69009:%!

_user_specified_name69011
Ї
ю
C__inference_conv2d_2_layer_call_and_return_conditional_losses_69258

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
б
±
N__inference_batch_normalization_layer_call_and_return_conditional_losses_66541

inputs0
!batchnorm_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А22
#batchnorm_readvariableop_1_resource:	А22
#batchnorm_readvariableop_2_resource:	А2
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpw
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
:€€€€€€€€€А2{
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
:€€€€€€€€€А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А2: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А2
 
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
п
Ч
'__inference_dense_1_layer_call_fn_69149

inputs
unknown:
ўј
	unknown_0:	ј
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€ј*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_67311p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€ј<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€ў: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ў
 
_user_specified_nameinputs:%!

_user_specified_name69143:%!

_user_specified_name69145
ю	
ф
@__inference_dense_layer_call_and_return_conditional_losses_66925

inputs2
matmul_readvariableop_resource:
љА2.
biasadd_readvariableop_resource:	А2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
љА2*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А2*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€љ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€љ
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
€(
 

B__inference_model_2_layer_call_and_return_conditional_losses_67895
input_4
input_5
model_67724:
љА2
model_67726:	А2
model_67728:	А2
model_67730:	А2
model_67732:	А2
model_67734:	А2%
model_67736: @
model_67738: 
model_67740: 
model_67742: 
model_67744: 
model_67746: %
model_67748: 
model_67750:
model_67752:
model_67754:
model_67756:
model_67758:%
model_67760:
model_67762:
model_67764:
model_67766:
model_67768:
model_67770:%
model_67772:
model_67774:!
model_1_67869:
ўј
model_1_67871:	ј'
model_1_67873:@
model_1_67875:@(
model_1_67877:@А
model_1_67879:	А)
model_1_67881:АА
model_1_67883:	А)
model_1_67885:АА
model_1_67887:	А 
model_1_67889:	Аd
model_1_67891:
identityИҐmodel/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCallЌ
concatenate_1/PartitionedCallPartitionedCallinput_4input_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€љ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_concatenate_1_layer_call_and_return_conditional_losses_67722ы
model/StatefulPartitionedCallStatefulPartitionedCall&concatenate_1/PartitionedCall:output:0model_67724model_67726model_67728model_67730model_67732model_67734model_67736model_67738model_67740model_67742model_67744model_67746model_67748model_67750model_67752model_67754model_67756model_67758model_67760model_67762model_67764model_67766model_67768model_67770model_67772model_67774*&
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_67053љ
model_1/StatefulPartitionedCallStatefulPartitionedCall&model/StatefulPartitionedCall:output:0input_5model_1_67869model_1_67871model_1_67873model_1_67875model_1_67877model_1_67879model_1_67881model_1_67883model_1_67885model_1_67887model_1_67889model_1_67891*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_67868w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d
NoOpNoOp^model/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:€€€€€€€€€d:€€€€€€€€€ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_4:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_5:%!

_user_specified_name67724:%!

_user_specified_name67726:%!

_user_specified_name67728:%!

_user_specified_name67730:%!

_user_specified_name67732:%!

_user_specified_name67734:%!

_user_specified_name67736:%	!

_user_specified_name67738:%
!

_user_specified_name67740:%!

_user_specified_name67742:%!

_user_specified_name67744:%!

_user_specified_name67746:%!

_user_specified_name67748:%!

_user_specified_name67750:%!

_user_specified_name67752:%!

_user_specified_name67754:%!

_user_specified_name67756:%!

_user_specified_name67758:%!

_user_specified_name67760:%!

_user_specified_name67762:%!

_user_specified_name67764:%!

_user_specified_name67766:%!

_user_specified_name67768:%!

_user_specified_name67770:%!

_user_specified_name67772:%!

_user_specified_name67774:%!

_user_specified_name67869:%!

_user_specified_name67871:%!

_user_specified_name67873:%!

_user_specified_name67875:% !

_user_specified_name67877:%!!

_user_specified_name67879:%"!

_user_specified_name67881:%#!

_user_specified_name67883:%$!

_user_specified_name67885:%%!

_user_specified_name67887:%&!

_user_specified_name67889:%'!

_user_specified_name67891
Й
њ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_66644

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%Ќћћ=∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ∞
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
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
Ь
ъ
A__inference_conv2d_layer_call_and_return_conditional_losses_69140

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ђ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
–

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_67367

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ы
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_69332

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Е

–
5__inference_batch_normalization_3_layer_call_fn_69061

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_66869Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name69051:%!

_user_specified_name69053:%!

_user_specified_name69055:%!

_user_specified_name69057
ѕ
Ы
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_66783

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
”
±
%__inference_model_layer_call_fn_67188
input_1
unknown:
љА2
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
identityИҐStatefulPartitionedCallѓ
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_67053Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:€€€€€€€€€љ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€љ
!
_user_specified_name	input_1:%!

_user_specified_name67134:%!

_user_specified_name67136:%!

_user_specified_name67138:%!

_user_specified_name67140:%!

_user_specified_name67142:%!

_user_specified_name67144:%!

_user_specified_name67146:%!

_user_specified_name67148:%	!

_user_specified_name67150:%
!

_user_specified_name67152:%!

_user_specified_name67154:%!

_user_specified_name67156:%!

_user_specified_name67158:%!

_user_specified_name67160:%!

_user_specified_name67162:%!

_user_specified_name67164:%!

_user_specified_name67166:%!

_user_specified_name67168:%!

_user_specified_name67170:%!

_user_specified_name67172:%!

_user_specified_name67174:%!

_user_specified_name67176:%!

_user_specified_name67178:%!

_user_specified_name67180:%!

_user_specified_name67182:%!

_user_specified_name67184
Њ
€
C__inference_conv2d_3_layer_call_and_return_conditional_losses_67408

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ћ

ф
B__inference_dense_2_layer_call_and_return_conditional_losses_69410

inputs1
matmul_readvariableop_resource:	Аd-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Аd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Аd
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
„

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_69374

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ь
ъ
A__inference_conv2d_layer_call_and_return_conditional_losses_67046

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ђ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
≥
c
G__inference_activation_3_layer_call_and_return_conditional_losses_67034

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Щ
†
(__inference_conv2d_3_layer_call_fn_69294

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallб
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_67408x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs:%!

_user_specified_name69288:%!

_user_specified_name69290
Й
њ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68847

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
exponential_avg_factor%Ќћћ=∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ∞
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
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
Ю
d
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_66579

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:љ
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
:µ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
half_pixel_centers(Ш
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ы
я
'__inference_model_1_layer_call_fn_68433
inputs_0
inputs_1
unknown:
ўј
	unknown_0:	ј#
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
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_68016o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€ў: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:€€€€€€€€€ў
"
_user_specified_name
inputs_1:%!

_user_specified_name68407:%!

_user_specified_name68409:%!

_user_specified_name68411:%!

_user_specified_name68413:%!

_user_specified_name68415:%!

_user_specified_name68417:%!

_user_specified_name68419:%	!

_user_specified_name68421:%
!

_user_specified_name68423:%!

_user_specified_name68425:%!

_user_specified_name68427:%!

_user_specified_name68429
„

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_69327

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Нш
о5
!__inference__traced_restore_70162
file_prefix1
assignvariableop_dense_kernel:
љА2,
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
ўј/
 assignvariableop_27_dense_1_bias:	ј=
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
љА2>
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
0assignvariableop_59_rmsprop_velocity_conv2d_bias:G
3assignvariableop_60_rmsprop_velocity_dense_1_kernel:
ўј@
1assignvariableop_61_rmsprop_velocity_dense_1_bias:	јN
4assignvariableop_62_rmsprop_velocity_conv2d_1_kernel:@@
2assignvariableop_63_rmsprop_velocity_conv2d_1_bias:@O
4assignvariableop_64_rmsprop_velocity_conv2d_2_kernel:@АA
2assignvariableop_65_rmsprop_velocity_conv2d_2_bias:	АP
4assignvariableop_66_rmsprop_velocity_conv2d_3_kernel:ААA
2assignvariableop_67_rmsprop_velocity_conv2d_3_bias:	АP
4assignvariableop_68_rmsprop_velocity_conv2d_4_kernel:ААA
2assignvariableop_69_rmsprop_velocity_conv2d_4_bias:	АF
3assignvariableop_70_rmsprop_velocity_dense_2_kernel:	Аd?
1assignvariableop_71_rmsprop_velocity_dense_2_bias:%
assignvariableop_72_total_3: %
assignvariableop_73_count_3: %
assignvariableop_74_total_2: %
assignvariableop_75_count_2: %
assignvariableop_76_total_1: %
assignvariableop_77_count_1: #
assignvariableop_78_total: #
assignvariableop_79_count: 
identity_81ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_76ҐAssignVariableOp_77ҐAssignVariableOp_78ҐAssignVariableOp_79ҐAssignVariableOp_8ҐAssignVariableOp_9Ч!
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*љ 
value≥ B∞ QB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHХ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*Ј
value≠B™QB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ґ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Џ
_output_shapes«
ƒ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*_
dtypesU
S2Q		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_6AssignVariableOp*assignvariableop_6_conv2d_transpose_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_7AssignVariableOp(assignvariableop_7_conv2d_transpose_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:≈
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_18AssignVariableOp-assignvariableop_18_conv2d_transpose_2_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_19AssignVariableOp+assignvariableop_19_conv2d_transpose_2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_24AssignVariableOp!assignvariableop_24_conv2d_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_25AssignVariableOpassignvariableop_25_conv2d_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_1_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_1_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_1_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_1_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_2_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_2_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_32AssignVariableOp#assignvariableop_32_conv2d_3_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_33AssignVariableOp!assignvariableop_33_conv2d_3_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_34AssignVariableOp#assignvariableop_34_conv2d_4_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_35AssignVariableOp!assignvariableop_35_conv2d_4_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_2_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_2_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:Є
AssignVariableOp_38AssignVariableOpassignvariableop_38_iteration_1Identity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_39AssignVariableOp#assignvariableop_39_learning_rate_1Identity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_40AssignVariableOpassignvariableop_40_iterationIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_41AssignVariableOp!assignvariableop_41_learning_rateIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_42AssignVariableOp1assignvariableop_42_rmsprop_velocity_dense_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_43AssignVariableOp/assignvariableop_43_rmsprop_velocity_dense_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_44AssignVariableOp>assignvariableop_44_rmsprop_velocity_batch_normalization_gammaIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_45AssignVariableOp=assignvariableop_45_rmsprop_velocity_batch_normalization_betaIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_46AssignVariableOp<assignvariableop_46_rmsprop_velocity_conv2d_transpose_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_47AssignVariableOp:assignvariableop_47_rmsprop_velocity_conv2d_transpose_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_48AssignVariableOp@assignvariableop_48_rmsprop_velocity_batch_normalization_1_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_49AssignVariableOp?assignvariableop_49_rmsprop_velocity_batch_normalization_1_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_50AssignVariableOp>assignvariableop_50_rmsprop_velocity_conv2d_transpose_1_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_51AssignVariableOp<assignvariableop_51_rmsprop_velocity_conv2d_transpose_1_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_52AssignVariableOp@assignvariableop_52_rmsprop_velocity_batch_normalization_2_gammaIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_53AssignVariableOp?assignvariableop_53_rmsprop_velocity_batch_normalization_2_betaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_54AssignVariableOp>assignvariableop_54_rmsprop_velocity_conv2d_transpose_2_kernelIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_55AssignVariableOp<assignvariableop_55_rmsprop_velocity_conv2d_transpose_2_biasIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_56AssignVariableOp@assignvariableop_56_rmsprop_velocity_batch_normalization_3_gammaIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_57AssignVariableOp?assignvariableop_57_rmsprop_velocity_batch_normalization_3_betaIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_58AssignVariableOp2assignvariableop_58_rmsprop_velocity_conv2d_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_59AssignVariableOp0assignvariableop_59_rmsprop_velocity_conv2d_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_60AssignVariableOp3assignvariableop_60_rmsprop_velocity_dense_1_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_61AssignVariableOp1assignvariableop_61_rmsprop_velocity_dense_1_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_62AssignVariableOp4assignvariableop_62_rmsprop_velocity_conv2d_1_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_63AssignVariableOp2assignvariableop_63_rmsprop_velocity_conv2d_1_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_64AssignVariableOp4assignvariableop_64_rmsprop_velocity_conv2d_2_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_65AssignVariableOp2assignvariableop_65_rmsprop_velocity_conv2d_2_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_66AssignVariableOp4assignvariableop_66_rmsprop_velocity_conv2d_3_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_67AssignVariableOp2assignvariableop_67_rmsprop_velocity_conv2d_3_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_68AssignVariableOp4assignvariableop_68_rmsprop_velocity_conv2d_4_kernelIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_69AssignVariableOp2assignvariableop_69_rmsprop_velocity_conv2d_4_biasIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_70AssignVariableOp3assignvariableop_70_rmsprop_velocity_dense_2_kernelIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_71AssignVariableOp1assignvariableop_71_rmsprop_velocity_dense_2_biasIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_72AssignVariableOpassignvariableop_72_total_3Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_73AssignVariableOpassignvariableop_73_count_3Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_74AssignVariableOpassignvariableop_74_total_2Identity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_75AssignVariableOpassignvariableop_75_count_2Identity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_76AssignVariableOpassignvariableop_76_total_1Identity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_77AssignVariableOpassignvariableop_77_count_1Identity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_78AssignVariableOpassignvariableop_78_totalIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_79AssignVariableOpassignvariableop_79_countIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ѓ
Identity_80Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_81IdentityIdentity_80:output:0^NoOp_1*
T0*
_output_shapes
: ш
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_81Identity_81:output:0*(
_construction_contextkEagerRuntime*Ј
_input_shapes•
Ґ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?
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
_user_specified_nameRMSprop/velocity/conv2d/bias:?=;
9
_user_specified_name!RMSprop/velocity/dense_1/kernel:=>9
7
_user_specified_nameRMSprop/velocity/dense_1/bias:@?<
:
_user_specified_name" RMSprop/velocity/conv2d_1/kernel:>@:
8
_user_specified_name RMSprop/velocity/conv2d_1/bias:@A<
:
_user_specified_name" RMSprop/velocity/conv2d_2/kernel:>B:
8
_user_specified_name RMSprop/velocity/conv2d_2/bias:@C<
:
_user_specified_name" RMSprop/velocity/conv2d_3/kernel:>D:
8
_user_specified_name RMSprop/velocity/conv2d_3/bias:@E<
:
_user_specified_name" RMSprop/velocity/conv2d_4/kernel:>F:
8
_user_specified_name RMSprop/velocity/conv2d_4/bias:?G;
9
_user_specified_name!RMSprop/velocity/dense_2/kernel:=H9
7
_user_specified_nameRMSprop/velocity/dense_2/bias:'I#
!
_user_specified_name	total_3:'J#
!
_user_specified_name	count_3:'K#
!
_user_specified_name	total_2:'L#
!
_user_specified_name	count_2:'M#
!
_user_specified_name	total_1:'N#
!
_user_specified_name	count_1:%O!

_user_specified_nametotal:%P!

_user_specified_namecount
≥
c
G__inference_activation_1_layer_call_and_return_conditional_losses_68875

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Т!
Ъ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_66842

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
л
b
)__inference_dropout_1_layer_call_fn_69216

inputs
identityИҐStatefulPartitionedCall«
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_67367w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
„

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_69280

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€

АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
ґ
K
/__inference_up_sampling2d_1_layer_call_fn_68880

inputs
identityЎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_66700Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
≤
ь
C__inference_conv2d_1_layer_call_and_return_conditional_losses_67350

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€((: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Л
H
,__inference_activation_3_layer_call_fn_69115

inputs
identityћ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_67034z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
„

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_67425

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
п
r
F__inference_concatenate_layer_call_and_return_conditional_losses_69191
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
:€€€€€€€€€((_
IdentityIdentityconcat:output:0*
T0*/
_output_shapes
:€€€€€€€€€(("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:€€€€€€€€€((:€€€€€€€€€((:Y U
/
_output_shapes
:€€€€€€€€€((
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:€€€€€€€€€((
"
_user_specified_name
inputs_1
Ц[
√
@__inference_model_layer_call_and_return_conditional_losses_67053
input_1
dense_66926:
љА2
dense_66928:	А2(
batch_normalization_66931:	А2(
batch_normalization_66933:	А2(
batch_normalization_66935:	А2(
batch_normalization_66937:	А20
conv2d_transpose_66975: @$
conv2d_transpose_66977: )
batch_normalization_1_66980: )
batch_normalization_1_66982: )
batch_normalization_1_66984: )
batch_normalization_1_66986: 2
conv2d_transpose_1_66996: &
conv2d_transpose_1_66998:)
batch_normalization_2_67001:)
batch_normalization_2_67003:)
batch_normalization_2_67005:)
batch_normalization_2_67007:2
conv2d_transpose_2_67016:&
conv2d_transpose_2_67018:)
batch_normalization_3_67021:)
batch_normalization_3_67023:)
batch_normalization_3_67025:)
batch_normalization_3_67027:&
conv2d_67047:
conv2d_67049:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallг
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_66926dense_66928*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_66925т
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_66931batch_normalization_66933batch_normalization_66935batch_normalization_66937*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_66521к
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_66944Џ
reshape/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
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
B__inference_reshape_layer_call_and_return_conditional_losses_66959з
dropout/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
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
B__inference_dropout_layer_call_and_return_conditional_losses_66972э
up_sampling2d/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_66579«
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_transpose_66975conv2d_transpose_66977*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_66617Ґ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_66980batch_normalization_1_66982batch_normalization_1_66984batch_normalization_1_66986*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_66644Й
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_66993ю
up_sampling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_66700—
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_transpose_1_66996conv2d_transpose_1_66998*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_66738§
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_2_67001batch_normalization_2_67003batch_normalization_2_67005batch_normalization_2_67007*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_66765Й
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_67014ќ
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0conv2d_transpose_2_67016conv2d_transpose_2_67018*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_66842§
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_3_67021batch_normalization_3_67023batch_normalization_3_67025batch_normalization_3_67027*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_66869Й
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_67034Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0conv2d_67047conv2d_67049*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_67046Р
IdentityIdentity'conv2d/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€»
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:€€€€€€€€€љ: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
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
:€€€€€€€€€љ
!
_user_specified_name	input_1:%!

_user_specified_name66926:%!

_user_specified_name66928:%!

_user_specified_name66931:%!

_user_specified_name66933:%!

_user_specified_name66935:%!

_user_specified_name66937:%!

_user_specified_name66975:%!

_user_specified_name66977:%	!

_user_specified_name66980:%
!

_user_specified_name66982:%!

_user_specified_name66984:%!

_user_specified_name66986:%!

_user_specified_name66996:%!

_user_specified_name66998:%!

_user_specified_name67001:%!

_user_specified_name67003:%!

_user_specified_name67005:%!

_user_specified_name67007:%!

_user_specified_name67016:%!

_user_specified_name67018:%!

_user_specified_name67021:%!

_user_specified_name67023:%!

_user_specified_name67025:%!

_user_specified_name67027:%!

_user_specified_name67047:%!

_user_specified_name67049
ы
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_67511

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€

Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
£
F
*__inference_activation_layer_call_fn_68693

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_66944a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А2"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А2:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
ѓ 
Љ	
'__inference_model_2_layer_call_fn_68125
input_4
input_5
unknown:
љА2
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
ўј

unknown_26:	ј$

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
identityИҐStatefulPartitionedCall…
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
:€€€€€€€€€*@
_read_only_resource_inputs"
 	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_67895o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:€€€€€€€€€d:€€€€€€€€€ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_4:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_5:%!

_user_specified_name68047:%!

_user_specified_name68049:%!

_user_specified_name68051:%!

_user_specified_name68053:%!

_user_specified_name68055:%!

_user_specified_name68057:%!

_user_specified_name68059:%	!

_user_specified_name68061:%
!

_user_specified_name68063:%!

_user_specified_name68065:%!

_user_specified_name68067:%!

_user_specified_name68069:%!

_user_specified_name68071:%!

_user_specified_name68073:%!

_user_specified_name68075:%!

_user_specified_name68077:%!

_user_specified_name68079:%!

_user_specified_name68081:%!

_user_specified_name68083:%!

_user_specified_name68085:%!

_user_specified_name68087:%!

_user_specified_name68089:%!

_user_specified_name68091:%!

_user_specified_name68093:%!

_user_specified_name68095:%!

_user_specified_name68097:%!

_user_specified_name68099:%!

_user_specified_name68101:%!

_user_specified_name68103:%!

_user_specified_name68105:% !

_user_specified_name68107:%!!

_user_specified_name68109:%"!

_user_specified_name68111:%#!

_user_specified_name68113:%$!

_user_specified_name68115:%%!

_user_specified_name68117:%&!

_user_specified_name68119:%'!

_user_specified_name68121
÷
W
+__inference_concatenate_layer_call_fn_69184
inputs_0
inputs_1
identity∆
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_67338h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€(("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:€€€€€€€€€((:€€€€€€€€€((:Y U
/
_output_shapes
:€€€€€€€€€((
"
_user_specified_name
inputs_0:YU
/
_output_shapes
:€€€€€€€€€((
"
_user_specified_name
inputs_1
ы
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_67522

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
„
Ы
&__inference_conv2d_layer_call_fn_69129

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_67046Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name69123:%!

_user_specified_name69125
Т!
Ъ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_68934

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ѕ
E
)__inference_dropout_4_layer_call_fn_69362

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_4_layer_call_and_return_conditional_losses_67533i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ѕ
E
)__inference_dropout_2_layer_call_fn_69268

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€
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
D__inference_dropout_2_layer_call_and_return_conditional_losses_67511i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
Е

–
5__inference_batch_normalization_1_layer_call_fn_68816

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_66644Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:%!

_user_specified_name68806:%!

_user_specified_name68808:%!

_user_specified_name68810:%!

_user_specified_name68812
л
Х
'__inference_dense_2_layer_call_fn_69399

inputs
unknown:	Аd
	unknown_0:
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_67473o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Аd: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€Аd
 
_user_specified_nameinputs:%!

_user_specified_name69393:%!

_user_specified_name69395
З

–
5__inference_batch_normalization_3_layer_call_fn_69074

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_66887Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name69064:%!

_user_specified_name69066:%!

_user_specified_name69068:%!

_user_specified_name69070
љ
E
)__inference_dropout_1_layer_call_fn_69221

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_67500h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≥
c
G__inference_activation_3_layer_call_and_return_conditional_losses_69120

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѕ
Ы
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68996

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
Ї
ю
C__inference_conv2d_2_layer_call_and_return_conditional_losses_67379

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€

АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
л
•
0__inference_conv2d_transpose_layer_call_fn_68770

inputs!
unknown: @
	unknown_0: 
identityИҐStatefulPartitionedCallъ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_66617Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:%!

_user_specified_name68764:%!

_user_specified_name68766
ѓ
E
)__inference_reshape_1_layer_call_fn_69164

inputs
identityЈ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€((* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_reshape_1_layer_call_and_return_conditional_losses_67330h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:€€€€€€€€€(("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€ј:P L
(
_output_shapes
:€€€€€€€€€ј
 
_user_specified_nameinputs
ћM
ў	
B__inference_model_1_layer_call_and_return_conditional_losses_68589
inputs_0
inputs_1:
&dense_1_matmul_readvariableop_resource:
ўј6
'dense_1_biasadd_readvariableop_resource:	јA
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
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ўј*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ј*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јe
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::нѕg
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
value	B :џ
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :©
concatenate/concatConcatV2inputs_0reshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:€€€€€€€€€((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ј
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@u
dropout_1/IdentityIdentityconv2d_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ѕ
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Аv
dropout_2/IdentityIdentityconv2d_2/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ѕ
conv2d_3/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аv
dropout_3/IdentityIdentityconv2d_3/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ѕ
conv2d_4/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аv
dropout_4/IdentityIdentityconv2d_4/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ 2  В
flatten/ReshapeReshapedropout_4/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∞
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€ў: : : : : : : : : : : : 2B
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:€€€€€€€€€ў
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
†	
“
3__inference_batch_normalization_layer_call_fn_68621

inputs
unknown:	А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_66521p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs:%!

_user_specified_name68611:%!

_user_specified_name68613:%!

_user_specified_name68615:%!

_user_specified_name68617
ƒM
„	
B__inference_model_1_layer_call_and_return_conditional_losses_68016

inputs
inputs_1:
&dense_1_matmul_readvariableop_resource:
ўј6
'dense_1_biasadd_readvariableop_resource:	јA
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
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpҐdense_2/BiasAdd/ReadVariableOpҐdense_2/MatMul/ReadVariableOpЖ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ўј*
dtype0|
dense_1/MatMulMatMulinputs_1%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јГ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ј*
dtype0П
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јe
reshape_1/ShapeShapedense_1/BiasAdd:output:0*
T0*
_output_shapes
::нѕg
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
value	B :џ
reshape_1/Reshape/shapePack reshape_1/strided_slice:output:0"reshape_1/Reshape/shape/1:output:0"reshape_1/Reshape/shape/2:output:0"reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Т
reshape_1/ReshapeReshapedense_1/BiasAdd:output:0 reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€((Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :І
concatenate/concatConcatV2inputsreshape_1/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:€€€€€€€€€((О
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0ј
conv2d_1/Conv2DConv2Dconcatenate/concat:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
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
:€€€€€€€€€@j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@u
dropout_1/IdentityIdentityconv2d_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ѕ
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

Аk
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

Аv
dropout_2/IdentityIdentityconv2d_2/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€

АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ѕ
conv2d_3/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аv
dropout_3/IdentityIdentityconv2d_3/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ѕ
conv2d_4/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€Аk
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аv
dropout_4/IdentityIdentityconv2d_4/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ 2  В
flatten/ReshapeReshapedropout_4/Identity:output:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АdЕ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_2/MatMulMatMulflatten/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€∞
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€ў: : : : : : : : : : : : 2B
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€ў
 
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
Њ
€
C__inference_conv2d_4_layer_call_and_return_conditional_losses_67437

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
љ
r
H__inference_concatenate_1_layer_call_and_return_conditional_losses_67722

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
:€€€€€€€€€љX
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d:€€€€€€€€€ў:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€ў
 
_user_specified_nameinputs
Њ
€
C__inference_conv2d_3_layer_call_and_return_conditional_losses_69305

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
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
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€

А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
„

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_67396

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€

АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€
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
:€€€€€€€€€

Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
Й
њ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_66765

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%Ќћћ=∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_68803

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ч
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_69238

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ѕ
E
)__inference_dropout_3_layer_call_fn_69315

inputs
identityЄ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_67522i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≠
C
'__inference_flatten_layer_call_fn_69384

inputs
identityЃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€Аd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_67461a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
л
Х
%__inference_dense_layer_call_fn_68598

inputs
unknown:
љА2
	unknown_0:	А2
identityИҐStatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_66925p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€љ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€љ
 
_user_specified_nameinputs:%!

_user_specified_name68592:%!

_user_specified_name68594
С 
Є	
#__inference_signature_wrapper_68358
input_4
input_5
unknown:
љА2
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
ўј

unknown_26:	ј$

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
identityИҐStatefulPartitionedCallѓ
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
:€€€€€€€€€*H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_66487o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:€€€€€€€€€d:€€€€€€€€€ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_4:QM
(
_output_shapes
:€€€€€€€€€ў
!
_user_specified_name	input_5:%!

_user_specified_name68280:%!

_user_specified_name68282:%!

_user_specified_name68284:%!

_user_specified_name68286:%!

_user_specified_name68288:%!

_user_specified_name68290:%!

_user_specified_name68292:%	!

_user_specified_name68294:%
!

_user_specified_name68296:%!

_user_specified_name68298:%!

_user_specified_name68300:%!

_user_specified_name68302:%!

_user_specified_name68304:%!

_user_specified_name68306:%!

_user_specified_name68308:%!

_user_specified_name68310:%!

_user_specified_name68312:%!

_user_specified_name68314:%!

_user_specified_name68316:%!

_user_specified_name68318:%!

_user_specified_name68320:%!

_user_specified_name68322:%!

_user_specified_name68324:%!

_user_specified_name68326:%!

_user_specified_name68328:%!

_user_specified_name68330:%!

_user_specified_name68332:%!

_user_specified_name68334:%!

_user_specified_name68336:%!

_user_specified_name68338:% !

_user_specified_name68340:%!!

_user_specified_name68342:%"!

_user_specified_name68344:%#!

_user_specified_name68346:%$!

_user_specified_name68348:%%!

_user_specified_name68350:%&!

_user_specified_name68352:%'!

_user_specified_name68354
х
`
B__inference_dropout_layer_call_and_return_conditional_losses_68744

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:€€€€€€€€€

@c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€

@:W S
/
_output_shapes
:€€€€€€€€€

@
 
_user_specified_nameinputs
∞&
л
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68668

inputs6
'assignmovingavg_readvariableop_resource:	А28
)assignmovingavg_1_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А20
!batchnorm_readvariableop_resource:	А2
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
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
:€€€€€€€€€А2l
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
 *Ќћћ=Г
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
:А2ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=З
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
:А2і
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
:€€€€€€€€€А2i
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
:€€€€€€€€€А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А2: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А2
 
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
∞&
л
N__inference_batch_normalization_layer_call_and_return_conditional_losses_66521

inputs6
'assignmovingavg_readvariableop_resource:	А28
)assignmovingavg_1_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А20
!batchnorm_readvariableop_resource:	А2
identityИҐAssignMovingAvgҐAssignMovingAvg/ReadVariableOpҐAssignMovingAvg_1Ґ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
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
:€€€€€€€€€А2l
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
 *Ќћћ=Г
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
:А2ђ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=З
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
:А2і
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
:€€€€€€€€€А2i
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
:€€€€€€€€€А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2∆
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А2: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А2
 
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
∆
^
B__inference_flatten_layer_call_and_return_conditional_losses_67461

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ 2  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АdY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≤
I
-__inference_up_sampling2d_layer_call_fn_68749

inputs
identity÷
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_66579Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Љ÷
ќ)
 __inference__wrapped_model_66487
input_4
input_5F
2model_2_model_dense_matmul_readvariableop_resource:
љА2B
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
ўјF
7model_2_model_1_dense_1_biasadd_readvariableop_resource:	јQ
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
identityИҐ:model_2/model/batch_normalization/batchnorm/ReadVariableOpҐ<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1Ґ<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2Ґ>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpҐCmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpҐEmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ґ2model_2/model/batch_normalization_1/ReadVariableOpҐ4model_2/model/batch_normalization_1/ReadVariableOp_1ҐCmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpҐEmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Ґ2model_2/model/batch_normalization_2/ReadVariableOpҐ4model_2/model/batch_normalization_2/ReadVariableOp_1ҐCmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐEmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ2model_2/model/batch_normalization_3/ReadVariableOpҐ4model_2/model/batch_normalization_3/ReadVariableOp_1Ґ+model_2/model/conv2d/BiasAdd/ReadVariableOpҐ*model_2/model/conv2d/Conv2D/ReadVariableOpҐ5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOpҐ>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOpҐ7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpҐ@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpҐ@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ*model_2/model/dense/BiasAdd/ReadVariableOpҐ)model_2/model/dense/MatMul/ReadVariableOpҐ/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_1/Conv2D/ReadVariableOpҐ/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_2/Conv2D/ReadVariableOpҐ/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_3/Conv2D/ReadVariableOpҐ/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_4/Conv2D/ReadVariableOpҐ.model_2/model_1/dense_1/BiasAdd/ReadVariableOpҐ-model_2/model_1/dense_1/MatMul/ReadVariableOpҐ.model_2/model_1/dense_2/BiasAdd/ReadVariableOpҐ-model_2/model_1/dense_2/MatMul/ReadVariableOpc
!model_2/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ґ
model_2/concatenate_1/concatConcatV2input_4input_5*model_2/concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€љЮ
)model_2/model/dense/MatMul/ReadVariableOpReadVariableOp2model_2_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
љА2*
dtype0±
model_2/model/dense/MatMulMatMul%model_2/concatenate_1/concat:output:01model_2/model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2Ы
*model_2/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_2_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:А2*
dtype0≥
model_2/model/dense/BiasAddBiasAdd$model_2/model/dense/MatMul:product:02model_2/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А2ї
:model_2/model/batch_normalization/batchnorm/ReadVariableOpReadVariableOpCmodel_2_model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:А2*
dtype0v
1model_2/model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:ё
/model_2/model/batch_normalization/batchnorm/addAddV2Bmodel_2/model/batch_normalization/batchnorm/ReadVariableOp:value:0:model_2/model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2Х
1model_2/model/batch_normalization/batchnorm/RsqrtRsqrt3model_2/model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:А2√
>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpGmodel_2_model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А2*
dtype0џ
/model_2/model/batch_normalization/batchnorm/mulMul5model_2/model/batch_normalization/batchnorm/Rsqrt:y:0Fmodel_2/model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2∆
1model_2/model/batch_normalization/batchnorm/mul_1Mul$model_2/model/dense/BiasAdd:output:03model_2/model/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2њ
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpEmodel_2_model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:А2*
dtype0ў
1model_2/model/batch_normalization/batchnorm/mul_2MulDmodel_2/model/batch_normalization/batchnorm/ReadVariableOp_1:value:03model_2/model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2њ
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpEmodel_2_model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:А2*
dtype0ў
/model_2/model/batch_normalization/batchnorm/subSubDmodel_2/model/batch_normalization/batchnorm/ReadVariableOp_2:value:05model_2/model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2ў
1model_2/model/batch_normalization/batchnorm/add_1AddV25model_2/model/batch_normalization/batchnorm/mul_1:z:03model_2/model/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2П
model_2/model/activation/ReluRelu5model_2/model/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А2Д
model_2/model/reshape/ShapeShape+model_2/model/activation/Relu:activations:0*
T0*
_output_shapes
::нѕs
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
valueB:њ
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
:љ
model_2/model/reshape/ReshapeReshape+model_2/model/activation/Relu:activations:0,model_2/model/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@М
model_2/model/dropout/IdentityIdentity&model_2/model/reshape/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€
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
valueB"      •
model_2/model/up_sampling2d/mulMul*model_2/model/up_sampling2d/Const:output:0,model_2/model/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:у
8model_2/model/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor'model_2/model/dropout/Identity:output:0#model_2/model/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:€€€€€€€€€@*
half_pixel_centers(Ђ
$model_2/model/conv2d_transpose/ShapeShapeImodel_2/model/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::нѕ|
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
valueB:м
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
value	B : §
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
valueB:ф
.model_2/model/conv2d_transpose/strided_slice_1StridedSlice-model_2/model/conv2d_transpose/stack:output:0=model_2/model/conv2d_transpose/strided_slice_1/stack:output:0?model_2/model/conv2d_transpose/strided_slice_1/stack_1:output:0?model_2/model/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskќ
>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpGmodel_2_model_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0к
/model_2/model/conv2d_transpose/conv2d_transposeConv2DBackpropInput-model_2/model/conv2d_transpose/stack:output:0Fmodel_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0Imodel_2/model/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingSAME*
strides
∞
5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp>model_2_model_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0д
&model_2/model/conv2d_transpose/BiasAddBiasAdd8model_2/model/conv2d_transpose/conv2d_transpose:output:0=model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€ ™
2model_2/model/batch_normalization_1/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_1_readvariableop_resource*
_output_shapes
: *
dtype0Ѓ
4model_2/model/batch_normalization_1/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
: *
dtype0ћ
Cmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0–
Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0У
4model_2/model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3/model_2/model/conv2d_transpose/BiasAdd:output:0:model_2/model/batch_normalization_1/ReadVariableOp:value:0<model_2/model/batch_normalization_1/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( Ы
model_2/model/activation_1/ReluRelu8model_2/model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€ t
#model_2/model/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%model_2/model/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      Ђ
!model_2/model/up_sampling2d_1/mulMul,model_2/model/up_sampling2d_1/Const:output:0.model_2/model/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:э
:model_2/model/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor-model_2/model/activation_1/Relu:activations:0%model_2/model/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:€€€€€€€€€(( *
half_pixel_centers(ѓ
&model_2/model/conv2d_transpose_1/ShapeShapeKmodel_2/model/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::нѕ~
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
valueB:ц
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
value	B :Ѓ
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
valueB:ю
0model_2/model/conv2d_transpose_1/strided_slice_1StridedSlice/model_2/model/conv2d_transpose_1/stack:output:0?model_2/model/conv2d_transpose_1/strided_slice_1/stack:output:0Amodel_2/model/conv2d_transpose_1/strided_slice_1/stack_1:output:0Amodel_2/model/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask“
@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0т
1model_2/model/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput/model_2/model/conv2d_transpose_1/stack:output:0Hmodel_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Kmodel_2/model/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:€€€€€€€€€((*
paddingSAME*
strides
і
7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0к
(model_2/model/conv2d_transpose_1/BiasAddBiasAdd:model_2/model/conv2d_transpose_1/conv2d_transpose:output:0?model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€((™
2model_2/model/batch_normalization_2/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
4model_2/model/batch_normalization_2/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0ћ
Cmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0–
Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
4model_2/model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV31model_2/model/conv2d_transpose_1/BiasAdd:output:0:model_2/model/batch_normalization_2/ReadVariableOp:value:0<model_2/model/batch_normalization_2/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€((:::::*
epsilon%oГ:*
is_training( Ы
model_2/model/activation_2/ReluRelu8model_2/model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€((С
&model_2/model/conv2d_transpose_2/ShapeShape-model_2/model/activation_2/Relu:activations:0*
T0*
_output_shapes
::нѕ~
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
valueB:ц
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
value	B :Ѓ
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
valueB:ю
0model_2/model/conv2d_transpose_2/strided_slice_1StridedSlice/model_2/model/conv2d_transpose_2/stack:output:0?model_2/model/conv2d_transpose_2/strided_slice_1/stack:output:0Amodel_2/model/conv2d_transpose_2/strided_slice_1/stack_1:output:0Amodel_2/model/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask“
@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0‘
1model_2/model/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput/model_2/model/conv2d_transpose_2/stack:output:0Hmodel_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0-model_2/model/activation_2/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€((*
paddingSAME*
strides
і
7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0к
(model_2/model/conv2d_transpose_2/BiasAddBiasAdd:model_2/model/conv2d_transpose_2/conv2d_transpose:output:0?model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€((™
2model_2/model/batch_normalization_3/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0Ѓ
4model_2/model/batch_normalization_3/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0ћ
Cmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0–
Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0Х
4model_2/model/batch_normalization_3/FusedBatchNormV3FusedBatchNormV31model_2/model/conv2d_transpose_2/BiasAdd:output:0:model_2/model/batch_normalization_3/ReadVariableOp:value:0<model_2/model/batch_normalization_3/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:€€€€€€€€€((:::::*
epsilon%oГ:*
is_training( Ы
model_2/model/activation_3/ReluRelu8model_2/model/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:€€€€€€€€€((¶
*model_2/model/conv2d/Conv2D/ReadVariableOpReadVariableOp3model_2_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0к
model_2/model/conv2d/Conv2DConv2D-model_2/model/activation_3/Relu:activations:02model_2/model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€((*
paddingSAME*
strides
Ь
+model_2/model/conv2d/BiasAdd/ReadVariableOpReadVariableOp4model_2_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Љ
model_2/model/conv2d/BiasAddBiasAdd$model_2/model/conv2d/Conv2D:output:03model_2/model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€((И
model_2/model/conv2d/SigmoidSigmoid%model_2/model/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€((¶
-model_2/model_1/dense_1/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
ўј*
dtype0Ы
model_2/model_1/dense_1/MatMulMatMulinput_55model_2/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€ј£
.model_2/model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:ј*
dtype0њ
model_2/model_1/dense_1/BiasAddBiasAdd(model_2/model_1/dense_1/MatMul:product:06model_2/model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€јЕ
model_2/model_1/reshape_1/ShapeShape(model_2/model_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
::нѕw
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
valueB:”
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
value	B :Ђ
'model_2/model_1/reshape_1/Reshape/shapePack0model_2/model_1/reshape_1/strided_slice:output:02model_2/model_1/reshape_1/Reshape/shape/1:output:02model_2/model_1/reshape_1/Reshape/shape/2:output:02model_2/model_1/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:¬
!model_2/model_1/reshape_1/ReshapeReshape(model_2/model_1/dense_1/BiasAdd:output:00model_2/model_1/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€((i
'model_2/model_1/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :с
"model_2/model_1/concatenate/concatConcatV2 model_2/model/conv2d/Sigmoid:y:0*model_2/model_1/reshape_1/Reshape:output:00model_2/model_1/concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:€€€€€€€€€((Ѓ
.model_2/model_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0р
model_2/model_1/conv2d_1/Conv2DConv2D+model_2/model_1/concatenate/concat:output:06model_2/model_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
§
/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0»
 model_2/model_1/conv2d_1/BiasAddBiasAdd(model_2/model_1/conv2d_1/Conv2D:output:07model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@К
model_2/model_1/conv2d_1/ReluRelu)model_2/model_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Х
"model_2/model_1/dropout_1/IdentityIdentity+model_2/model_1/conv2d_1/Relu:activations:0*
T0*/
_output_shapes
:€€€€€€€€€@ѓ
.model_2/model_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0с
model_2/model_1/conv2d_2/Conv2DConv2D+model_2/model_1/dropout_1/Identity:output:06model_2/model_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

А*
paddingSAME*
strides
•
/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0…
 model_2/model_1/conv2d_2/BiasAddBiasAdd(model_2/model_1/conv2d_2/Conv2D:output:07model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€

АЛ
model_2/model_1/conv2d_2/ReluRelu)model_2/model_1/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€

АЦ
"model_2/model_1/dropout_2/IdentityIdentity+model_2/model_1/conv2d_2/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€

А∞
.model_2/model_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0с
model_2/model_1/conv2d_3/Conv2DConv2D+model_2/model_1/dropout_2/Identity:output:06model_2/model_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
•
/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0…
 model_2/model_1/conv2d_3/BiasAddBiasAdd(model_2/model_1/conv2d_3/Conv2D:output:07model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АЛ
model_2/model_1/conv2d_3/ReluRelu)model_2/model_1/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€АЦ
"model_2/model_1/dropout_3/IdentityIdentity+model_2/model_1/conv2d_3/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€А∞
.model_2/model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0с
model_2/model_1/conv2d_4/Conv2DConv2D+model_2/model_1/dropout_3/Identity:output:06model_2/model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
•
/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0…
 model_2/model_1/conv2d_4/BiasAddBiasAdd(model_2/model_1/conv2d_4/Conv2D:output:07model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АЛ
model_2/model_1/conv2d_4/ReluRelu)model_2/model_1/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€АЦ
"model_2/model_1/dropout_4/IdentityIdentity+model_2/model_1/conv2d_4/Relu:activations:0*
T0*0
_output_shapes
:€€€€€€€€€Аn
model_2/model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ 2  ≤
model_2/model_1/flatten/ReshapeReshape+model_2/model_1/dropout_4/Identity:output:0&model_2/model_1/flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аd•
-model_2/model_1/dense_2/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0ї
model_2/model_1/dense_2/MatMulMatMul(model_2/model_1/flatten/Reshape:output:05model_2/model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.model_2/model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
model_2/model_1/dense_2/BiasAddBiasAdd(model_2/model_1/dense_2/MatMul:product:06model_2/model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
model_2/model_1/dense_2/SigmoidSigmoid(model_2/model_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€r
IdentityIdentity#model_2/model_1/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Б
NoOpNoOp;^model_2/model/batch_normalization/batchnorm/ReadVariableOp=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_1=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_2?^model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpD^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_1/ReadVariableOp5^model_2/model/batch_normalization_1/ReadVariableOp_1D^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_2/ReadVariableOp5^model_2/model/batch_normalization_2/ReadVariableOp_1D^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_3/ReadVariableOp5^model_2/model/batch_normalization_3/ReadVariableOp_1,^model_2/model/conv2d/BiasAdd/ReadVariableOp+^model_2/model/conv2d/Conv2D/ReadVariableOp6^model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp?^model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp+^model_2/model/dense/BiasAdd/ReadVariableOp*^model_2/model/dense/MatMul/ReadVariableOp0^model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_1/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_2/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_3/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_4/Conv2D/ReadVariableOp/^model_2/model_1/dense_1/BiasAdd/ReadVariableOp.^model_2/model_1/dense_1/MatMul/ReadVariableOp/^model_2/model_1/dense_2/BiasAdd/ReadVariableOp.^model_2/model_1/dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ж
_input_shapesu
s:€€€€€€€€€d:€€€€€€€€€ў: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2x
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
:€€€€€€€€€d
!
_user_specified_name	input_4:QM
(
_output_shapes
:€€€€€€€€€ў
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
З

–
5__inference_batch_normalization_1_layer_call_fn_68829

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_66662Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:%!

_user_specified_name68819:%!

_user_specified_name68821:%!

_user_specified_name68823:%!

_user_specified_name68825
„

c
D__inference_dropout_4_layer_call_and_return_conditional_losses_67454

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕХ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ь
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentitydropout/SelectV2:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
п
b
)__inference_dropout_3_layer_call_fn_69310

inputs
identityИҐStatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_67425x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Т
Э
(__inference_conv2d_1_layer_call_fn_69200

inputs!
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_67350w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€((: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs:%!

_user_specified_name69194:%!

_user_specified_name69196
ы
b
D__inference_dropout_4_layer_call_and_return_conditional_losses_67533

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
≥
c
G__inference_activation_2_layer_call_and_return_conditional_losses_69006

inputs
identity`
ReluReluinputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€t
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Т!
Ъ
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_66738

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Т!
Ъ
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69048

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐconv2d_transpose/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
valueB:ў
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
valueB:ў
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
valueB:ў
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskР
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0№
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€]
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
ѕ
Ы
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69110

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
≈
t
H__inference_concatenate_1_layer_call_and_return_conditional_losses_68373
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
:€€€€€€€€€љX
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€љ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€d:€€€€€€€€€ў:Q M
'
_output_shapes
:€€€€€€€€€d
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:€€€€€€€€€ў
"
_user_specified_name
inputs_1
≤е
ЧM
__inference__traced_save_69913
file_prefix7
#read_disablecopyonread_dense_kernel:
љА22
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
ўј5
&read_27_disablecopyonread_dense_1_bias:	јC
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
љА2D
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
6read_59_disablecopyonread_rmsprop_velocity_conv2d_bias:M
9read_60_disablecopyonread_rmsprop_velocity_dense_1_kernel:
ўјF
7read_61_disablecopyonread_rmsprop_velocity_dense_1_bias:	јT
:read_62_disablecopyonread_rmsprop_velocity_conv2d_1_kernel:@F
8read_63_disablecopyonread_rmsprop_velocity_conv2d_1_bias:@U
:read_64_disablecopyonread_rmsprop_velocity_conv2d_2_kernel:@АG
8read_65_disablecopyonread_rmsprop_velocity_conv2d_2_bias:	АV
:read_66_disablecopyonread_rmsprop_velocity_conv2d_3_kernel:ААG
8read_67_disablecopyonread_rmsprop_velocity_conv2d_3_bias:	АV
:read_68_disablecopyonread_rmsprop_velocity_conv2d_4_kernel:ААG
8read_69_disablecopyonread_rmsprop_velocity_conv2d_4_bias:	АL
9read_70_disablecopyonread_rmsprop_velocity_dense_2_kernel:	АdE
7read_71_disablecopyonread_rmsprop_velocity_dense_2_bias:+
!read_72_disablecopyonread_total_3: +
!read_73_disablecopyonread_count_3: +
!read_74_disablecopyonread_total_2: +
!read_75_disablecopyonread_count_2: +
!read_76_disablecopyonread_total_1: +
!read_77_disablecopyonread_count_1: )
read_78_disablecopyonread_total: )
read_79_disablecopyonread_count: 
savev2_const
identity_161ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_47/DisableCopyOnReadҐRead_47/ReadVariableOpҐRead_48/DisableCopyOnReadҐRead_48/ReadVariableOpҐRead_49/DisableCopyOnReadҐRead_49/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_50/DisableCopyOnReadҐRead_50/ReadVariableOpҐRead_51/DisableCopyOnReadҐRead_51/ReadVariableOpҐRead_52/DisableCopyOnReadҐRead_52/ReadVariableOpҐRead_53/DisableCopyOnReadҐRead_53/ReadVariableOpҐRead_54/DisableCopyOnReadҐRead_54/ReadVariableOpҐRead_55/DisableCopyOnReadҐRead_55/ReadVariableOpҐRead_56/DisableCopyOnReadҐRead_56/ReadVariableOpҐRead_57/DisableCopyOnReadҐRead_57/ReadVariableOpҐRead_58/DisableCopyOnReadҐRead_58/ReadVariableOpҐRead_59/DisableCopyOnReadҐRead_59/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_60/DisableCopyOnReadҐRead_60/ReadVariableOpҐRead_61/DisableCopyOnReadҐRead_61/ReadVariableOpҐRead_62/DisableCopyOnReadҐRead_62/ReadVariableOpҐRead_63/DisableCopyOnReadҐRead_63/ReadVariableOpҐRead_64/DisableCopyOnReadҐRead_64/ReadVariableOpҐRead_65/DisableCopyOnReadҐRead_65/ReadVariableOpҐRead_66/DisableCopyOnReadҐRead_66/ReadVariableOpҐRead_67/DisableCopyOnReadҐRead_67/ReadVariableOpҐRead_68/DisableCopyOnReadҐRead_68/ReadVariableOpҐRead_69/DisableCopyOnReadҐRead_69/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_70/DisableCopyOnReadҐRead_70/ReadVariableOpҐRead_71/DisableCopyOnReadҐRead_71/ReadVariableOpҐRead_72/DisableCopyOnReadҐRead_72/ReadVariableOpҐRead_73/DisableCopyOnReadҐRead_73/ReadVariableOpҐRead_74/DisableCopyOnReadҐRead_74/ReadVariableOpҐRead_75/DisableCopyOnReadҐRead_75/ReadVariableOpҐRead_76/DisableCopyOnReadҐRead_76/ReadVariableOpҐRead_77/DisableCopyOnReadҐRead_77/ReadVariableOpҐRead_78/DisableCopyOnReadҐRead_78/ReadVariableOpҐRead_79/DisableCopyOnReadҐRead_79/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
 °
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
љА2*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
љА2c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
љА2w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 †
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
 ѓ
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
 Ѓ
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
 µ
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
 є
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
 Є
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
 ™
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
 ∞
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
 ѓ
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
 є
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
 љ
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
 љ
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
 ѓ
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
 ≥
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
 ≤
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
 є
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
 љ
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
 љ
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
 ѓ
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
 ≥
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
 ≤
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
 є
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
 љ
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
 ±
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
 £
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
 ђ
Read_26/ReadVariableOpReadVariableOp(read_26_disablecopyonread_dense_1_kernel^Read_26/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ўј*
dtype0q
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ўјg
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ўј{
Read_27/DisableCopyOnReadDisableCopyOnRead&read_27_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 •
Read_27/ReadVariableOpReadVariableOp&read_27_disablecopyonread_dense_1_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ј*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:јb
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:ј~
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ≥
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
 •
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
 і
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
 ¶
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
 µ
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
 ¶
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
 µ
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
 ¶
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
 Ђ
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
 §
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
 £
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
 °
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
 ї
Read_42/ReadVariableOpReadVariableOp7read_42_disablecopyonread_rmsprop_velocity_dense_kernel^Read_42/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
љА2*
dtype0q
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
љА2g
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0* 
_output_shapes
:
љА2К
Read_43/DisableCopyOnReadDisableCopyOnRead5read_43_disablecopyonread_rmsprop_velocity_dense_bias"/device:CPU:0*
_output_shapes
 і
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
 √
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
 ¬
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
 ћ
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
 Њ
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
 ƒ
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
 √
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
 ќ
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
 ј
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
 ƒ
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
 √
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
 ќ
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
 ј
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
 ƒ
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
 √
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
 ¬
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
 і
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
:О
Read_60/DisableCopyOnReadDisableCopyOnRead9read_60_disablecopyonread_rmsprop_velocity_dense_1_kernel"/device:CPU:0*
_output_shapes
 љ
Read_60/ReadVariableOpReadVariableOp9read_60_disablecopyonread_rmsprop_velocity_dense_1_kernel^Read_60/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
ўј*
dtype0r
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ўјi
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ўјМ
Read_61/DisableCopyOnReadDisableCopyOnRead7read_61_disablecopyonread_rmsprop_velocity_dense_1_bias"/device:CPU:0*
_output_shapes
 ґ
Read_61/ReadVariableOpReadVariableOp7read_61_disablecopyonread_rmsprop_velocity_dense_1_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:ј*
dtype0m
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:јd
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes	
:јП
Read_62/DisableCopyOnReadDisableCopyOnRead:read_62_disablecopyonread_rmsprop_velocity_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ƒ
Read_62/ReadVariableOpReadVariableOp:read_62_disablecopyonread_rmsprop_velocity_conv2d_1_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0x
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Н
Read_63/DisableCopyOnReadDisableCopyOnRead8read_63_disablecopyonread_rmsprop_velocity_conv2d_1_bias"/device:CPU:0*
_output_shapes
 ґ
Read_63/ReadVariableOpReadVariableOp8read_63_disablecopyonread_rmsprop_velocity_conv2d_1_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes
:@П
Read_64/DisableCopyOnReadDisableCopyOnRead:read_64_disablecopyonread_rmsprop_velocity_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ≈
Read_64/ReadVariableOpReadVariableOp:read_64_disablecopyonread_rmsprop_velocity_conv2d_2_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0y
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аp
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АН
Read_65/DisableCopyOnReadDisableCopyOnRead8read_65_disablecopyonread_rmsprop_velocity_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ј
Read_65/ReadVariableOpReadVariableOp8read_65_disablecopyonread_rmsprop_velocity_conv2d_2_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes	
:АП
Read_66/DisableCopyOnReadDisableCopyOnRead:read_66_disablecopyonread_rmsprop_velocity_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_66/ReadVariableOpReadVariableOp:read_66_disablecopyonread_rmsprop_velocity_conv2d_3_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААН
Read_67/DisableCopyOnReadDisableCopyOnRead8read_67_disablecopyonread_rmsprop_velocity_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ј
Read_67/ReadVariableOpReadVariableOp8read_67_disablecopyonread_rmsprop_velocity_conv2d_3_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes	
:АП
Read_68/DisableCopyOnReadDisableCopyOnRead:read_68_disablecopyonread_rmsprop_velocity_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_68/ReadVariableOpReadVariableOp:read_68_disablecopyonread_rmsprop_velocity_conv2d_4_kernel^Read_68/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААН
Read_69/DisableCopyOnReadDisableCopyOnRead8read_69_disablecopyonread_rmsprop_velocity_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ј
Read_69/ReadVariableOpReadVariableOp8read_69_disablecopyonread_rmsprop_velocity_conv2d_4_bias^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes	
:АО
Read_70/DisableCopyOnReadDisableCopyOnRead9read_70_disablecopyonread_rmsprop_velocity_dense_2_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_70/ReadVariableOpReadVariableOp9read_70_disablecopyonread_rmsprop_velocity_dense_2_kernel^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Аd*
dtype0q
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аdh
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:	АdМ
Read_71/DisableCopyOnReadDisableCopyOnRead7read_71_disablecopyonread_rmsprop_velocity_dense_2_bias"/device:CPU:0*
_output_shapes
 µ
Read_71/ReadVariableOpReadVariableOp7read_71_disablecopyonread_rmsprop_velocity_dense_2_bias^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_72/DisableCopyOnReadDisableCopyOnRead!read_72_disablecopyonread_total_3"/device:CPU:0*
_output_shapes
 Ы
Read_72/ReadVariableOpReadVariableOp!read_72_disablecopyonread_total_3^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_73/DisableCopyOnReadDisableCopyOnRead!read_73_disablecopyonread_count_3"/device:CPU:0*
_output_shapes
 Ы
Read_73/ReadVariableOpReadVariableOp!read_73_disablecopyonread_count_3^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_74/DisableCopyOnReadDisableCopyOnRead!read_74_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 Ы
Read_74/ReadVariableOpReadVariableOp!read_74_disablecopyonread_total_2^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_75/DisableCopyOnReadDisableCopyOnRead!read_75_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 Ы
Read_75/ReadVariableOpReadVariableOp!read_75_disablecopyonread_count_2^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_76/DisableCopyOnReadDisableCopyOnRead!read_76_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_76/ReadVariableOpReadVariableOp!read_76_disablecopyonread_total_1^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_77/DisableCopyOnReadDisableCopyOnRead!read_77_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_77/ReadVariableOpReadVariableOp!read_77_disablecopyonread_count_1^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_78/DisableCopyOnReadDisableCopyOnReadread_78_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_78/ReadVariableOpReadVariableOpread_78_disablecopyonread_total^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_79/DisableCopyOnReadDisableCopyOnReadread_79_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_79/ReadVariableOpReadVariableOpread_79_disablecopyonread_count^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
: Ф!
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*љ 
value≥ B∞ QB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:Q*
dtype0*Ј
value≠B™QB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B °
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *_
dtypesU
S2Q		Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_160Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_161IdentityIdentity_160:output:0^NoOp*
T0*
_output_shapes
: ѓ!
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_161Identity_161:output:0*(
_construction_contextkEagerRuntime*є
_input_shapesІ
§: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?
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
_user_specified_nameRMSprop/velocity/conv2d/bias:?=;
9
_user_specified_name!RMSprop/velocity/dense_1/kernel:=>9
7
_user_specified_nameRMSprop/velocity/dense_1/bias:@?<
:
_user_specified_name" RMSprop/velocity/conv2d_1/kernel:>@:
8
_user_specified_name RMSprop/velocity/conv2d_1/bias:@A<
:
_user_specified_name" RMSprop/velocity/conv2d_2/kernel:>B:
8
_user_specified_name RMSprop/velocity/conv2d_2/bias:@C<
:
_user_specified_name" RMSprop/velocity/conv2d_3/kernel:>D:
8
_user_specified_name RMSprop/velocity/conv2d_3/bias:@E<
:
_user_specified_name" RMSprop/velocity/conv2d_4/kernel:>F:
8
_user_specified_name RMSprop/velocity/conv2d_4/bias:?G;
9
_user_specified_name!RMSprop/velocity/dense_2/kernel:=H9
7
_user_specified_nameRMSprop/velocity/dense_2/bias:'I#
!
_user_specified_name	total_3:'J#
!
_user_specified_name	count_3:'K#
!
_user_specified_name	total_2:'L#
!
_user_specified_name	count_2:'M#
!
_user_specified_name	total_1:'N#
!
_user_specified_name	count_1:%O!

_user_specified_nametotal:%P!

_user_specified_namecount:=Q9

_output_shapes
: 

_user_specified_nameConst
џ
±
%__inference_model_layer_call_fn_67245
input_1
unknown:
љА2
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
identityИҐStatefulPartitionedCallЈ
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
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_67131Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:€€€€€€€€€љ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€љ
!
_user_specified_name	input_1:%!

_user_specified_name67191:%!

_user_specified_name67193:%!

_user_specified_name67195:%!

_user_specified_name67197:%!

_user_specified_name67199:%!

_user_specified_name67201:%!

_user_specified_name67203:%!

_user_specified_name67205:%	!

_user_specified_name67207:%
!

_user_specified_name67209:%!

_user_specified_name67211:%!

_user_specified_name67213:%!

_user_specified_name67215:%!

_user_specified_name67217:%!

_user_specified_name67219:%!

_user_specified_name67221:%!

_user_specified_name67223:%!

_user_specified_name67225:%!

_user_specified_name67227:%!

_user_specified_name67229:%!

_user_specified_name67231:%!

_user_specified_name67233:%!

_user_specified_name67235:%!

_user_specified_name67237:%!

_user_specified_name67239:%!

_user_specified_name67241
Й
њ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68978

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИҐAssignNewValueҐAssignNewValue_1ҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0÷
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:::::*
epsilon%oГ:*
exponential_avg_factor%Ќћћ=∆
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(–
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
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
п
І
2__inference_conv2d_transpose_1_layer_call_fn_68901

inputs!
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_66738Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:%!

_user_specified_name68895:%!

_user_specified_name68897
ы
я
'__inference_model_1_layer_call_fn_68403
inputs_0
inputs_1
unknown:
ўј
	unknown_0:	ј#
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
identityИҐStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_1_layer_call_and_return_conditional_losses_67868o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*l
_input_shapes[
Y:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€ў: : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
"
_user_specified_name
inputs_0:RN
(
_output_shapes
:€€€€€€€€€ў
"
_user_specified_name
inputs_1:%!

_user_specified_name68377:%!

_user_specified_name68379:%!

_user_specified_name68381:%!

_user_specified_name68383:%!

_user_specified_name68385:%!

_user_specified_name68387:%!

_user_specified_name68389:%	!

_user_specified_name68391:%
!

_user_specified_name68393:%!

_user_specified_name68395:%!

_user_specified_name68397:%!

_user_specified_name68399
з
`
'__inference_dropout_layer_call_fn_68722

inputs
identityИҐStatefulPartitionedCall≈
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
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
B__inference_dropout_layer_call_and_return_conditional_losses_66972w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€

@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€

@22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€

@
 
_user_specified_nameinputs
ѕ
Ы
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68865

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИҐFusedBatchNormV3/ReadVariableOpҐ!FusedBatchNormV3/ReadVariableOp_1ҐReadVariableOpҐReadVariableOp_1b
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
dtype0»
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
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
ћ

ф
B__inference_dense_2_layer_call_and_return_conditional_losses_67473

inputs1
matmul_readvariableop_resource:	Аd-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€Аd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€Аd
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
З

–
5__inference_batch_normalization_2_layer_call_fn_68960

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_66783Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs:%!

_user_specified_name68950:%!

_user_specified_name68952:%!

_user_specified_name68954:%!

_user_specified_name68956
–

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_69233

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::нѕФ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>Ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€@T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ы
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentitydropout/SelectV2:output:0*
T0*/
_output_shapes
:€€€€€€€€€@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€@:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ў
^
B__inference_reshape_layer_call_and_return_conditional_losses_66959

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
value	B :@©
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:l
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@`
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€

@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А2:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
юY
°
@__inference_model_layer_call_and_return_conditional_losses_67131
input_1
dense_67056:
љА2
dense_67058:	А2(
batch_normalization_67061:	А2(
batch_normalization_67063:	А2(
batch_normalization_67065:	А2(
batch_normalization_67067:	А20
conv2d_transpose_67079: @$
conv2d_transpose_67081: )
batch_normalization_1_67084: )
batch_normalization_1_67086: )
batch_normalization_1_67088: )
batch_normalization_1_67090: 2
conv2d_transpose_1_67095: &
conv2d_transpose_1_67097:)
batch_normalization_2_67100:)
batch_normalization_2_67102:)
batch_normalization_2_67104:)
batch_normalization_2_67106:2
conv2d_transpose_2_67110:&
conv2d_transpose_2_67112:)
batch_normalization_3_67115:)
batch_normalization_3_67117:)
batch_normalization_3_67119:)
batch_normalization_3_67121:&
conv2d_67125:
conv2d_67127:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallг
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_67056dense_67058*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_66925ф
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_67061batch_normalization_67063batch_normalization_67065batch_normalization_67067*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_66541к
activation/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_activation_layer_call_and_return_conditional_losses_66944Џ
reshape/PartitionedCallPartitionedCall#activation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
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
B__inference_reshape_layer_call_and_return_conditional_losses_66959„
dropout/PartitionedCallPartitionedCall reshape/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€
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
B__inference_dropout_layer_call_and_return_conditional_losses_67076х
up_sampling2d/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_66579«
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_transpose_67079conv2d_transpose_67081*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_66617§
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_67084batch_normalization_1_67086batch_normalization_1_67088batch_normalization_1_67090*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_66662Й
activation_1/PartitionedCallPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_1_layer_call_and_return_conditional_losses_66993ю
up_sampling2d_1/PartitionedCallPartitionedCall%activation_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_66700—
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_transpose_1_67095conv2d_transpose_1_67097*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_66738¶
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_2_67100batch_normalization_2_67102batch_normalization_2_67104batch_normalization_2_67106*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_66783Й
activation_2/PartitionedCallPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_2_layer_call_and_return_conditional_losses_67014ќ
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0conv2d_transpose_2_67110conv2d_transpose_2_67112*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_66842¶
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_3_67115batch_normalization_3_67117batch_normalization_3_67119batch_normalization_3_67121*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_66887Й
activation_3/PartitionedCallPartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_activation_3_layer_call_and_return_conditional_losses_67034Ю
conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0conv2d_67125conv2d_67127*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_67046Р
IdentityIdentity'conv2d/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€¶
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:€€€€€€€€€љ: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
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
:€€€€€€€€€љ
!
_user_specified_name	input_1:%!

_user_specified_name67056:%!

_user_specified_name67058:%!

_user_specified_name67061:%!

_user_specified_name67063:%!

_user_specified_name67065:%!

_user_specified_name67067:%!

_user_specified_name67079:%!

_user_specified_name67081:%	!

_user_specified_name67084:%
!

_user_specified_name67086:%!

_user_specified_name67088:%!

_user_specified_name67090:%!

_user_specified_name67095:%!

_user_specified_name67097:%!

_user_specified_name67100:%!

_user_specified_name67102:%!

_user_specified_name67104:%!

_user_specified_name67106:%!

_user_specified_name67110:%!

_user_specified_name67112:%!

_user_specified_name67115:%!

_user_specified_name67117:%!

_user_specified_name67119:%!

_user_specified_name67121:%!

_user_specified_name67125:%!

_user_specified_name67127
б
±
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68688

inputs0
!batchnorm_readvariableop_resource:	А24
%batchnorm_mul_readvariableop_resource:	А22
#batchnorm_readvariableop_1_resource:	А22
#batchnorm_readvariableop_2_resource:	А2
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpw
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
:€€€€€€€€€А2{
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
:€€€€€€€€€А2c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2Ц
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А2: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А2
 
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
ы
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_69285

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€

Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€

А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€

А:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
Ґ	
“
3__inference_batch_normalization_layer_call_fn_68634

inputs
unknown:	А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А2*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_66541p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А2: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs:%!

_user_specified_name68624:%!

_user_specified_name68626:%!

_user_specified_name68628:%!

_user_specified_name68630" L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*и
serving_default‘
;
input_40
serving_default_input_4:0€€€€€€€€€d
<
input_51
serving_default_input_5:0€€€€€€€€€ў;
model_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:аС
Ў
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
•
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
∆
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
¶
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
 
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
Ѕ
ntrace_0
otrace_12К
'__inference_model_2_layer_call_fn_68125
'__inference_model_2_layer_call_fn_68207µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zntrace_0zotrace_1
ч
ptrace_0
qtrace_12ј
B__inference_model_2_layer_call_and_return_conditional_losses_67895
B__inference_model_2_layer_call_and_return_conditional_losses_68043µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zptrace_0zqtrace_1
‘B—
 __inference__wrapped_model_66487input_4input_5"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
і
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
≠
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
й
Аtrace_02 
-__inference_concatenate_1_layer_call_fn_68366Ш
С≤Н
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
annotations™ *
 zАtrace_0
Д
Бtrace_02е
H__inference_concatenate_1_layer_call_and_return_conditional_losses_68373Ш
С≤Н
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
annotations™ *
 zБtrace_0
"
_tf_keras_input_layer
Ѕ
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
с
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
Ђ
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Х	variables
Цtrainable_variables
Чregularization_losses
Ш	keras_api
Щ__call__
+Ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses
°_random_generator"
_tf_keras_layer
Ђ
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses"
_tf_keras_layer
д
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses

Ikernel
Jbias
!Ѓ_jit_compiled_convolution_op"
_tf_keras_layer
с
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
	µaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance"
_tf_keras_layer
Ђ
ґ	variables
Јtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Љ	variables
љtrainable_variables
Њregularization_losses
њ	keras_api
ј__call__
+Ѕ&call_and_return_all_conditional_losses"
_tf_keras_layer
д
¬	variables
√trainable_variables
ƒregularization_losses
≈	keras_api
∆__call__
+«&call_and_return_all_conditional_losses

Okernel
Pbias
!»_jit_compiled_convolution_op"
_tf_keras_layer
с
…	variables
 trainable_variables
Ћregularization_losses
ћ	keras_api
Ќ__call__
+ќ&call_and_return_all_conditional_losses
	ѕaxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance"
_tf_keras_layer
Ђ
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘__call__
+’&call_and_return_all_conditional_losses"
_tf_keras_layer
д
÷	variables
„trainable_variables
Ўregularization_losses
ў	keras_api
Џ__call__
+џ&call_and_return_all_conditional_losses

Ukernel
Vbias
!№_jit_compiled_convolution_op"
_tf_keras_layer
с
Ё	variables
ёtrainable_variables
яregularization_losses
а	keras_api
б__call__
+в&call_and_return_all_conditional_losses
	гaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance"
_tf_keras_layer
Ђ
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses"
_tf_keras_layer
д
к	variables
лtrainable_variables
мregularization_losses
н	keras_api
о__call__
+п&call_and_return_all_conditional_losses

[kernel
\bias
!р_jit_compiled_convolution_op"
_tf_keras_layer
ж
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
¶
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
≤
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
Ѕ
цtrace_0
чtrace_12Ж
%__inference_model_layer_call_fn_67188
%__inference_model_layer_call_fn_67245µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zцtrace_0zчtrace_1
ч
шtrace_0
щtrace_12Љ
@__inference_model_layer_call_and_return_conditional_losses_67053
@__inference_model_layer_call_and_return_conditional_losses_67131µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zшtrace_0zщtrace_1
"
_tf_keras_input_layer
Ѕ
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+€&call_and_return_all_conditional_losses

]kernel
^bias"
_tf_keras_layer
"
_tf_keras_input_layer
Ђ
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"
_tf_keras_layer
д
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
√
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses
Щ_random_generator"
_tf_keras_layer
д
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses

akernel
bbias
!†_jit_compiled_convolution_op"
_tf_keras_layer
√
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses
І_random_generator"
_tf_keras_layer
д
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses

ckernel
dbias
!Ѓ_jit_compiled_convolution_op"
_tf_keras_layer
√
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses
µ_random_generator"
_tf_keras_layer
д
ґ	variables
Јtrainable_variables
Єregularization_losses
є	keras_api
Ї__call__
+ї&call_and_return_all_conditional_losses

ekernel
fbias
!Љ_jit_compiled_convolution_op"
_tf_keras_layer
√
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√_random_generator"
_tf_keras_layer
Ђ
ƒ	variables
≈trainable_variables
∆regularization_losses
«	keras_api
»__call__
+…&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
 	variables
Ћtrainable_variables
ћregularization_losses
Ќ	keras_api
ќ__call__
+ѕ&call_and_return_all_conditional_losses

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
≤
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ѕ
’trace_0
÷trace_1
„trace_2
Ўtrace_32№
'__inference_model_1_layer_call_fn_67572
'__inference_model_1_layer_call_fn_67602
'__inference_model_1_layer_call_fn_68403
'__inference_model_1_layer_call_fn_68433µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z’trace_0z÷trace_1z„trace_2zЎtrace_3
ї
ўtrace_0
Џtrace_1
џtrace_2
№trace_32»
B__inference_model_1_layer_call_and_return_conditional_losses_67480
B__inference_model_1_layer_call_and_return_conditional_losses_67542
B__inference_model_1_layer_call_and_return_conditional_losses_68525
B__inference_model_1_layer_call_and_return_conditional_losses_68589µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zўtrace_0zЏtrace_1zџtrace_2z№trace_3
Љ
Ё
_variables
ё_iterations
я_learning_rate
а_index_dict
б_velocities
в
_momentums
г_average_gradients
д_update_step_xla"
experimentalOptimizer
 :
љА22dense/kernel
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
ўј2dense_1/kernel
:ј2dense_1/bias
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
ґ
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
е0
ж1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBх
'__inference_model_2_layer_call_fn_68125input_4input_5"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
'__inference_model_2_layer_call_fn_68207input_4input_5"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_2_layer_call_and_return_conditional_losses_67895input_4input_5"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_2_layer_call_and_return_conditional_losses_68043input_4input_5"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ј
s0
з1
и2
й3
к4
л5
м6
н7
о8
п9
р10
с11
т12
у13
ф14
х15
ц16
ч17
ш18"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Є
з0
и1
й2
к3
л4
м5
н6
о7
п8
р9
с10
т11
у12
ф13
х14
ц15
ч16
ш17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
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
annotations™ *
 0
—Bќ
#__inference_signature_wrapper_68358input_4input_5"Ф
Н≤Й
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
annotations™ *
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
гBа
-__inference_concatenate_1_layer_call_fn_68366inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
 
юBы
H__inference_concatenate_1_layer_call_and_return_conditional_losses_68373inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
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
Є
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
б
юtrace_02¬
%__inference_dense_layer_call_fn_68598Ш
С≤Н
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
annotations™ *
 zюtrace_0
ь
€trace_02Ё
@__inference_dense_layer_call_and_return_conditional_losses_68608Ш
С≤Н
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
annotations™ *
 z€trace_0
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
Є
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
Ё
Еtrace_0
Жtrace_12Ґ
3__inference_batch_normalization_layer_call_fn_68621
3__inference_batch_normalization_layer_call_fn_68634µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЕtrace_0zЖtrace_1
У
Зtrace_0
Иtrace_12Ў
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68668
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68688µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0zИtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
ж
Оtrace_02«
*__inference_activation_layer_call_fn_68693Ш
С≤Н
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
annotations™ *
 zОtrace_0
Б
Пtrace_02в
E__inference_activation_layer_call_and_return_conditional_losses_68698Ш
С≤Н
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
annotations™ *
 zПtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
Х	variables
Цtrainable_variables
Чregularization_losses
Щ__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
г
Хtrace_02ƒ
'__inference_reshape_layer_call_fn_68703Ш
С≤Н
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
annotations™ *
 zХtrace_0
ю
Цtrace_02я
B__inference_reshape_layer_call_and_return_conditional_losses_68717Ш
С≤Н
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
annotations™ *
 zЦtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Чnon_trainable_variables
Шlayers
Щmetrics
 Ъlayer_regularization_losses
Ыlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
є
Ьtrace_0
Эtrace_12ю
'__inference_dropout_layer_call_fn_68722
'__inference_dropout_layer_call_fn_68727©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЬtrace_0zЭtrace_1
п
Юtrace_0
Яtrace_12і
B__inference_dropout_layer_call_and_return_conditional_losses_68739
B__inference_dropout_layer_call_and_return_conditional_losses_68744©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЮtrace_0zЯtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
й
•trace_02 
-__inference_up_sampling2d_layer_call_fn_68749Ш
С≤Н
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
annotations™ *
 z•trace_0
Д
¶trace_02е
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_68761Ш
С≤Н
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
annotations™ *
 z¶trace_0
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
Є
Іnon_trainable_variables
®layers
©metrics
 ™layer_regularization_losses
Ђlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
м
ђtrace_02Ќ
0__inference_conv2d_transpose_layer_call_fn_68770Ш
С≤Н
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
annotations™ *
 zђtrace_0
З
≠trace_02и
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_68803Ш
С≤Н
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
annotations™ *
 z≠trace_0
™2І§
Ы≤Ч
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
annotations™ *
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
Є
Ѓnon_trainable_variables
ѓlayers
∞metrics
 ±layer_regularization_losses
≤layer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
б
≥trace_0
іtrace_12¶
5__inference_batch_normalization_1_layer_call_fn_68816
5__inference_batch_normalization_1_layer_call_fn_68829µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≥trace_0zіtrace_1
Ч
µtrace_0
ґtrace_12№
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68847
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68865µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zµtrace_0zґtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
ґ	variables
Јtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
и
Љtrace_02…
,__inference_activation_1_layer_call_fn_68870Ш
С≤Н
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
annotations™ *
 zЉtrace_0
Г
љtrace_02д
G__inference_activation_1_layer_call_and_return_conditional_losses_68875Ш
С≤Н
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
annotations™ *
 zљtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Њnon_trainable_variables
њlayers
јmetrics
 Ѕlayer_regularization_losses
¬layer_metrics
Љ	variables
љtrainable_variables
Њregularization_losses
ј__call__
+Ѕ&call_and_return_all_conditional_losses
'Ѕ"call_and_return_conditional_losses"
_generic_user_object
л
√trace_02ћ
/__inference_up_sampling2d_1_layer_call_fn_68880Ш
С≤Н
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
annotations™ *
 z√trace_0
Ж
ƒtrace_02з
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_68892Ш
С≤Н
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
annotations™ *
 zƒtrace_0
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
Є
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
¬	variables
√trainable_variables
ƒregularization_losses
∆__call__
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
о
 trace_02ѕ
2__inference_conv2d_transpose_1_layer_call_fn_68901Ш
С≤Н
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
annotations™ *
 z trace_0
Й
Ћtrace_02к
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_68934Ш
С≤Н
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
annotations™ *
 zЋtrace_0
™2І§
Ы≤Ч
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
annotations™ *
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
Є
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
…	variables
 trainable_variables
Ћregularization_losses
Ќ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
б
—trace_0
“trace_12¶
5__inference_batch_normalization_2_layer_call_fn_68947
5__inference_batch_normalization_2_layer_call_fn_68960µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z—trace_0z“trace_1
Ч
”trace_0
‘trace_12№
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68978
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68996µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0z‘trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
–	variables
—trainable_variables
“regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
и
Џtrace_02…
,__inference_activation_2_layer_call_fn_69001Ш
С≤Н
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
annotations™ *
 zЏtrace_0
Г
џtrace_02д
G__inference_activation_2_layer_call_and_return_conditional_losses_69006Ш
С≤Н
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
annotations™ *
 zџtrace_0
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
Є
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
÷	variables
„trainable_variables
Ўregularization_losses
Џ__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
о
бtrace_02ѕ
2__inference_conv2d_transpose_2_layer_call_fn_69015Ш
С≤Н
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
annotations™ *
 zбtrace_0
Й
вtrace_02к
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69048Ш
С≤Н
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
annotations™ *
 zвtrace_0
™2І§
Ы≤Ч
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
annotations™ *
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
Є
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
Ё	variables
ёtrainable_variables
яregularization_losses
б__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
б
иtrace_0
йtrace_12¶
5__inference_batch_normalization_3_layer_call_fn_69061
5__inference_batch_normalization_3_layer_call_fn_69074µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zиtrace_0zйtrace_1
Ч
кtrace_0
лtrace_12№
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69092
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69110µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zкtrace_0zлtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
мnon_trainable_variables
нlayers
оmetrics
 пlayer_regularization_losses
рlayer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
и
сtrace_02…
,__inference_activation_3_layer_call_fn_69115Ш
С≤Н
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
annotations™ *
 zсtrace_0
Г
тtrace_02д
G__inference_activation_3_layer_call_and_return_conditional_losses_69120Ш
С≤Н
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
annotations™ *
 zтtrace_0
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
Є
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
к	variables
лtrainable_variables
мregularization_losses
о__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
в
шtrace_02√
&__inference_conv2d_layer_call_fn_69129Ш
С≤Н
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
annotations™ *
 zшtrace_0
э
щtrace_02ё
A__inference_conv2d_layer_call_and_return_conditional_losses_69140Ш
С≤Н
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
annotations™ *
 zщtrace_0
™2І§
Ы≤Ч
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
annotations™ *
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
¶
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
нBк
%__inference_model_layer_call_fn_67188input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
%__inference_model_layer_call_fn_67245input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ИBЕ
@__inference_model_layer_call_and_return_conditional_losses_67053input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ИBЕ
@__inference_model_layer_call_and_return_conditional_losses_67131input_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses"
_generic_user_object
г
€trace_02ƒ
'__inference_dense_1_layer_call_fn_69149Ш
С≤Н
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
annotations™ *
 z€trace_0
ю
Аtrace_02я
B__inference_dense_1_layer_call_and_return_conditional_losses_69159Ш
С≤Н
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
annotations™ *
 zАtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
е
Жtrace_02∆
)__inference_reshape_1_layer_call_fn_69164Ш
С≤Н
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
annotations™ *
 zЖtrace_0
А
Зtrace_02б
D__inference_reshape_1_layer_call_and_return_conditional_losses_69178Ш
С≤Н
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
annotations™ *
 zЗtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
з
Нtrace_02»
+__inference_concatenate_layer_call_fn_69184Ш
С≤Н
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
annotations™ *
 zНtrace_0
В
Оtrace_02г
F__inference_concatenate_layer_call_and_return_conditional_losses_69191Ш
С≤Н
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
annotations™ *
 zОtrace_0
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
д
Фtrace_02≈
(__inference_conv2d_1_layer_call_fn_69200Ш
С≤Н
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
annotations™ *
 zФtrace_0
€
Хtrace_02а
C__inference_conv2d_1_layer_call_and_return_conditional_losses_69211Ш
С≤Н
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
annotations™ *
 zХtrace_0
™2І§
Ы≤Ч
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
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
љ
Ыtrace_0
Ьtrace_12В
)__inference_dropout_1_layer_call_fn_69216
)__inference_dropout_1_layer_call_fn_69221©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЫtrace_0zЬtrace_1
у
Эtrace_0
Юtrace_12Є
D__inference_dropout_1_layer_call_and_return_conditional_losses_69233
D__inference_dropout_1_layer_call_and_return_conditional_losses_69238©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0zЮtrace_1
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
Є
Яnon_trainable_variables
†layers
°metrics
 Ґlayer_regularization_losses
£layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
д
§trace_02≈
(__inference_conv2d_2_layer_call_fn_69247Ш
С≤Н
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
annotations™ *
 z§trace_0
€
•trace_02а
C__inference_conv2d_2_layer_call_and_return_conditional_losses_69258Ш
С≤Н
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
annotations™ *
 z•trace_0
™2І§
Ы≤Ч
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
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
љ
Ђtrace_0
ђtrace_12В
)__inference_dropout_2_layer_call_fn_69263
)__inference_dropout_2_layer_call_fn_69268©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЂtrace_0zђtrace_1
у
≠trace_0
Ѓtrace_12Є
D__inference_dropout_2_layer_call_and_return_conditional_losses_69280
D__inference_dropout_2_layer_call_and_return_conditional_losses_69285©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0zЃtrace_1
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
Є
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
д
іtrace_02≈
(__inference_conv2d_3_layer_call_fn_69294Ш
С≤Н
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
annotations™ *
 zіtrace_0
€
µtrace_02а
C__inference_conv2d_3_layer_call_and_return_conditional_losses_69305Ш
С≤Н
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
annotations™ *
 zµtrace_0
™2І§
Ы≤Ч
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
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ґnon_trainable_variables
Јlayers
Єmetrics
 єlayer_regularization_losses
Їlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
љ
їtrace_0
Љtrace_12В
)__inference_dropout_3_layer_call_fn_69310
)__inference_dropout_3_layer_call_fn_69315©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zїtrace_0zЉtrace_1
у
љtrace_0
Њtrace_12Є
D__inference_dropout_3_layer_call_and_return_conditional_losses_69327
D__inference_dropout_3_layer_call_and_return_conditional_losses_69332©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0zЊtrace_1
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
Є
њnon_trainable_variables
јlayers
Ѕmetrics
 ¬layer_regularization_losses
√layer_metrics
ґ	variables
Јtrainable_variables
Єregularization_losses
Ї__call__
+ї&call_and_return_all_conditional_losses
'ї"call_and_return_conditional_losses"
_generic_user_object
д
ƒtrace_02≈
(__inference_conv2d_4_layer_call_fn_69341Ш
С≤Н
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
annotations™ *
 zƒtrace_0
€
≈trace_02а
C__inference_conv2d_4_layer_call_and_return_conditional_losses_69352Ш
С≤Н
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
annotations™ *
 z≈trace_0
™2І§
Ы≤Ч
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
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
љ
Ћtrace_0
ћtrace_12В
)__inference_dropout_4_layer_call_fn_69357
)__inference_dropout_4_layer_call_fn_69362©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЋtrace_0zћtrace_1
у
Ќtrace_0
ќtrace_12Є
D__inference_dropout_4_layer_call_and_return_conditional_losses_69374
D__inference_dropout_4_layer_call_and_return_conditional_losses_69379©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0zќtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
ƒ	variables
≈trainable_variables
∆regularization_losses
»__call__
+…&call_and_return_all_conditional_losses
'…"call_and_return_conditional_losses"
_generic_user_object
г
‘trace_02ƒ
'__inference_flatten_layer_call_fn_69384Ш
С≤Н
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
annotations™ *
 z‘trace_0
ю
’trace_02я
B__inference_flatten_layer_call_and_return_conditional_losses_69390Ш
С≤Н
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
annotations™ *
 z’trace_0
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
 	variables
Ћtrainable_variables
ћregularization_losses
ќ__call__
+ѕ&call_and_return_all_conditional_losses
'ѕ"call_and_return_conditional_losses"
_generic_user_object
г
џtrace_02ƒ
'__inference_dense_2_layer_call_fn_69399Ш
С≤Н
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
annotations™ *
 zџtrace_0
ю
№trace_02я
B__inference_dense_2_layer_call_and_return_conditional_losses_69410Ш
С≤Н
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
annotations™ *
 z№trace_0
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
Ё0
ё1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
шBх
'__inference_model_1_layer_call_fn_67572input_2input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
'__inference_model_1_layer_call_fn_67602input_2input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
'__inference_model_1_layer_call_fn_68403inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
'__inference_model_1_layer_call_fn_68433inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_1_layer_call_and_return_conditional_losses_67480input_2input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
УBР
B__inference_model_1_layer_call_and_return_conditional_losses_67542input_2input_3"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
B__inference_model_1_layer_call_and_return_conditional_losses_68525inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
B__inference_model_1_layer_call_and_return_conditional_losses_68589inputs_0inputs_1"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Л
ё0
я1
а2
б3
в4
г5
д6
е7
ж8
з9
и10
й11
к12"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
я0
а1
б2
в3
г4
д5
е6
ж7
з8
и9
й10
к11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
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
annotations™ *
 0
R
л	variables
м	keras_api

нtotal

оcount"
_tf_keras_metric
c
п	variables
р	keras_api

сtotal

тcount
у
_fn_kwargs"
_tf_keras_metric
/:-
љА22RMSprop/velocity/dense/kernel
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
ѕBћ
%__inference_dense_layer_call_fn_68598inputs"Ш
С≤Н
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
annotations™ *
 
кBз
@__inference_dense_layer_call_and_return_conditional_losses_68608inputs"Ш
С≤Н
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
annotations™ *
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
ъBч
3__inference_batch_normalization_layer_call_fn_68621inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
3__inference_batch_normalization_layer_call_fn_68634inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68668inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ХBТ
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68688inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
‘B—
*__inference_activation_layer_call_fn_68693inputs"Ш
С≤Н
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
annotations™ *
 
пBм
E__inference_activation_layer_call_and_return_conditional_losses_68698inputs"Ш
С≤Н
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
annotations™ *
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
—Bќ
'__inference_reshape_layer_call_fn_68703inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_reshape_layer_call_and_return_conditional_losses_68717inputs"Ш
С≤Н
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
annotations™ *
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
вBя
'__inference_dropout_layer_call_fn_68722inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
вBя
'__inference_dropout_layer_call_fn_68727inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
B__inference_dropout_layer_call_and_return_conditional_losses_68739inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
эBъ
B__inference_dropout_layer_call_and_return_conditional_losses_68744inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
„B‘
-__inference_up_sampling2d_layer_call_fn_68749inputs"Ш
С≤Н
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
annotations™ *
 
тBп
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_68761inputs"Ш
С≤Н
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
annotations™ *
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
ЏB„
0__inference_conv2d_transpose_layer_call_fn_68770inputs"Ш
С≤Н
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
annotations™ *
 
хBт
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_68803inputs"Ш
С≤Н
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
annotations™ *
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
ьBщ
5__inference_batch_normalization_1_layer_call_fn_68816inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
5__inference_batch_normalization_1_layer_call_fn_68829inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68847inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68865inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
÷B”
,__inference_activation_1_layer_call_fn_68870inputs"Ш
С≤Н
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
annotations™ *
 
сBо
G__inference_activation_1_layer_call_and_return_conditional_losses_68875inputs"Ш
С≤Н
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
annotations™ *
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
ўB÷
/__inference_up_sampling2d_1_layer_call_fn_68880inputs"Ш
С≤Н
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
annotations™ *
 
фBс
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_68892inputs"Ш
С≤Н
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
annotations™ *
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
№Bў
2__inference_conv2d_transpose_1_layer_call_fn_68901inputs"Ш
С≤Н
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
annotations™ *
 
чBф
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_68934inputs"Ш
С≤Н
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
annotations™ *
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
ьBщ
5__inference_batch_normalization_2_layer_call_fn_68947inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
5__inference_batch_normalization_2_layer_call_fn_68960inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68978inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68996inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
÷B”
,__inference_activation_2_layer_call_fn_69001inputs"Ш
С≤Н
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
annotations™ *
 
сBо
G__inference_activation_2_layer_call_and_return_conditional_losses_69006inputs"Ш
С≤Н
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
annotations™ *
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
№Bў
2__inference_conv2d_transpose_2_layer_call_fn_69015inputs"Ш
С≤Н
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
annotations™ *
 
чBф
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69048inputs"Ш
С≤Н
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
annotations™ *
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
ьBщ
5__inference_batch_normalization_3_layer_call_fn_69061inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ьBщ
5__inference_batch_normalization_3_layer_call_fn_69074inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69092inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЧBФ
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69110inputs"µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
÷B”
,__inference_activation_3_layer_call_fn_69115inputs"Ш
С≤Н
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
annotations™ *
 
сBо
G__inference_activation_3_layer_call_and_return_conditional_losses_69120inputs"Ш
С≤Н
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
annotations™ *
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
–BЌ
&__inference_conv2d_layer_call_fn_69129inputs"Ш
С≤Н
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
annotations™ *
 
лBи
A__inference_conv2d_layer_call_and_return_conditional_losses_69140inputs"Ш
С≤Н
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
annotations™ *
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
—Bќ
'__inference_dense_1_layer_call_fn_69149inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_dense_1_layer_call_and_return_conditional_losses_69159inputs"Ш
С≤Н
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
annotations™ *
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
”B–
)__inference_reshape_1_layer_call_fn_69164inputs"Ш
С≤Н
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
annotations™ *
 
оBл
D__inference_reshape_1_layer_call_and_return_conditional_losses_69178inputs"Ш
С≤Н
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
annotations™ *
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
бBё
+__inference_concatenate_layer_call_fn_69184inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
 
ьBщ
F__inference_concatenate_layer_call_and_return_conditional_losses_69191inputs_0inputs_1"Ш
С≤Н
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
annotations™ *
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
“Bѕ
(__inference_conv2d_1_layer_call_fn_69200inputs"Ш
С≤Н
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
annotations™ *
 
нBк
C__inference_conv2d_1_layer_call_and_return_conditional_losses_69211inputs"Ш
С≤Н
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
annotations™ *
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
дBб
)__inference_dropout_1_layer_call_fn_69216inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_1_layer_call_fn_69221inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_1_layer_call_and_return_conditional_losses_69233inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_1_layer_call_and_return_conditional_losses_69238inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
“Bѕ
(__inference_conv2d_2_layer_call_fn_69247inputs"Ш
С≤Н
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
annotations™ *
 
нBк
C__inference_conv2d_2_layer_call_and_return_conditional_losses_69258inputs"Ш
С≤Н
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
annotations™ *
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
дBб
)__inference_dropout_2_layer_call_fn_69263inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_2_layer_call_fn_69268inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_2_layer_call_and_return_conditional_losses_69280inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_2_layer_call_and_return_conditional_losses_69285inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
“Bѕ
(__inference_conv2d_3_layer_call_fn_69294inputs"Ш
С≤Н
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
annotations™ *
 
нBк
C__inference_conv2d_3_layer_call_and_return_conditional_losses_69305inputs"Ш
С≤Н
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
annotations™ *
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
дBб
)__inference_dropout_3_layer_call_fn_69310inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_3_layer_call_fn_69315inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_3_layer_call_and_return_conditional_losses_69327inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_3_layer_call_and_return_conditional_losses_69332inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
“Bѕ
(__inference_conv2d_4_layer_call_fn_69341inputs"Ш
С≤Н
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
annotations™ *
 
нBк
C__inference_conv2d_4_layer_call_and_return_conditional_losses_69352inputs"Ш
С≤Н
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
annotations™ *
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
дBб
)__inference_dropout_4_layer_call_fn_69357inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
дBб
)__inference_dropout_4_layer_call_fn_69362inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_4_layer_call_and_return_conditional_losses_69374inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
D__inference_dropout_4_layer_call_and_return_conditional_losses_69379inputs"©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
—Bќ
'__inference_flatten_layer_call_fn_69384inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_flatten_layer_call_and_return_conditional_losses_69390inputs"Ш
С≤Н
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
annotations™ *
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
—Bќ
'__inference_dense_2_layer_call_fn_69399inputs"Ш
С≤Н
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
annotations™ *
 
мBй
B__inference_dense_2_layer_call_and_return_conditional_losses_69410inputs"Ш
С≤Н
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
annotations™ *
 
R
ф	variables
х	keras_api

цtotal

чcount"
_tf_keras_metric
c
ш	variables
щ	keras_api

ъtotal

ыcount
ь
_fn_kwargs"
_tf_keras_metric
1:/
ўј2RMSprop/velocity/dense_1/kernel
*:(ј2RMSprop/velocity/dense_1/bias
8:6@2 RMSprop/velocity/conv2d_1/kernel
*:(@2RMSprop/velocity/conv2d_1/bias
9:7@А2 RMSprop/velocity/conv2d_2/kernel
+:)А2RMSprop/velocity/conv2d_2/bias
::8АА2 RMSprop/velocity/conv2d_3/kernel
+:)А2RMSprop/velocity/conv2d_3/bias
::8АА2 RMSprop/velocity/conv2d_4/kernel
+:)А2RMSprop/velocity/conv2d_4/bias
0:.	Аd2RMSprop/velocity/dense_2/kernel
):'2RMSprop/velocity/dense_2/bias
0
н0
о1"
trackable_list_wrapper
.
л	variables"
_generic_user_object
:  (2total
:  (2count
0
с0
т1"
trackable_list_wrapper
.
п	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
ц0
ч1"
trackable_list_wrapper
.
ф	variables"
_generic_user_object
:  (2total
:  (2count
0
ъ0
ы1"
trackable_list_wrapper
.
ш	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperџ
 __inference__wrapped_model_66487ґ&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghYҐV
OҐL
JЪG
!К
input_4€€€€€€€€€d
"К
input_5€€€€€€€€€ў
™ "1™.
,
model_1!К
model_1€€€€€€€€€я
G__inference_activation_1_layer_call_and_return_conditional_losses_68875УIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ є
,__inference_activation_1_layer_call_fn_68870ИIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ я
G__inference_activation_2_layer_call_and_return_conditional_losses_69006УIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ є
,__inference_activation_2_layer_call_fn_69001ИIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€я
G__inference_activation_3_layer_call_and_return_conditional_losses_69120УIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ є
,__inference_activation_3_layer_call_fn_69115ИIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€™
E__inference_activation_layer_call_and_return_conditional_losses_68698a0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ Д
*__inference_activation_layer_call_fn_68693V0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ ""К
unknown€€€€€€€€€А2ц
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68847°KLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ц
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_68865°KLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ –
5__inference_batch_normalization_1_layer_call_fn_68816ЦKLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ –
5__inference_batch_normalization_1_layer_call_fn_68829ЦKLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ц
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68978°QRSTQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ц
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_68996°QRSTQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
5__inference_batch_normalization_2_layer_call_fn_68947ЦQRSTQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€–
5__inference_batch_normalization_2_layer_call_fn_68960ЦQRSTQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ц
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69092°WXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ц
P__inference_batch_normalization_3_layer_call_and_return_conditional_losses_69110°WXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ –
5__inference_batch_normalization_3_layer_call_fn_69061ЦWXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€–
5__inference_batch_normalization_3_layer_call_fn_69074ЦWXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ѕ
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68668oGHEF8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ Ѕ
N__inference_batch_normalization_layer_call_and_return_conditional_losses_68688oHEGF8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ Ы
3__inference_batch_normalization_layer_call_fn_68621dGHEF8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p

 
™ ""К
unknown€€€€€€€€€А2Ы
3__inference_batch_normalization_layer_call_fn_68634dHEGF8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p 

 
™ ""К
unknown€€€€€€€€€А2ў
H__inference_concatenate_1_layer_call_and_return_conditional_losses_68373М[ҐX
QҐN
LЪI
"К
inputs_0€€€€€€€€€d
#К 
inputs_1€€€€€€€€€ў
™ "-Ґ*
#К 
tensor_0€€€€€€€€€љ
Ъ ≥
-__inference_concatenate_1_layer_call_fn_68366Б[ҐX
QҐN
LЪI
"К
inputs_0€€€€€€€€€d
#К 
inputs_1€€€€€€€€€ў
™ ""К
unknown€€€€€€€€€љн
F__inference_concatenate_layer_call_and_return_conditional_losses_69191ҐjҐg
`Ґ]
[ЪX
*К'
inputs_0€€€€€€€€€((
*К'
inputs_1€€€€€€€€€((
™ "4Ґ1
*К'
tensor_0€€€€€€€€€((
Ъ «
+__inference_concatenate_layer_call_fn_69184ЧjҐg
`Ґ]
[ЪX
*К'
inputs_0€€€€€€€€€((
*К'
inputs_1€€€€€€€€€((
™ ")К&
unknown€€€€€€€€€((Ї
C__inference_conv2d_1_layer_call_and_return_conditional_losses_69211s_`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€((
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ Ф
(__inference_conv2d_1_layer_call_fn_69200h_`7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€((
™ ")К&
unknown€€€€€€€€€@ї
C__inference_conv2d_2_layer_call_and_return_conditional_losses_69258tab7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "5Ґ2
+К(
tensor_0€€€€€€€€€

А
Ъ Х
(__inference_conv2d_2_layer_call_fn_69247iab7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "*К'
unknown€€€€€€€€€

АЉ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_69305ucd8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ц
(__inference_conv2d_3_layer_call_fn_69294jcd8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "*К'
unknown€€€€€€€€€АЉ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_69352uef8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ц
(__inference_conv2d_4_layer_call_fn_69341jef8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "*К'
unknown€€€€€€€€€АЁ
A__inference_conv2d_layer_call_and_return_conditional_losses_69140Ч[\IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ј
&__inference_conv2d_layer_call_fn_69129М[\IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€й
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_68934ЧOPIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ √
2__inference_conv2d_transpose_1_layer_call_fn_68901МOPIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€й
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_69048ЧUVIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ √
2__inference_conv2d_transpose_2_layer_call_fn_69015МUVIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€з
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_68803ЧIJIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ Ѕ
0__inference_conv2d_transpose_layer_call_fn_68770МIJIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ђ
B__inference_dense_1_layer_call_and_return_conditional_losses_69159e]^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ў
™ "-Ґ*
#К 
tensor_0€€€€€€€€€ј
Ъ Е
'__inference_dense_1_layer_call_fn_69149Z]^0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ў
™ ""К
unknown€€€€€€€€€ј™
B__inference_dense_2_layer_call_and_return_conditional_losses_69410dgh0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Аd
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Д
'__inference_dense_2_layer_call_fn_69399Ygh0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Аd
™ "!К
unknown€€€€€€€€€©
@__inference_dense_layer_call_and_return_conditional_losses_68608eCD0Ґ-
&Ґ#
!К
inputs€€€€€€€€€љ
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ Г
%__inference_dense_layer_call_fn_68598ZCD0Ґ-
&Ґ#
!К
inputs€€€€€€€€€љ
™ ""К
unknown€€€€€€€€€А2ї
D__inference_dropout_1_layer_call_and_return_conditional_losses_69233s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ ї
D__inference_dropout_1_layer_call_and_return_conditional_losses_69238s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ Х
)__inference_dropout_1_layer_call_fn_69216h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ ")К&
unknown€€€€€€€€€@Х
)__inference_dropout_1_layer_call_fn_69221h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ ")К&
unknown€€€€€€€€€@љ
D__inference_dropout_2_layer_call_and_return_conditional_losses_69280u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€

А
p
™ "5Ґ2
+К(
tensor_0€€€€€€€€€

А
Ъ љ
D__inference_dropout_2_layer_call_and_return_conditional_losses_69285u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€

А
p 
™ "5Ґ2
+К(
tensor_0€€€€€€€€€

А
Ъ Ч
)__inference_dropout_2_layer_call_fn_69263j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€

А
p
™ "*К'
unknown€€€€€€€€€

АЧ
)__inference_dropout_2_layer_call_fn_69268j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€

А
p 
™ "*К'
unknown€€€€€€€€€

Аљ
D__inference_dropout_3_layer_call_and_return_conditional_losses_69327u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ љ
D__inference_dropout_3_layer_call_and_return_conditional_losses_69332u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ч
)__inference_dropout_3_layer_call_fn_69310j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "*К'
unknown€€€€€€€€€АЧ
)__inference_dropout_3_layer_call_fn_69315j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "*К'
unknown€€€€€€€€€Аљ
D__inference_dropout_4_layer_call_and_return_conditional_losses_69374u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ љ
D__inference_dropout_4_layer_call_and_return_conditional_losses_69379u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ч
)__inference_dropout_4_layer_call_fn_69357j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "*К'
unknown€€€€€€€€€АЧ
)__inference_dropout_4_layer_call_fn_69362j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "*К'
unknown€€€€€€€€€Ає
B__inference_dropout_layer_call_and_return_conditional_losses_68739s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€

@
p
™ "4Ґ1
*К'
tensor_0€€€€€€€€€

@
Ъ є
B__inference_dropout_layer_call_and_return_conditional_losses_68744s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€

@
p 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€

@
Ъ У
'__inference_dropout_layer_call_fn_68722h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€

@
p
™ ")К&
unknown€€€€€€€€€

@У
'__inference_dropout_layer_call_fn_68727h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€

@
p 
™ ")К&
unknown€€€€€€€€€

@ѓ
B__inference_flatten_layer_call_and_return_conditional_losses_69390i8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Аd
Ъ Й
'__inference_flatten_layer_call_fn_69384^8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ""К
unknown€€€€€€€€€Аdо
B__inference_model_1_layer_call_and_return_conditional_losses_67480І]^_`abcdefghiҐf
_Ґ\
RЪO
)К&
input_2€€€€€€€€€((
"К
input_3€€€€€€€€€ў
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ о
B__inference_model_1_layer_call_and_return_conditional_losses_67542І]^_`abcdefghiҐf
_Ґ\
RЪO
)К&
input_2€€€€€€€€€((
"К
input_3€€€€€€€€€ў
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ В
B__inference_model_1_layer_call_and_return_conditional_losses_68525ї]^_`abcdefgh}Ґz
sҐp
fЪc
<К9
inputs_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
#К 
inputs_1€€€€€€€€€ў
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ В
B__inference_model_1_layer_call_and_return_conditional_losses_68589ї]^_`abcdefgh}Ґz
sҐp
fЪc
<К9
inputs_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
#К 
inputs_1€€€€€€€€€ў
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ »
'__inference_model_1_layer_call_fn_67572Ь]^_`abcdefghiҐf
_Ґ\
RЪO
)К&
input_2€€€€€€€€€((
"К
input_3€€€€€€€€€ў
p

 
™ "!К
unknown€€€€€€€€€»
'__inference_model_1_layer_call_fn_67602Ь]^_`abcdefghiҐf
_Ґ\
RЪO
)К&
input_2€€€€€€€€€((
"К
input_3€€€€€€€€€ў
p 

 
™ "!К
unknown€€€€€€€€€№
'__inference_model_1_layer_call_fn_68403∞]^_`abcdefgh}Ґz
sҐp
fЪc
<К9
inputs_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
#К 
inputs_1€€€€€€€€€ў
p

 
™ "!К
unknown€€€€€€€€€№
'__inference_model_1_layer_call_fn_68433∞]^_`abcdefgh}Ґz
sҐp
fЪc
<К9
inputs_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
#К 
inputs_1€€€€€€€€€ў
p 

 
™ "!К
unknown€€€€€€€€€А
B__inference_model_2_layer_call_and_return_conditional_losses_67895є&CDGHEFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaҐ^
WҐT
JЪG
!К
input_4€€€€€€€€€d
"К
input_5€€€€€€€€€ў
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ А
B__inference_model_2_layer_call_and_return_conditional_losses_68043є&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaҐ^
WҐT
JЪG
!К
input_4€€€€€€€€€d
"К
input_5€€€€€€€€€ў
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Џ
'__inference_model_2_layer_call_fn_68125Ѓ&CDGHEFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaҐ^
WҐT
JЪG
!К
input_4€€€€€€€€€d
"К
input_5€€€€€€€€€ў
p

 
™ "!К
unknown€€€€€€€€€Џ
'__inference_model_2_layer_call_fn_68207Ѓ&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghaҐ^
WҐT
JЪG
!К
input_4€€€€€€€€€d
"К
input_5€€€€€€€€€ў
p 

 
™ "!К
unknown€€€€€€€€€д
@__inference_model_layer_call_and_return_conditional_losses_67053ЯCDGHEFIJKLMNOPQRSTUVWXYZ[\9Ґ6
/Ґ,
"К
input_1€€€€€€€€€љ
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ д
@__inference_model_layer_call_and_return_conditional_losses_67131ЯCDHEGFIJKLMNOPQRSTUVWXYZ[\9Ґ6
/Ґ,
"К
input_1€€€€€€€€€љ
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Њ
%__inference_model_layer_call_fn_67188ФCDGHEFIJKLMNOPQRSTUVWXYZ[\9Ґ6
/Ґ,
"К
input_1€€€€€€€€€љ
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€Њ
%__inference_model_layer_call_fn_67245ФCDHEGFIJKLMNOPQRSTUVWXYZ[\9Ґ6
/Ґ,
"К
input_1€€€€€€€€€љ
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€∞
D__inference_reshape_1_layer_call_and_return_conditional_losses_69178h0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ "4Ґ1
*К'
tensor_0€€€€€€€€€((
Ъ К
)__inference_reshape_1_layer_call_fn_69164]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€ј
™ ")К&
unknown€€€€€€€€€((Ѓ
B__inference_reshape_layer_call_and_return_conditional_losses_68717h0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ "4Ґ1
*К'
tensor_0€€€€€€€€€

@
Ъ И
'__inference_reshape_layer_call_fn_68703]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ ")К&
unknown€€€€€€€€€

@п
#__inference_signature_wrapper_68358«&CDHEGFIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghjҐg
Ґ 
`™]
,
input_4!К
input_4€€€€€€€€€d
-
input_5"К
input_5€€€€€€€€€ў"1™.
,
model_1!К
model_1€€€€€€€€€ф
J__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_68892•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ќ
/__inference_up_sampling2d_1_layer_call_fn_68880ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€т
H__inference_up_sampling2d_layer_call_and_return_conditional_losses_68761•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ћ
-__inference_up_sampling2d_layer_call_fn_68749ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€