џЅ#
ъќ
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
 И"serve*2.13.12v2.13.1-0-gf841394b1b78еў
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
RMSprop/velocity/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameRMSprop/velocity/dense_1/bias
Л
1RMSprop/velocity/dense_1/bias/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/bias*
_output_shapes
:*
dtype0
Ы
RMSprop/velocity/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аd*0
shared_name!RMSprop/velocity/dense_1/kernel
Ф
3RMSprop/velocity/dense_1/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense_1/kernel*
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
shape:@*1
shared_name" RMSprop/velocity/conv2d_1/kernel
Э
4RMSprop/velocity/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp RMSprop/velocity/conv2d_1/kernel*&
_output_shapes
:@*
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
Ч
RMSprop/velocity/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dА2*.
shared_nameRMSprop/velocity/dense/kernel
Р
1RMSprop/velocity/dense/kernel/Read/ReadVariableOpReadVariableOpRMSprop/velocity/dense/kernel*
_output_shapes
:	dА2*
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
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Аd*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
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
shape:@* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:@*
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
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dА2*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	dА2*
dtype0
z
serving_default_input_3Placeholder*'
_output_shapes
:€€€€€€€€€d*
dtype0*
shape:€€€€€€€€€d
к	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3dense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_1/kerneldense_1/bias*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_123418

NoOpNoOp
«в
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Бв
valueцбBтб Bкб
І
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
* 
м
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
layer_with_weights-3
layer-8
layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses*
±
%layer-0
&layer_with_weights-0
&layer-1
'layer-2
(layer_with_weights-1
(layer-3
)layer-4
*layer_with_weights-2
*layer-5
+layer-6
,layer_with_weights-3
,layer-7
-layer-8
.layer-9
/layer_with_weights-4
/layer-10
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6	optimizer*
Ъ
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13
E14
F15
G16
H17
I18
J19
K20
L21
M22
N23
O24
P25
Q26
R27
S28
T29
U30
V31
W32
X33
Y34
Z35*
К
70
81
92
:3
=4
>5
?6
@7
C8
D9
E10
F11
I12
J13
K14
L15
O16
P17*
* 
∞
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

`trace_0
atrace_1* 

btrace_0
ctrace_1* 
* 
Щ
d
_variables
e_iterations
f_learning_rate
g_index_dict
h_velocities
i
_momentums
j_average_gradients
k_update_step_xla*

lserving_default* 
* 
¶
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

7kernel
8bias*
’
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	9gamma
:beta
;moving_mean
<moving_variance*
О
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses* 
Ф
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses* 
ђ
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
М_random_generator* 
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
ѕ
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses

=kernel
>bias
!Щ_jit_compiled_convolution_op*
№
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
	†axis
	?gamma
@beta
Amoving_mean
Bmoving_variance*
Ф
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses* 
Ф
І	variables
®trainable_variables
©regularization_losses
™	keras_api
Ђ__call__
+ђ&call_and_return_all_conditional_losses* 
ѕ
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses

Ckernel
Dbias
!≥_jit_compiled_convolution_op*
№
і	variables
µtrainable_variables
ґregularization_losses
Ј	keras_api
Є__call__
+є&call_and_return_all_conditional_losses
	Їaxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance*
Ф
ї	variables
Љtrainable_variables
љregularization_losses
Њ	keras_api
њ__call__
+ј&call_and_return_all_conditional_losses* 
ѕ
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses

Ikernel
Jbias
!«_jit_compiled_convolution_op*
№
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
	ќaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance*
Ф
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses* 
ѕ
’	variables
÷trainable_variables
„regularization_losses
Ў	keras_api
ў__call__
+Џ&call_and_return_all_conditional_losses

Okernel
Pbias
!џ_jit_compiled_convolution_op*
 
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13
E14
F15
G16
H17
I18
J19
K20
L21
M22
N23
O24
P25*
К
70
81
92
:3
=4
>5
?6
@7
C8
D9
E10
F11
I12
J13
K14
L15
O16
P17*
* 
Ш
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

бtrace_0
вtrace_1* 

гtrace_0
дtrace_1* 
* 
ѕ
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses

Qkernel
Rbias
!л_jit_compiled_convolution_op*
ђ
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
р__call__
+с&call_and_return_all_conditional_losses
т_random_generator* 
ѕ
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses

Skernel
Tbias
!щ_jit_compiled_convolution_op*
ђ
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+€&call_and_return_all_conditional_losses
А_random_generator* 
ѕ
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses

Ukernel
Vbias
!З_jit_compiled_convolution_op*
ђ
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
О_random_generator* 
ѕ
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses

Wkernel
Xbias
!Х_jit_compiled_convolution_op*
ђ
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
Ь_random_generator* 
Ф
Э	variables
Юtrainable_variables
Яregularization_losses
†	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses* 
ђ
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses

Ykernel
Zbias*
J
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9*
* 
* 
Ш
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
:
Ѓtrace_0
ѓtrace_1
∞trace_2
±trace_3* 
:
≤trace_0
≥trace_1
іtrace_2
µtrace_3* 
°
ґ
_variables
Ј_iterations
Є_learning_rate
є_index_dict
Ї_velocities
ї
_momentums
Љ_average_gradients
љ_update_step_xla*
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
PJ
VARIABLE_VALUEconv2d_1/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_1/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_2/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_2/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_3/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_3/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEconv2d_4/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEconv2d_4/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
К
;0
<1
A2
B3
G4
H5
M6
N7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17*

0
1
2*

Њ0
њ1*
* 
* 
* 
* 
* 
* 
§
e0
ј1
Ѕ2
¬3
√4
ƒ5
≈6
∆7
«8
»9
…10
 11
Ћ12
ћ13
Ќ14
ќ15
ѕ16
–17
—18*
UO
VARIABLE_VALUEiteration_10optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUElearning_rate_13optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
Ь
ј0
Ѕ1
¬2
√3
ƒ4
≈5
∆6
«7
»8
…9
 10
Ћ11
ћ12
Ќ13
ќ14
ѕ15
–16
—17*
* 
* 
* 
* 

70
81*

70
81*
* 
Ш
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses*

„trace_0* 

Ўtrace_0* 
 
90
:1
;2
<3*

90
:1*
* 
Ш
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses*

ёtrace_0
яtrace_1* 

аtrace_0
бtrace_1* 
* 
* 
* 
* 
Ц
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

зtrace_0* 

иtrace_0* 
* 
* 
* 
Ь
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses* 

оtrace_0* 

пtrace_0* 
* 
* 
* 
Ь
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses* 

хtrace_0
цtrace_1* 

чtrace_0
шtrace_1* 
* 
* 
* 
* 
Ь
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

юtrace_0* 

€trace_0* 

=0
>1*

=0
>1*
* 
Ю
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses*

Еtrace_0* 

Жtrace_0* 
* 
 
?0
@1
A2
B3*

?0
@1*
* 
Ю
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*

Мtrace_0
Нtrace_1* 

Оtrace_0
Пtrace_1* 
* 
* 
* 
* 
Ь
Рnon_trainable_variables
Сlayers
Тmetrics
 Уlayer_regularization_losses
Фlayer_metrics
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses* 
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
І	variables
®trainable_variables
©regularization_losses
Ђ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses* 

Ьtrace_0* 

Эtrace_0* 

C0
D1*

C0
D1*
* 
Ю
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses*

£trace_0* 

§trace_0* 
* 
 
E0
F1
G2
H3*

E0
F1*
* 
Ю
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
і	variables
µtrainable_variables
ґregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses*

™trace_0
Ђtrace_1* 

ђtrace_0
≠trace_1* 
* 
* 
* 
* 
Ь
Ѓnon_trainable_variables
ѓlayers
∞metrics
 ±layer_regularization_losses
≤layer_metrics
ї	variables
Љtrainable_variables
љregularization_losses
њ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses* 

≥trace_0* 

іtrace_0* 

I0
J1*

I0
J1*
* 
Ю
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses*

Їtrace_0* 

їtrace_0* 
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
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses*

Ѕtrace_0
¬trace_1* 

√trace_0
ƒtrace_1* 
* 
* 
* 
* 
Ь
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses* 

 trace_0* 

Ћtrace_0* 

O0
P1*

O0
P1*
* 
Ю
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
’	variables
÷trainable_variables
„regularization_losses
ў__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses*

—trace_0* 

“trace_0* 
* 
<
;0
<1
A2
B3
G4
H5
M6
N7*
К
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17*
* 
* 
* 
* 
* 
* 
* 

Q0
R1*
* 
* 
Ю
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*

Ўtrace_0* 

ўtrace_0* 
* 
* 
* 
* 
Ь
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses* 

яtrace_0
аtrace_1* 

бtrace_0
вtrace_1* 
* 

S0
T1*
* 
* 
Ю
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses*

иtrace_0* 

йtrace_0* 
* 
* 
* 
* 
Ь
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses* 

пtrace_0
рtrace_1* 

сtrace_0
тtrace_1* 
* 

U0
V1*
* 
* 
Ю
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses*

шtrace_0* 

щtrace_0* 
* 
* 
* 
* 
Ь
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses* 

€trace_0
Аtrace_1* 

Бtrace_0
Вtrace_1* 
* 

W0
X1*
* 
* 
Ю
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*

Иtrace_0* 

Йtrace_0* 
* 
* 
* 
* 
Ь
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses* 

Пtrace_0
Рtrace_1* 

Сtrace_0
Тtrace_1* 
* 
* 
* 
* 
Ь
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses* 

Шtrace_0* 

Щtrace_0* 

Y0
Z1*
* 
* 
Ю
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses*

Яtrace_0* 

†trace_0* 
J
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9*
R
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10*

°0
Ґ1*
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
]
Ј0
£1
§2
•3
¶4
І5
®6
©7
™8
Ђ9
ђ10*
hb
VARIABLE_VALUE	iterationElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUElearning_rateHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
T
£0
§1
•2
¶3
І4
®5
©6
™7
Ђ8
ђ9*
* 
* 
* 
<
≠	variables
Ѓ	keras_api

ѓtotal

∞count*
M
±	variables
≤	keras_api

≥total

іcount
µ
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
;0
<1*
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
A0
B1*
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

Q0
R1*
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

U0
V1*
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
W0
X1*
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
<
ґ	variables
Ј	keras_api

Єtotal

єcount*
M
Ї	variables
ї	keras_api

Љtotal

љcount
Њ
_fn_kwargs*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_1/kernelFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/conv2d_1/biasFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_2/kernelFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/conv2d_2/biasFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_3/kernelFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/conv2d_3/biasFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE RMSprop/velocity/conv2d_4/kernelFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/conv2d_4/biasFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUERMSprop/velocity/dense_1/kernelFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUERMSprop/velocity/dense_1/biasGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*

ѓ0
∞1*

≠	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

≥0
і1*

±	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Є0
є1*

ґ	variables*
jd
VARIABLE_VALUEtotal_1Ilayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEcount_1Ilayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Љ0
љ1*

Ї	variables*
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
ы
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_1/kerneldense_1/biasiteration_1learning_rate_1	iterationlearning_rateRMSprop/velocity/dense/kernelRMSprop/velocity/dense/bias*RMSprop/velocity/batch_normalization/gamma)RMSprop/velocity/batch_normalization/beta(RMSprop/velocity/conv2d_transpose/kernel&RMSprop/velocity/conv2d_transpose/bias,RMSprop/velocity/batch_normalization_1/gamma+RMSprop/velocity/batch_normalization_1/beta*RMSprop/velocity/conv2d_transpose_1/kernel(RMSprop/velocity/conv2d_transpose_1/bias,RMSprop/velocity/batch_normalization_2/gamma+RMSprop/velocity/batch_normalization_2/beta*RMSprop/velocity/conv2d_transpose_2/kernel(RMSprop/velocity/conv2d_transpose_2/bias,RMSprop/velocity/batch_normalization_3/gamma+RMSprop/velocity/batch_normalization_3/betaRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/bias RMSprop/velocity/conv2d_1/kernelRMSprop/velocity/conv2d_1/bias RMSprop/velocity/conv2d_2/kernelRMSprop/velocity/conv2d_2/bias RMSprop/velocity/conv2d_3/kernelRMSprop/velocity/conv2d_3/bias RMSprop/velocity/conv2d_4/kernelRMSprop/velocity/conv2d_4/biasRMSprop/velocity/dense_1/kernelRMSprop/velocity/dense_1/biastotal_3count_3total_2count_2total_1count_1totalcountConst*Y
TinR
P2N*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_124848
ц
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_1/kerneldense_1/biasiteration_1learning_rate_1	iterationlearning_rateRMSprop/velocity/dense/kernelRMSprop/velocity/dense/bias*RMSprop/velocity/batch_normalization/gamma)RMSprop/velocity/batch_normalization/beta(RMSprop/velocity/conv2d_transpose/kernel&RMSprop/velocity/conv2d_transpose/bias,RMSprop/velocity/batch_normalization_1/gamma+RMSprop/velocity/batch_normalization_1/beta*RMSprop/velocity/conv2d_transpose_1/kernel(RMSprop/velocity/conv2d_transpose_1/bias,RMSprop/velocity/batch_normalization_2/gamma+RMSprop/velocity/batch_normalization_2/beta*RMSprop/velocity/conv2d_transpose_2/kernel(RMSprop/velocity/conv2d_transpose_2/bias,RMSprop/velocity/batch_normalization_3/gamma+RMSprop/velocity/batch_normalization_3/betaRMSprop/velocity/conv2d/kernelRMSprop/velocity/conv2d/bias RMSprop/velocity/conv2d_1/kernelRMSprop/velocity/conv2d_1/bias RMSprop/velocity/conv2d_2/kernelRMSprop/velocity/conv2d_2/bias RMSprop/velocity/conv2d_3/kernelRMSprop/velocity/conv2d_3/bias RMSprop/velocity/conv2d_4/kernelRMSprop/velocity/conv2d_4/biasRMSprop/velocity/dense_1/kernelRMSprop/velocity/dense_1/biastotal_3count_3total_2count_2total_1count_1totalcount*X
TinQ
O2M*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_125085ІЯ
к,
В
C__inference_model_1_layer_call_and_return_conditional_losses_122708
input_2)
conv2d_1_122657:@
conv2d_1_122659:@*
conv2d_2_122668:@А
conv2d_2_122670:	А+
conv2d_3_122679:АА
conv2d_3_122681:	А+
conv2d_4_122690:АА
conv2d_4_122692:	А!
dense_1_122702:	Аd
dense_1_122704:
identityИҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallщ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_1_122657conv2d_1_122659*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_122524е
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
GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_122666Х
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_2_122668conv2d_2_122670*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_122553ж
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
GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_122677Х
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv2d_3_122679conv2d_3_122681*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_122582ж
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
GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_122688Х
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_4_122690conv2d_4_122692*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_122611ж
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
GPU 2J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_122699”
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
GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_122635Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_122702dense_1_122704*
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
GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_122647w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€–
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€((: : : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:&
"
 
_user_specified_name122704:&	"
 
_user_specified_name122702:&"
 
_user_specified_name122692:&"
 
_user_specified_name122690:&"
 
_user_specified_name122681:&"
 
_user_specified_name122679:&"
 
_user_specified_name122670:&"
 
_user_specified_name122668:&"
 
_user_specified_name122659:&"
 
_user_specified_name122657:X T
/
_output_shapes
:€€€€€€€€€((
!
_user_specified_name	input_2
Н

—
6__inference_batch_normalization_2_layer_call_fn_123971

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЪ
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_121996Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123967:&"
 
_user_specified_name123965:&"
 
_user_specified_name123963:&"
 
_user_specified_name123961:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Н
I
-__inference_activation_2_layer_call_fn_124012

inputs
identityЌ
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_122227z
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
і
J
.__inference_up_sampling2d_layer_call_fn_123760

inputs
identity„
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
GPU 2J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_121792Г
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
Ќ

х
C__inference_dense_1_layer_call_and_return_conditional_losses_122647

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
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€Аd
 
_user_specified_nameinputs
У!
Ы
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_122055

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
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ч@
Х
C__inference_model_1_layer_call_and_return_conditional_losses_123111

inputsA
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	Аd5
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpО
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0љ
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0™
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@З
dropout_1/IdentityIdentityconv2d_1/Relu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0”
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АИ
dropout_2/IdentityIdentityconv2d_2/Relu:activations:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0”
conv2d_3/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АИ
dropout_3/IdentityIdentityconv2d_3/Relu:activations:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0”
conv2d_4/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АИ
dropout_4/IdentityIdentityconv2d_4/Relu:activations:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аf
flatten/ShapeShapedropout_4/Identity:output:0*
T0*
_output_shapes
::нѕe
flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
flatten/strided_sliceStridedSliceflatten/Shape:output:0$flatten/strided_slice/stack:output:0&flatten/strided_slice/stack_1:output:0&flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Н
flatten/Reshape/shapePackflatten/strided_slice:output:0 flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Т
flatten/ReshapeReshapedropout_4/Identity:output:0flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Е
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€п
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
њ
А
D__inference_conv2d_3_layer_call_and_return_conditional_losses_122582

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
Ъ
†
)__inference_conv2d_2_layer_call_fn_124207

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallв
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_122553x
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124203:&"
 
_user_specified_name124201:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
°
g
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_121913

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
ў
Ц
(__inference_model_1_layer_call_fn_123470

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	Аd
	unknown_8:
identityИҐStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_123111o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&
"
 
_user_specified_name123466:&	"
 
_user_specified_name123464:&"
 
_user_specified_name123462:&"
 
_user_specified_name123460:&"
 
_user_specified_name123458:&"
 
_user_specified_name123456:&"
 
_user_specified_name123454:&"
 
_user_specified_name123452:&"
 
_user_specified_name123450:&"
 
_user_specified_name123448:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Н
I
-__inference_activation_1_layer_call_fn_123881

inputs
identityЌ
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_122206z
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
с
c
*__inference_dropout_4_layer_call_fn_124317

inputs
identityИҐStatefulPartitionedCall…
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
GPU 2J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_122628x
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
–
Ь
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_122100

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ї
D
(__inference_dropout_layer_call_fn_123738

inputs
identityґ
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
GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_122289h
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
ќ
b
F__inference_activation_layer_call_and_return_conditional_losses_123709

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
К
ј
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_122082

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
С!
Щ
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_123814

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
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
—

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_124193

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
–
Ь
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_121996

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
°
g
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_123903

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
±&
м
O__inference_batch_normalization_layer_call_and_return_conditional_losses_121734

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
:€€€€€€€€€А2: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
№b
Х
C__inference_model_1_layer_call_and_return_conditional_losses_123549

inputsA
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	Аd5
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpО
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0љ
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0™
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?І
dropout_1/dropout/MulMulconv2d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@p
dropout_1/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
::нѕЇ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ё
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ’
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0џ
conv2d_2/Conv2DConv2D#dropout_1/dropout/SelectV2:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?®
dropout_2/dropout/MulMulconv2d_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аp
dropout_2/dropout/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
::нѕї
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>я
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ÷
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0џ
conv2d_3/Conv2DConv2D#dropout_2/dropout/SelectV2:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?®
dropout_3/dropout/MulMulconv2d_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аp
dropout_3/dropout/ShapeShapeconv2d_3/Relu:activations:0*
T0*
_output_shapes
::нѕї
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>я
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ÷
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0џ
conv2d_4/Conv2DConv2D#dropout_3/dropout/SelectV2:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?®
dropout_4/dropout/MulMulconv2d_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аp
dropout_4/dropout/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
::нѕї
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>я
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А^
dropout_4/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ÷
dropout_4/dropout/SelectV2SelectV2"dropout_4/dropout/GreaterEqual:z:0dropout_4/dropout/Mul:z:0"dropout_4/dropout/Const_1:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аn
flatten/ShapeShape#dropout_4/dropout/SelectV2:output:0*
T0*
_output_shapes
::нѕe
flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
flatten/strided_sliceStridedSliceflatten/Shape:output:0$flatten/strided_slice/stack:output:0&flatten/strided_slice/stack_1:output:0&flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Н
flatten/Reshape/shapePackflatten/strided_slice:output:0 flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ъ
flatten/ReshapeReshape#dropout_4/dropout/SelectV2:output:0flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Е
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€п
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
О
р
$__inference_signature_wrapper_123418
input_3
unknown:	dА2
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

unknown_24:$

unknown_25:@

unknown_26:@%

unknown_27:@А

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А

unknown_33:	Аd

unknown_34:
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_121700o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&$"
 
_user_specified_name123414:&#"
 
_user_specified_name123412:&""
 
_user_specified_name123410:&!"
 
_user_specified_name123408:& "
 
_user_specified_name123406:&"
 
_user_specified_name123404:&"
 
_user_specified_name123402:&"
 
_user_specified_name123400:&"
 
_user_specified_name123398:&"
 
_user_specified_name123396:&"
 
_user_specified_name123394:&"
 
_user_specified_name123392:&"
 
_user_specified_name123390:&"
 
_user_specified_name123388:&"
 
_user_specified_name123386:&"
 
_user_specified_name123384:&"
 
_user_specified_name123382:&"
 
_user_specified_name123380:&"
 
_user_specified_name123378:&"
 
_user_specified_name123376:&"
 
_user_specified_name123374:&"
 
_user_specified_name123372:&"
 
_user_specified_name123370:&"
 
_user_specified_name123368:&"
 
_user_specified_name123366:&"
 
_user_specified_name123364:&
"
 
_user_specified_name123362:&	"
 
_user_specified_name123360:&"
 
_user_specified_name123358:&"
 
_user_specified_name123356:&"
 
_user_specified_name123354:&"
 
_user_specified_name123352:&"
 
_user_specified_name123350:&"
 
_user_specified_name123348:&"
 
_user_specified_name123346:&"
 
_user_specified_name123344:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_3
–
Ь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123876

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
н
c
*__inference_dropout_1_layer_call_fn_124176

inputs
identityИҐStatefulPartitionedCall»
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
GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_122541w
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
ў
Ц
(__inference_model_1_layer_call_fn_123445

inputs!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	Аd
	unknown_8:
identityИҐStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_122982o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&
"
 
_user_specified_name123441:&	"
 
_user_specified_name123439:&"
 
_user_specified_name123437:&"
 
_user_specified_name123435:&"
 
_user_specified_name123433:&"
 
_user_specified_name123431:&"
 
_user_specified_name123429:&"
 
_user_specified_name123427:&"
 
_user_specified_name123425:&"
 
_user_specified_name123423:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
…«
ґI
__inference__traced_save_124848
file_prefix6
#read_disablecopyonread_dense_kernel:	dА22
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
%read_25_disablecopyonread_conv2d_bias:C
)read_26_disablecopyonread_conv2d_1_kernel:@5
'read_27_disablecopyonread_conv2d_1_bias:@D
)read_28_disablecopyonread_conv2d_2_kernel:@А6
'read_29_disablecopyonread_conv2d_2_bias:	АE
)read_30_disablecopyonread_conv2d_3_kernel:АА6
'read_31_disablecopyonread_conv2d_3_bias:	АE
)read_32_disablecopyonread_conv2d_4_kernel:АА6
'read_33_disablecopyonread_conv2d_4_bias:	А;
(read_34_disablecopyonread_dense_1_kernel:	Аd4
&read_35_disablecopyonread_dense_1_bias:/
%read_36_disablecopyonread_iteration_1:	 3
)read_37_disablecopyonread_learning_rate_1: -
#read_38_disablecopyonread_iteration:	 1
'read_39_disablecopyonread_learning_rate: J
7read_40_disablecopyonread_rmsprop_velocity_dense_kernel:	dА2D
5read_41_disablecopyonread_rmsprop_velocity_dense_bias:	А2S
Dread_42_disablecopyonread_rmsprop_velocity_batch_normalization_gamma:	А2R
Cread_43_disablecopyonread_rmsprop_velocity_batch_normalization_beta:	А2\
Bread_44_disablecopyonread_rmsprop_velocity_conv2d_transpose_kernel: @N
@read_45_disablecopyonread_rmsprop_velocity_conv2d_transpose_bias: T
Fread_46_disablecopyonread_rmsprop_velocity_batch_normalization_1_gamma: S
Eread_47_disablecopyonread_rmsprop_velocity_batch_normalization_1_beta: ^
Dread_48_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_kernel: P
Bread_49_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_bias:T
Fread_50_disablecopyonread_rmsprop_velocity_batch_normalization_2_gamma:S
Eread_51_disablecopyonread_rmsprop_velocity_batch_normalization_2_beta:^
Dread_52_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_kernel:P
Bread_53_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_bias:T
Fread_54_disablecopyonread_rmsprop_velocity_batch_normalization_3_gamma:S
Eread_55_disablecopyonread_rmsprop_velocity_batch_normalization_3_beta:R
8read_56_disablecopyonread_rmsprop_velocity_conv2d_kernel:D
6read_57_disablecopyonread_rmsprop_velocity_conv2d_bias:T
:read_58_disablecopyonread_rmsprop_velocity_conv2d_1_kernel:@F
8read_59_disablecopyonread_rmsprop_velocity_conv2d_1_bias:@U
:read_60_disablecopyonread_rmsprop_velocity_conv2d_2_kernel:@АG
8read_61_disablecopyonread_rmsprop_velocity_conv2d_2_bias:	АV
:read_62_disablecopyonread_rmsprop_velocity_conv2d_3_kernel:ААG
8read_63_disablecopyonread_rmsprop_velocity_conv2d_3_bias:	АV
:read_64_disablecopyonread_rmsprop_velocity_conv2d_4_kernel:ААG
8read_65_disablecopyonread_rmsprop_velocity_conv2d_4_bias:	АL
9read_66_disablecopyonread_rmsprop_velocity_dense_1_kernel:	АdE
7read_67_disablecopyonread_rmsprop_velocity_dense_1_bias:+
!read_68_disablecopyonread_total_3: +
!read_69_disablecopyonread_count_3: +
!read_70_disablecopyonread_total_2: +
!read_71_disablecopyonread_count_2: +
!read_72_disablecopyonread_total_1: +
!read_73_disablecopyonread_count_1: )
read_74_disablecopyonread_total: )
read_75_disablecopyonread_count: 
savev2_const
identity_153ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_25/DisableCopyOnReadҐRead_25/ReadVariableOpҐRead_26/DisableCopyOnReadҐRead_26/ReadVariableOpҐRead_27/DisableCopyOnReadҐRead_27/ReadVariableOpҐRead_28/DisableCopyOnReadҐRead_28/ReadVariableOpҐRead_29/DisableCopyOnReadҐRead_29/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_30/DisableCopyOnReadҐRead_30/ReadVariableOpҐRead_31/DisableCopyOnReadҐRead_31/ReadVariableOpҐRead_32/DisableCopyOnReadҐRead_32/ReadVariableOpҐRead_33/DisableCopyOnReadҐRead_33/ReadVariableOpҐRead_34/DisableCopyOnReadҐRead_34/ReadVariableOpҐRead_35/DisableCopyOnReadҐRead_35/ReadVariableOpҐRead_36/DisableCopyOnReadҐRead_36/ReadVariableOpҐRead_37/DisableCopyOnReadҐRead_37/ReadVariableOpҐRead_38/DisableCopyOnReadҐRead_38/ReadVariableOpҐRead_39/DisableCopyOnReadҐRead_39/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_40/DisableCopyOnReadҐRead_40/ReadVariableOpҐRead_41/DisableCopyOnReadҐRead_41/ReadVariableOpҐRead_42/DisableCopyOnReadҐRead_42/ReadVariableOpҐRead_43/DisableCopyOnReadҐRead_43/ReadVariableOpҐRead_44/DisableCopyOnReadҐRead_44/ReadVariableOpҐRead_45/DisableCopyOnReadҐRead_45/ReadVariableOpҐRead_46/DisableCopyOnReadҐRead_46/ReadVariableOpҐRead_47/DisableCopyOnReadҐRead_47/ReadVariableOpҐRead_48/DisableCopyOnReadҐRead_48/ReadVariableOpҐRead_49/DisableCopyOnReadҐRead_49/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_50/DisableCopyOnReadҐRead_50/ReadVariableOpҐRead_51/DisableCopyOnReadҐRead_51/ReadVariableOpҐRead_52/DisableCopyOnReadҐRead_52/ReadVariableOpҐRead_53/DisableCopyOnReadҐRead_53/ReadVariableOpҐRead_54/DisableCopyOnReadҐRead_54/ReadVariableOpҐRead_55/DisableCopyOnReadҐRead_55/ReadVariableOpҐRead_56/DisableCopyOnReadҐRead_56/ReadVariableOpҐRead_57/DisableCopyOnReadҐRead_57/ReadVariableOpҐRead_58/DisableCopyOnReadҐRead_58/ReadVariableOpҐRead_59/DisableCopyOnReadҐRead_59/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_60/DisableCopyOnReadҐRead_60/ReadVariableOpҐRead_61/DisableCopyOnReadҐRead_61/ReadVariableOpҐRead_62/DisableCopyOnReadҐRead_62/ReadVariableOpҐRead_63/DisableCopyOnReadҐRead_63/ReadVariableOpҐRead_64/DisableCopyOnReadҐRead_64/ReadVariableOpҐRead_65/DisableCopyOnReadҐRead_65/ReadVariableOpҐRead_66/DisableCopyOnReadҐRead_66/ReadVariableOpҐRead_67/DisableCopyOnReadҐRead_67/ReadVariableOpҐRead_68/DisableCopyOnReadҐRead_68/ReadVariableOpҐRead_69/DisableCopyOnReadҐRead_69/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_70/DisableCopyOnReadҐRead_70/ReadVariableOpҐRead_71/DisableCopyOnReadҐRead_71/ReadVariableOpҐRead_72/DisableCopyOnReadҐRead_72/ReadVariableOpҐRead_73/DisableCopyOnReadҐRead_73/ReadVariableOpҐRead_74/DisableCopyOnReadҐRead_74/ReadVariableOpҐRead_75/DisableCopyOnReadҐRead_75/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
 †
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dА2*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dА2b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	dА2w
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
:~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_conv2d_1_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0w
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@m
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*&
_output_shapes
:@|
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_conv2d_1_bias"/device:CPU:0*
_output_shapes
 •
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_conv2d_1_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:@~
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 і
Read_28/ReadVariableOpReadVariableOp)read_28_disablecopyonread_conv2d_2_kernel^Read_28/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*'
_output_shapes
:@А|
Read_29/DisableCopyOnReadDisableCopyOnRead'read_29_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 ¶
Read_29/ReadVariableOpReadVariableOp'read_29_disablecopyonread_conv2d_2_bias^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_30/DisableCopyOnReadDisableCopyOnRead)read_30_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 µ
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_conv2d_3_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*(
_output_shapes
:АА|
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 ¶
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_conv2d_3_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:А~
Read_32/DisableCopyOnReadDisableCopyOnRead)read_32_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 µ
Read_32/ReadVariableOpReadVariableOp)read_32_disablecopyonread_conv2d_4_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0y
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААo
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*(
_output_shapes
:АА|
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 ¶
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_conv2d_4_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:А}
Read_34/DisableCopyOnReadDisableCopyOnRead(read_34_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read_34/ReadVariableOpReadVariableOp(read_34_disablecopyonread_dense_1_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Аd*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аdf
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	Аd{
Read_35/DisableCopyOnReadDisableCopyOnRead&read_35_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 §
Read_35/ReadVariableOpReadVariableOp&read_35_disablecopyonread_dense_1_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:z
Read_36/DisableCopyOnReadDisableCopyOnRead%read_36_disablecopyonread_iteration_1"/device:CPU:0*
_output_shapes
 Я
Read_36/ReadVariableOpReadVariableOp%read_36_disablecopyonread_iteration_1^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0	*
_output_shapes
: ~
Read_37/DisableCopyOnReadDisableCopyOnRead)read_37_disablecopyonread_learning_rate_1"/device:CPU:0*
_output_shapes
 £
Read_37/ReadVariableOpReadVariableOp)read_37_disablecopyonread_learning_rate_1^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_38/DisableCopyOnReadDisableCopyOnRead#read_38_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Э
Read_38/ReadVariableOpReadVariableOp#read_38_disablecopyonread_iteration^Read_38/DisableCopyOnRead"/device:CPU:0*
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
: |
Read_39/DisableCopyOnReadDisableCopyOnRead'read_39_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 °
Read_39/ReadVariableOpReadVariableOp'read_39_disablecopyonread_learning_rate^Read_39/DisableCopyOnRead"/device:CPU:0*
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
: М
Read_40/DisableCopyOnReadDisableCopyOnRead7read_40_disablecopyonread_rmsprop_velocity_dense_kernel"/device:CPU:0*
_output_shapes
 Ї
Read_40/ReadVariableOpReadVariableOp7read_40_disablecopyonread_rmsprop_velocity_dense_kernel^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dА2*
dtype0p
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dА2f
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
:	dА2К
Read_41/DisableCopyOnReadDisableCopyOnRead5read_41_disablecopyonread_rmsprop_velocity_dense_bias"/device:CPU:0*
_output_shapes
 і
Read_41/ReadVariableOpReadVariableOp5read_41_disablecopyonread_rmsprop_velocity_dense_bias^Read_41/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0l
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2b
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Щ
Read_42/DisableCopyOnReadDisableCopyOnReadDread_42_disablecopyonread_rmsprop_velocity_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 √
Read_42/ReadVariableOpReadVariableOpDread_42_disablecopyonread_rmsprop_velocity_batch_normalization_gamma^Read_42/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А2*
dtype0l
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А2b
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0*
_output_shapes	
:А2Ш
Read_43/DisableCopyOnReadDisableCopyOnReadCread_43_disablecopyonread_rmsprop_velocity_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ¬
Read_43/ReadVariableOpReadVariableOpCread_43_disablecopyonread_rmsprop_velocity_batch_normalization_beta^Read_43/DisableCopyOnRead"/device:CPU:0*
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
:А2Ч
Read_44/DisableCopyOnReadDisableCopyOnReadBread_44_disablecopyonread_rmsprop_velocity_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 ћ
Read_44/ReadVariableOpReadVariableOpBread_44_disablecopyonread_rmsprop_velocity_conv2d_transpose_kernel^Read_44/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0w
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Х
Read_45/DisableCopyOnReadDisableCopyOnRead@read_45_disablecopyonread_rmsprop_velocity_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 Њ
Read_45/ReadVariableOpReadVariableOp@read_45_disablecopyonread_rmsprop_velocity_conv2d_transpose_bias^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
: Ы
Read_46/DisableCopyOnReadDisableCopyOnReadFread_46_disablecopyonread_rmsprop_velocity_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ƒ
Read_46/ReadVariableOpReadVariableOpFread_46_disablecopyonread_rmsprop_velocity_batch_normalization_1_gamma^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
: Ъ
Read_47/DisableCopyOnReadDisableCopyOnReadEread_47_disablecopyonread_rmsprop_velocity_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 √
Read_47/ReadVariableOpReadVariableOpEread_47_disablecopyonread_rmsprop_velocity_batch_normalization_1_beta^Read_47/DisableCopyOnRead"/device:CPU:0*
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
: Щ
Read_48/DisableCopyOnReadDisableCopyOnReadDread_48_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 ќ
Read_48/ReadVariableOpReadVariableOpDread_48_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_kernel^Read_48/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0w
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: m
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*&
_output_shapes
: Ч
Read_49/DisableCopyOnReadDisableCopyOnReadBread_49_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 ј
Read_49/ReadVariableOpReadVariableOpBread_49_disablecopyonread_rmsprop_velocity_conv2d_transpose_1_bias^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:Ы
Read_50/DisableCopyOnReadDisableCopyOnReadFread_50_disablecopyonread_rmsprop_velocity_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ƒ
Read_50/ReadVariableOpReadVariableOpFread_50_disablecopyonread_rmsprop_velocity_batch_normalization_2_gamma^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:Ъ
Read_51/DisableCopyOnReadDisableCopyOnReadEread_51_disablecopyonread_rmsprop_velocity_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 √
Read_51/ReadVariableOpReadVariableOpEread_51_disablecopyonread_rmsprop_velocity_batch_normalization_2_beta^Read_51/DisableCopyOnRead"/device:CPU:0*
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
:Щ
Read_52/DisableCopyOnReadDisableCopyOnReadDread_52_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 ќ
Read_52/ReadVariableOpReadVariableOpDread_52_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*&
_output_shapes
:Ч
Read_53/DisableCopyOnReadDisableCopyOnReadBread_53_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 ј
Read_53/ReadVariableOpReadVariableOpBread_53_disablecopyonread_rmsprop_velocity_conv2d_transpose_2_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes
:Ы
Read_54/DisableCopyOnReadDisableCopyOnReadFread_54_disablecopyonread_rmsprop_velocity_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ƒ
Read_54/ReadVariableOpReadVariableOpFread_54_disablecopyonread_rmsprop_velocity_batch_normalization_3_gamma^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes
:Ъ
Read_55/DisableCopyOnReadDisableCopyOnReadEread_55_disablecopyonread_rmsprop_velocity_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 √
Read_55/ReadVariableOpReadVariableOpEread_55_disablecopyonread_rmsprop_velocity_batch_normalization_3_beta^Read_55/DisableCopyOnRead"/device:CPU:0*
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
:Н
Read_56/DisableCopyOnReadDisableCopyOnRead8read_56_disablecopyonread_rmsprop_velocity_conv2d_kernel"/device:CPU:0*
_output_shapes
 ¬
Read_56/ReadVariableOpReadVariableOp8read_56_disablecopyonread_rmsprop_velocity_conv2d_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:*
dtype0x
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:o
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*&
_output_shapes
:Л
Read_57/DisableCopyOnReadDisableCopyOnRead6read_57_disablecopyonread_rmsprop_velocity_conv2d_bias"/device:CPU:0*
_output_shapes
 і
Read_57/ReadVariableOpReadVariableOp6read_57_disablecopyonread_rmsprop_velocity_conv2d_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes
:П
Read_58/DisableCopyOnReadDisableCopyOnRead:read_58_disablecopyonread_rmsprop_velocity_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ƒ
Read_58/ReadVariableOpReadVariableOp:read_58_disablecopyonread_rmsprop_velocity_conv2d_1_kernel^Read_58/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@*
dtype0x
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@o
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*&
_output_shapes
:@Н
Read_59/DisableCopyOnReadDisableCopyOnRead8read_59_disablecopyonread_rmsprop_velocity_conv2d_1_bias"/device:CPU:0*
_output_shapes
 ґ
Read_59/ReadVariableOpReadVariableOp8read_59_disablecopyonread_rmsprop_velocity_conv2d_1_bias^Read_59/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*
_output_shapes
:@П
Read_60/DisableCopyOnReadDisableCopyOnRead:read_60_disablecopyonread_rmsprop_velocity_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ≈
Read_60/ReadVariableOpReadVariableOp:read_60_disablecopyonread_rmsprop_velocity_conv2d_2_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0y
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аp
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АН
Read_61/DisableCopyOnReadDisableCopyOnRead8read_61_disablecopyonread_rmsprop_velocity_conv2d_2_bias"/device:CPU:0*
_output_shapes
 Ј
Read_61/ReadVariableOpReadVariableOp8read_61_disablecopyonread_rmsprop_velocity_conv2d_2_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes	
:АП
Read_62/DisableCopyOnReadDisableCopyOnRead:read_62_disablecopyonread_rmsprop_velocity_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_62/ReadVariableOpReadVariableOp:read_62_disablecopyonread_rmsprop_velocity_conv2d_3_kernel^Read_62/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААН
Read_63/DisableCopyOnReadDisableCopyOnRead8read_63_disablecopyonread_rmsprop_velocity_conv2d_3_bias"/device:CPU:0*
_output_shapes
 Ј
Read_63/ReadVariableOpReadVariableOp8read_63_disablecopyonread_rmsprop_velocity_conv2d_3_bias^Read_63/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*
_output_shapes	
:АП
Read_64/DisableCopyOnReadDisableCopyOnRead:read_64_disablecopyonread_rmsprop_velocity_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_64/ReadVariableOpReadVariableOp:read_64_disablecopyonread_rmsprop_velocity_conv2d_4_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:АА*
dtype0z
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:ААq
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*(
_output_shapes
:ААН
Read_65/DisableCopyOnReadDisableCopyOnRead8read_65_disablecopyonread_rmsprop_velocity_conv2d_4_bias"/device:CPU:0*
_output_shapes
 Ј
Read_65/ReadVariableOpReadVariableOp8read_65_disablecopyonread_rmsprop_velocity_conv2d_4_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0m
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аd
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes	
:АО
Read_66/DisableCopyOnReadDisableCopyOnRead9read_66_disablecopyonread_rmsprop_velocity_dense_1_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_66/ReadVariableOpReadVariableOp9read_66_disablecopyonread_rmsprop_velocity_dense_1_kernel^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Аd*
dtype0q
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аdh
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:	АdМ
Read_67/DisableCopyOnReadDisableCopyOnRead7read_67_disablecopyonread_rmsprop_velocity_dense_1_bias"/device:CPU:0*
_output_shapes
 µ
Read_67/ReadVariableOpReadVariableOp7read_67_disablecopyonread_rmsprop_velocity_dense_1_bias^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:v
Read_68/DisableCopyOnReadDisableCopyOnRead!read_68_disablecopyonread_total_3"/device:CPU:0*
_output_shapes
 Ы
Read_68/ReadVariableOpReadVariableOp!read_68_disablecopyonread_total_3^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_69/DisableCopyOnReadDisableCopyOnRead!read_69_disablecopyonread_count_3"/device:CPU:0*
_output_shapes
 Ы
Read_69/ReadVariableOpReadVariableOp!read_69_disablecopyonread_count_3^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_70/DisableCopyOnReadDisableCopyOnRead!read_70_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 Ы
Read_70/ReadVariableOpReadVariableOp!read_70_disablecopyonread_total_2^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_71/DisableCopyOnReadDisableCopyOnRead!read_71_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 Ы
Read_71/ReadVariableOpReadVariableOp!read_71_disablecopyonread_count_2^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0h
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_72/DisableCopyOnReadDisableCopyOnRead!read_72_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_72/ReadVariableOpReadVariableOp!read_72_disablecopyonread_total_1^Read_72/DisableCopyOnRead"/device:CPU:0*
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
Read_73/DisableCopyOnReadDisableCopyOnRead!read_73_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_73/ReadVariableOpReadVariableOp!read_73_disablecopyonread_count_1^Read_73/DisableCopyOnRead"/device:CPU:0*
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
: t
Read_74/DisableCopyOnReadDisableCopyOnReadread_74_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_74/ReadVariableOpReadVariableOpread_74_disablecopyonread_total^Read_74/DisableCopyOnRead"/device:CPU:0*
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
: t
Read_75/DisableCopyOnReadDisableCopyOnReadread_75_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_75/ReadVariableOpReadVariableOpread_75_disablecopyonread_count^Read_75/DisableCopyOnRead"/device:CPU:0*
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
: ∞
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:M*
dtype0*ў
valueѕBћMB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHК
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:M*
dtype0*ѓ
value•BҐMB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ѕ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *[
dtypesQ
O2M		Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_152Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_153IdentityIdentity_152:output:0^NoOp*
T0*
_output_shapes
: џ
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "%
identity_153Identity_153:output:0*(
_construction_contextkEagerRuntime*±
_input_shapesЯ
Ь: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_75/ReadVariableOpRead_75/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=M9

_output_shapes
: 

_user_specified_nameConst:%L!

_user_specified_namecount:%K!

_user_specified_nametotal:'J#
!
_user_specified_name	count_1:'I#
!
_user_specified_name	total_1:'H#
!
_user_specified_name	count_2:'G#
!
_user_specified_name	total_2:'F#
!
_user_specified_name	count_3:'E#
!
_user_specified_name	total_3:=D9
7
_user_specified_nameRMSprop/velocity/dense_1/bias:?C;
9
_user_specified_name!RMSprop/velocity/dense_1/kernel:>B:
8
_user_specified_name RMSprop/velocity/conv2d_4/bias:@A<
:
_user_specified_name" RMSprop/velocity/conv2d_4/kernel:>@:
8
_user_specified_name RMSprop/velocity/conv2d_3/bias:@?<
:
_user_specified_name" RMSprop/velocity/conv2d_3/kernel:>>:
8
_user_specified_name RMSprop/velocity/conv2d_2/bias:@=<
:
_user_specified_name" RMSprop/velocity/conv2d_2/kernel:><:
8
_user_specified_name RMSprop/velocity/conv2d_1/bias:@;<
:
_user_specified_name" RMSprop/velocity/conv2d_1/kernel:<:8
6
_user_specified_nameRMSprop/velocity/conv2d/bias:>9:
8
_user_specified_name RMSprop/velocity/conv2d/kernel:K8G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_3/beta:L7H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_3/gamma:H6D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_2/bias:J5F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_2/kernel:K4G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_2/beta:L3H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_2/gamma:H2D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_1/bias:J1F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_1/kernel:K0G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_1/beta:L/H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_1/gamma:F.B
@
_user_specified_name(&RMSprop/velocity/conv2d_transpose/bias:H-D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose/kernel:I,E
C
_user_specified_name+)RMSprop/velocity/batch_normalization/beta:J+F
D
_user_specified_name,*RMSprop/velocity/batch_normalization/gamma:;*7
5
_user_specified_nameRMSprop/velocity/dense/bias:=)9
7
_user_specified_nameRMSprop/velocity/dense/kernel:-()
'
_user_specified_namelearning_rate:)'%
#
_user_specified_name	iteration:/&+
)
_user_specified_namelearning_rate_1:+%'
%
_user_specified_nameiteration_1:,$(
&
_user_specified_namedense_1/bias:.#*
(
_user_specified_namedense_1/kernel:-")
'
_user_specified_nameconv2d_4/bias:/!+
)
_user_specified_nameconv2d_4/kernel:- )
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:A=
;
_user_specified_name#!batch_normalization_3/moving_mean::6
4
_user_specified_namebatch_normalization_3/beta:;7
5
_user_specified_namebatch_normalization_3/gamma:73
1
_user_specified_nameconv2d_transpose_2/bias:95
3
_user_specified_nameconv2d_transpose_2/kernel:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:A=
;
_user_specified_name#!batch_normalization_2/moving_mean::6
4
_user_specified_namebatch_normalization_2/beta:;7
5
_user_specified_namebatch_normalization_2/gamma:73
1
_user_specified_nameconv2d_transpose_1/bias:95
3
_user_specified_nameconv2d_transpose_1/kernel:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:A=
;
_user_specified_name#!batch_normalization_1/moving_mean::
6
4
_user_specified_namebatch_normalization_1/beta:;	7
5
_user_specified_namebatch_normalization_1/gamma:51
/
_user_specified_nameconv2d_transpose/bias:73
1
_user_specified_nameconv2d_transpose/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:84
2
_user_specified_namebatch_normalization/beta:95
3
_user_specified_namebatch_normalization/gamma:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
џZ
ї
A__inference_model_layer_call_and_return_conditional_losses_122344
input_1
dense_122269:	dА2
dense_122271:	А2)
batch_normalization_122274:	А2)
batch_normalization_122276:	А2)
batch_normalization_122278:	А2)
batch_normalization_122280:	А21
conv2d_transpose_122292: @%
conv2d_transpose_122294: *
batch_normalization_1_122297: *
batch_normalization_1_122299: *
batch_normalization_1_122301: *
batch_normalization_1_122303: 3
conv2d_transpose_1_122308: '
conv2d_transpose_1_122310:*
batch_normalization_2_122313:*
batch_normalization_2_122315:*
batch_normalization_2_122317:*
batch_normalization_2_122319:3
conv2d_transpose_2_122323:'
conv2d_transpose_2_122325:*
batch_normalization_3_122328:*
batch_normalization_3_122330:*
batch_normalization_3_122332:*
batch_normalization_3_122334:'
conv2d_122338:
conv2d_122340:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallж
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_122269dense_122271*
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
GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_122138щ
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_122274batch_normalization_122276batch_normalization_122278batch_normalization_122280*
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
GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_121754л
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
GPU 2J 8В *O
fJRH
F__inference_activation_layer_call_and_return_conditional_losses_122157џ
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
GPU 2J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_122172Ў
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
GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_122289ц
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
GPU 2J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_121792 
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_transpose_122292conv2d_transpose_122294*
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
GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_121830©
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_122297batch_normalization_1_122299batch_normalization_1_122301batch_normalization_1_122303*
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_121875К
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_122206€
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
GPU 2J 8В *T
fORM
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_121913‘
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_transpose_1_122308conv2d_transpose_1_122310*
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
GPU 2J 8В *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_121951Ђ
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_2_122313batch_normalization_2_122315batch_normalization_2_122317batch_normalization_2_122319*
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_121996К
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_122227—
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0conv2d_transpose_2_122323conv2d_transpose_2_122325*
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
GPU 2J 8В *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_122055Ђ
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_3_122328batch_normalization_3_122330batch_normalization_3_122332batch_normalization_3_122334*
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_122100К
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_122247°
conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0conv2d_122338conv2d_122340*
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
GPU 2J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_122259Р
IdentityIdentity'conv2d/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€¶
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall^dense/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:&"
 
_user_specified_name122340:&"
 
_user_specified_name122338:&"
 
_user_specified_name122334:&"
 
_user_specified_name122332:&"
 
_user_specified_name122330:&"
 
_user_specified_name122328:&"
 
_user_specified_name122325:&"
 
_user_specified_name122323:&"
 
_user_specified_name122319:&"
 
_user_specified_name122317:&"
 
_user_specified_name122315:&"
 
_user_specified_name122313:&"
 
_user_specified_name122310:&"
 
_user_specified_name122308:&"
 
_user_specified_name122303:&"
 
_user_specified_name122301:&
"
 
_user_specified_name122299:&	"
 
_user_specified_name122297:&"
 
_user_specified_name122294:&"
 
_user_specified_name122292:&"
 
_user_specified_name122280:&"
 
_user_specified_name122278:&"
 
_user_specified_name122276:&"
 
_user_specified_name122274:&"
 
_user_specified_name122271:&"
 
_user_specified_name122269:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1
–
Ь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_121875

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
њ
А
D__inference_conv2d_3_layer_call_and_return_conditional_losses_124265

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
Є
Ч
(__inference_model_1_layer_call_fn_122733
input_2!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	Аd
	unknown_8:
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_122654o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€((: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&
"
 
_user_specified_name122729:&	"
 
_user_specified_name122727:&"
 
_user_specified_name122725:&"
 
_user_specified_name122723:&"
 
_user_specified_name122721:&"
 
_user_specified_name122719:&"
 
_user_specified_name122717:&"
 
_user_specified_name122715:&"
 
_user_specified_name122713:&"
 
_user_specified_name122711:X T
/
_output_shapes
:€€€€€€€€€((
!
_user_specified_name	input_2
Л

—
6__inference_batch_normalization_3_layer_call_fn_124072

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallШ
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_122082Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124068:&"
 
_user_specified_name124066:&"
 
_user_specified_name124064:&"
 
_user_specified_name124062:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Џ
_
C__inference_reshape_layer_call_and_return_conditional_losses_123728

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
м
Х
&__inference_dense_layer_call_fn_123609

inputs
unknown:	dА2
	unknown_0:	А2
identityИҐStatefulPartitionedCall„
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
GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_122138p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А2<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123605:&"
 
_user_specified_name123603:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
Э
ы
B__inference_conv2d_layer_call_and_return_conditional_losses_124151

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ў

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_124334

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
Ў

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_124287

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
і
d
H__inference_activation_3_layer_call_and_return_conditional_losses_122247

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
Ў

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_124240

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
ч@
Х
C__inference_model_1_layer_call_and_return_conditional_losses_123600

inputsA
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	Аd5
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpО
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0љ
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0™
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@З
dropout_1/IdentityIdentityconv2d_1/Relu:activations:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0”
conv2d_2/Conv2DConv2Ddropout_1/Identity:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АИ
dropout_2/IdentityIdentityconv2d_2/Relu:activations:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0”
conv2d_3/Conv2DConv2Ddropout_2/Identity:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АИ
dropout_3/IdentityIdentityconv2d_3/Relu:activations:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0”
conv2d_4/Conv2DConv2Ddropout_3/Identity:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АИ
dropout_4/IdentityIdentityconv2d_4/Relu:activations:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аf
flatten/ShapeShapedropout_4/Identity:output:0*
T0*
_output_shapes
::нѕe
flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
flatten/strided_sliceStridedSliceflatten/Shape:output:0$flatten/strided_slice/stack:output:0&flatten/strided_slice/stack_1:output:0&flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Н
flatten/Reshape/shapePackflatten/strided_slice:output:0 flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Т
flatten/ReshapeReshapedropout_4/Identity:output:0flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Е
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€п
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Оє
ћ'
!__inference__wrapped_model_121700
input_3E
2model_2_model_dense_matmul_readvariableop_resource:	dА2B
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
4model_2_model_conv2d_biasadd_readvariableop_resource:Q
7model_2_model_1_conv2d_1_conv2d_readvariableop_resource:@F
8model_2_model_1_conv2d_1_biasadd_readvariableop_resource:@R
7model_2_model_1_conv2d_2_conv2d_readvariableop_resource:@АG
8model_2_model_1_conv2d_2_biasadd_readvariableop_resource:	АS
7model_2_model_1_conv2d_3_conv2d_readvariableop_resource:ААG
8model_2_model_1_conv2d_3_biasadd_readvariableop_resource:	АS
7model_2_model_1_conv2d_4_conv2d_readvariableop_resource:ААG
8model_2_model_1_conv2d_4_biasadd_readvariableop_resource:	АI
6model_2_model_1_dense_1_matmul_readvariableop_resource:	АdE
7model_2_model_1_dense_1_biasadd_readvariableop_resource:
identityИҐ:model_2/model/batch_normalization/batchnorm/ReadVariableOpҐ<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1Ґ<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2Ґ>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpҐCmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpҐEmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ґ2model_2/model/batch_normalization_1/ReadVariableOpҐ4model_2/model/batch_normalization_1/ReadVariableOp_1ҐCmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpҐEmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Ґ2model_2/model/batch_normalization_2/ReadVariableOpҐ4model_2/model/batch_normalization_2/ReadVariableOp_1ҐCmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpҐEmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Ґ2model_2/model/batch_normalization_3/ReadVariableOpҐ4model_2/model/batch_normalization_3/ReadVariableOp_1Ґ+model_2/model/conv2d/BiasAdd/ReadVariableOpҐ*model_2/model/conv2d/Conv2D/ReadVariableOpҐ5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOpҐ>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOpҐ7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpҐ@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOpҐ7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpҐ@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOpҐ*model_2/model/dense/BiasAdd/ReadVariableOpҐ)model_2/model/dense/MatMul/ReadVariableOpҐ/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_1/Conv2D/ReadVariableOpҐ/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_2/Conv2D/ReadVariableOpҐ/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_3/Conv2D/ReadVariableOpҐ/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOpҐ.model_2/model_1/conv2d_4/Conv2D/ReadVariableOpҐ.model_2/model_1/dense_1/BiasAdd/ReadVariableOpҐ-model_2/model_1/dense_1/MatMul/ReadVariableOpЭ
)model_2/model/dense/MatMul/ReadVariableOpReadVariableOp2model_2_model_dense_matmul_readvariableop_resource*
_output_shapes
:	dА2*
dtype0У
model_2/model/dense/MatMulMatMulinput_31model_2/model/dense/MatMul/ReadVariableOp:value:0*
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
:€€€€€€€€€((Ѓ
.model_2/model_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0е
model_2/model_1/conv2d_1/Conv2DConv2D model_2/model/conv2d/Sigmoid:y:06model_2/model_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
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
-model_2/model_1/dense_1/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0ї
model_2/model_1/dense_1/MatMulMatMul(model_2/model_1/flatten/Reshape:output:05model_2/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
.model_2/model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Њ
model_2/model_1/dense_1/BiasAddBiasAdd(model_2/model_1/dense_1/MatMul:product:06model_2/model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ж
model_2/model_1/dense_1/SigmoidSigmoid(model_2/model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€r
IdentityIdentity#model_2/model_1/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€†
NoOpNoOp;^model_2/model/batch_normalization/batchnorm/ReadVariableOp=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_1=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_2?^model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpD^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_1/ReadVariableOp5^model_2/model/batch_normalization_1/ReadVariableOp_1D^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_2/ReadVariableOp5^model_2/model/batch_normalization_2/ReadVariableOp_1D^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_3/ReadVariableOp5^model_2/model/batch_normalization_3/ReadVariableOp_1,^model_2/model/conv2d/BiasAdd/ReadVariableOp+^model_2/model/conv2d/Conv2D/ReadVariableOp6^model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp?^model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp+^model_2/model/dense/BiasAdd/ReadVariableOp*^model_2/model/dense/MatMul/ReadVariableOp0^model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_1/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_2/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_3/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_4/Conv2D/ReadVariableOp/^model_2/model_1/dense_1/BiasAdd/ReadVariableOp.^model_2/model_1/dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2|
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1<model_2/model/batch_normalization/batchnorm/ReadVariableOp_12|
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2<model_2/model/batch_normalization/batchnorm/ReadVariableOp_22x
:model_2/model/batch_normalization/batchnorm/ReadVariableOp:model_2/model/batch_normalization/batchnorm/ReadVariableOp2А
>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOp>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOp2О
Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12К
Cmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2l
4model_2/model/batch_normalization_1/ReadVariableOp_14model_2/model/batch_normalization_1/ReadVariableOp_12h
2model_2/model/batch_normalization_1/ReadVariableOp2model_2/model/batch_normalization_1/ReadVariableOp2О
Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12К
Cmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2l
4model_2/model/batch_normalization_2/ReadVariableOp_14model_2/model/batch_normalization_2/ReadVariableOp_12h
2model_2/model/batch_normalization_2/ReadVariableOp2model_2/model/batch_normalization_2/ReadVariableOp2О
Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12К
Cmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2l
4model_2/model/batch_normalization_3/ReadVariableOp_14model_2/model/batch_normalization_3/ReadVariableOp_12h
2model_2/model/batch_normalization_3/ReadVariableOp2model_2/model/batch_normalization_3/ReadVariableOp2Z
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
-model_2/model_1/dense_1/MatMul/ReadVariableOp-model_2/model_1/dense_1/MatMul/ReadVariableOp:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_3
ц
a
C__inference_dropout_layer_call_and_return_conditional_losses_122289

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
ь
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_124245

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
®	
”
4__inference_batch_normalization_layer_call_fn_123645

inputs
unknown:	А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
identityИҐStatefulPartitionedCall€
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
GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_121754p
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123641:&"
 
_user_specified_name123639:&"
 
_user_specified_name123637:&"
 
_user_specified_name123635:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
ь
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_122688

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
ѓ
D
(__inference_flatten_layer_call_fn_124344

inputs
identityѓ
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
GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_122635a
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
њ
А
D__inference_conv2d_4_layer_call_and_return_conditional_losses_122611

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
№b
Х
C__inference_model_1_layer_call_and_return_conditional_losses_122982

inputsA
'conv2d_1_conv2d_readvariableop_resource:@6
(conv2d_1_biasadd_readvariableop_resource:@B
'conv2d_2_conv2d_readvariableop_resource:@А7
(conv2d_2_biasadd_readvariableop_resource:	АC
'conv2d_3_conv2d_readvariableop_resource:АА7
(conv2d_3_biasadd_readvariableop_resource:	АC
'conv2d_4_conv2d_readvariableop_resource:АА7
(conv2d_4_biasadd_readvariableop_resource:	А9
&dense_1_matmul_readvariableop_resource:	Аd5
'dense_1_biasadd_readvariableop_resource:
identityИҐconv2d_1/BiasAdd/ReadVariableOpҐconv2d_1/Conv2D/ReadVariableOpҐconv2d_2/BiasAdd/ReadVariableOpҐconv2d_2/Conv2D/ReadVariableOpҐconv2d_3/BiasAdd/ReadVariableOpҐconv2d_3/Conv2D/ReadVariableOpҐconv2d_4/BiasAdd/ReadVariableOpҐconv2d_4/Conv2D/ReadVariableOpҐdense_1/BiasAdd/ReadVariableOpҐdense_1/MatMul/ReadVariableOpО
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0љ
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
paddingSAME*
strides
Д
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0™
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@|
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?І
dropout_1/dropout/MulMulconv2d_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@p
dropout_1/dropout/ShapeShapeconv2d_1/Relu:activations:0*
T0*
_output_shapes
::нѕЇ
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>ё
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@^
dropout_1/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ’
dropout_1/dropout/SelectV2SelectV2"dropout_1/dropout/GreaterEqual:z:0dropout_1/dropout/Mul:z:0"dropout_1/dropout/Const_1:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@П
conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0џ
conv2d_2/Conv2DConv2D#dropout_1/dropout/SelectV2:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?®
dropout_2/dropout/MulMulconv2d_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аp
dropout_2/dropout/ShapeShapeconv2d_2/Relu:activations:0*
T0*
_output_shapes
::нѕї
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>я
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А^
dropout_2/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ÷
dropout_2/dropout/SelectV2SelectV2"dropout_2/dropout/GreaterEqual:z:0dropout_2/dropout/Mul:z:0"dropout_2/dropout/Const_1:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0џ
conv2d_3/Conv2DConv2D#dropout_2/dropout/SelectV2:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?®
dropout_3/dropout/MulMulconv2d_3/Relu:activations:0 dropout_3/dropout/Const:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аp
dropout_3/dropout/ShapeShapeconv2d_3/Relu:activations:0*
T0*
_output_shapes
::нѕї
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>я
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А^
dropout_3/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ÷
dropout_3/dropout/SelectV2SelectV2"dropout_3/dropout/GreaterEqual:z:0dropout_3/dropout/Mul:z:0"dropout_3/dropout/Const_1:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€АР
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0џ
conv2d_4/Conv2DConv2D#dropout_3/dropout/SelectV2:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
paddingSAME*
strides
Е
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А}
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А\
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU’?®
dropout_4/dropout/MulMulconv2d_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аp
dropout_4/dropout/ShapeShapeconv2d_4/Relu:activations:0*
T0*
_output_shapes
::нѕї
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
dtype0e
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ>я
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А^
dropout_4/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ÷
dropout_4/dropout/SelectV2SelectV2"dropout_4/dropout/GreaterEqual:z:0dropout_4/dropout/Mul:z:0"dropout_4/dropout/Const_1:output:0*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€Аn
flatten/ShapeShape#dropout_4/dropout/SelectV2:output:0*
T0*
_output_shapes
::нѕe
flatten/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
flatten/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
flatten/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
flatten/strided_sliceStridedSliceflatten/Shape:output:0$flatten/strided_slice/stack:output:0&flatten/strided_slice/stack_1:output:0&flatten/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
flatten/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Н
flatten/Reshape/shapePackflatten/strided_slice:output:0 flatten/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:Ъ
flatten/ReshapeReshape#dropout_4/dropout/SelectV2:output:0flatten/Reshape/shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Е
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	Аd*
dtype0Л
dense_1/MatMulMatMulflatten/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€п
NoOpNoOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : : : : : : : 2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
п
¶
1__inference_conv2d_transpose_layer_call_fn_123781

inputs!
unknown: @
	unknown_0: 
identityИҐStatefulPartitionedCallы
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
GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_121830Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123777:&"
 
_user_specified_name123775:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
і
ф
(__inference_model_2_layer_call_fn_123288
input_3
unknown:	dА2
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

unknown_24:$

unknown_25:@

unknown_26:@%

unknown_27:@А

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А

unknown_33:	Аd

unknown_34:
identityИҐStatefulPartitionedCallђ
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_123134o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&$"
 
_user_specified_name123284:&#"
 
_user_specified_name123282:&""
 
_user_specified_name123280:&!"
 
_user_specified_name123278:& "
 
_user_specified_name123276:&"
 
_user_specified_name123274:&"
 
_user_specified_name123272:&"
 
_user_specified_name123270:&"
 
_user_specified_name123268:&"
 
_user_specified_name123266:&"
 
_user_specified_name123264:&"
 
_user_specified_name123262:&"
 
_user_specified_name123260:&"
 
_user_specified_name123258:&"
 
_user_specified_name123256:&"
 
_user_specified_name123254:&"
 
_user_specified_name123252:&"
 
_user_specified_name123250:&"
 
_user_specified_name123248:&"
 
_user_specified_name123246:&"
 
_user_specified_name123244:&"
 
_user_specified_name123242:&"
 
_user_specified_name123240:&"
 
_user_specified_name123238:&"
 
_user_specified_name123236:&"
 
_user_specified_name123234:&
"
 
_user_specified_name123232:&	"
 
_user_specified_name123230:&"
 
_user_specified_name123228:&"
 
_user_specified_name123226:&"
 
_user_specified_name123224:&"
 
_user_specified_name123222:&"
 
_user_specified_name123220:&"
 
_user_specified_name123218:&"
 
_user_specified_name123216:&"
 
_user_specified_name123214:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_3
Є
Ч
(__inference_model_1_layer_call_fn_122758
input_2!
unknown:@
	unknown_0:@$
	unknown_1:@А
	unknown_2:	А%
	unknown_3:АА
	unknown_4:	А%
	unknown_5:АА
	unknown_6:	А
	unknown_7:	Аd
	unknown_8:
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_122708o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€((: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&
"
 
_user_specified_name122754:&	"
 
_user_specified_name122752:&"
 
_user_specified_name122750:&"
 
_user_specified_name122748:&"
 
_user_specified_name122746:&"
 
_user_specified_name122744:&"
 
_user_specified_name122742:&"
 
_user_specified_name122740:&"
 
_user_specified_name122738:&"
 
_user_specified_name122736:X T
/
_output_shapes
:€€€€€€€€€((
!
_user_specified_name	input_2
≠
D
(__inference_reshape_layer_call_fn_123714

inputs
identityґ
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
GPU 2J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_122172h
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
ї
€
D__inference_conv2d_2_layer_call_and_return_conditional_losses_122553

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ш
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_124198

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
Л

—
6__inference_batch_normalization_2_layer_call_fn_123958

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallШ
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_121978Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123954:&"
 
_user_specified_name123952:&"
 
_user_specified_name123950:&"
 
_user_specified_name123948:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
і
d
H__inference_activation_2_layer_call_and_return_conditional_losses_122227

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
Ў

d
E__inference_dropout_2_layer_call_and_return_conditional_losses_122570

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
і
d
H__inference_activation_1_layer_call_and_return_conditional_losses_123886

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
Э
°
)__inference_conv2d_3_layer_call_fn_124254

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallв
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_122582x
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124250:&"
 
_user_specified_name124248:X T
0
_output_shapes
:€€€€€€€€€

А
 
_user_specified_nameinputs
ц2
Т
C__inference_model_1_layer_call_and_return_conditional_losses_122654
input_2)
conv2d_1_122525:@
conv2d_1_122527:@*
conv2d_2_122554:@А
conv2d_2_122556:	А+
conv2d_3_122583:АА
conv2d_3_122585:	А+
conv2d_4_122612:АА
conv2d_4_122614:	А!
dense_1_122648:	Аd
dense_1_122650:
identityИҐ conv2d_1/StatefulPartitionedCallҐ conv2d_2/StatefulPartitionedCallҐ conv2d_3/StatefulPartitionedCallҐ conv2d_4/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐ!dropout_1/StatefulPartitionedCallҐ!dropout_2/StatefulPartitionedCallҐ!dropout_3/StatefulPartitionedCallҐ!dropout_4/StatefulPartitionedCallщ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCallinput_2conv2d_1_122525conv2d_1_122527*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_122524х
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
GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_122541Э
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_2_122554conv2d_2_122556*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_2_layer_call_and_return_conditional_losses_122553Ъ
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
GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_122570Э
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv2d_3_122583conv2d_3_122585*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_122582Ъ
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
GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_122599Э
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_4_122612conv2d_4_122614*
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_122611Ъ
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
GPU 2J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_122628џ
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
GPU 2J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_122635Ж
dense_1/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1_122648dense_1_122650*
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
GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_122647w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€а
NoOpNoOp!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:€€€€€€€€€((: : : : : : : : : : 2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall:&
"
 
_user_specified_name122650:&	"
 
_user_specified_name122648:&"
 
_user_specified_name122614:&"
 
_user_specified_name122612:&"
 
_user_specified_name122585:&"
 
_user_specified_name122583:&"
 
_user_specified_name122556:&"
 
_user_specified_name122554:&"
 
_user_specified_name122527:&"
 
_user_specified_name122525:X T
/
_output_shapes
:€€€€€€€€€((
!
_user_specified_name	input_2
√
F
*__inference_dropout_4_layer_call_fn_124322

inputs
identityє
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
GPU 2J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_122699i
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
К
ј
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_121978

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
К
ј
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_121857

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ь
c
E__inference_dropout_2_layer_call_and_return_conditional_losses_122677

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
Н

—
6__inference_batch_normalization_3_layer_call_fn_124085

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИҐStatefulPartitionedCallЪ
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_122100Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124081:&"
 
_user_specified_name124079:&"
 
_user_specified_name124077:&"
 
_user_specified_name124075:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Э
°
)__inference_conv2d_4_layer_call_fn_124301

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallв
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_122611x
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124297:&"
 
_user_specified_name124295:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
і
d
H__inference_activation_2_layer_call_and_return_conditional_losses_124017

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
К
ј
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124103

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
“$
†

C__inference_model_2_layer_call_and_return_conditional_losses_123134
input_3
model_123008:	dА2
model_123010:	А2
model_123012:	А2
model_123014:	А2
model_123016:	А2
model_123018:	А2&
model_123020: @
model_123022: 
model_123024: 
model_123026: 
model_123028: 
model_123030: &
model_123032: 
model_123034:
model_123036:
model_123038:
model_123040:
model_123042:&
model_123044:
model_123046:
model_123048:
model_123050:
model_123052:
model_123054:&
model_123056:
model_123058:(
model_1_123112:@
model_1_123114:@)
model_1_123116:@А
model_1_123118:	А*
model_1_123120:АА
model_1_123122:	А*
model_1_123124:АА
model_1_123126:	А!
model_1_123128:	Аd
model_1_123130:
identityИҐmodel/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCall€
model/StatefulPartitionedCallStatefulPartitionedCallinput_3model_123008model_123010model_123012model_123014model_123016model_123018model_123020model_123022model_123024model_123026model_123028model_123030model_123032model_123034model_123036model_123038model_123040model_123042model_123044model_123046model_123048model_123050model_123052model_123054model_123056model_123058*&
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
GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_122344Ь
model_1/StatefulPartitionedCallStatefulPartitionedCall&model/StatefulPartitionedCall:output:0model_1_123112model_1_123114model_1_123116model_1_123118model_1_123120model_1_123122model_1_123124model_1_123126model_1_123128model_1_123130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_123111w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d
NoOpNoOp^model/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:&$"
 
_user_specified_name123130:&#"
 
_user_specified_name123128:&""
 
_user_specified_name123126:&!"
 
_user_specified_name123124:& "
 
_user_specified_name123122:&"
 
_user_specified_name123120:&"
 
_user_specified_name123118:&"
 
_user_specified_name123116:&"
 
_user_specified_name123114:&"
 
_user_specified_name123112:&"
 
_user_specified_name123058:&"
 
_user_specified_name123056:&"
 
_user_specified_name123054:&"
 
_user_specified_name123052:&"
 
_user_specified_name123050:&"
 
_user_specified_name123048:&"
 
_user_specified_name123046:&"
 
_user_specified_name123044:&"
 
_user_specified_name123042:&"
 
_user_specified_name123040:&"
 
_user_specified_name123038:&"
 
_user_specified_name123036:&"
 
_user_specified_name123034:&"
 
_user_specified_name123032:&"
 
_user_specified_name123030:&"
 
_user_specified_name123028:&
"
 
_user_specified_name123026:&	"
 
_user_specified_name123024:&"
 
_user_specified_name123022:&"
 
_user_specified_name123020:&"
 
_user_specified_name123018:&"
 
_user_specified_name123016:&"
 
_user_specified_name123014:&"
 
_user_specified_name123012:&"
 
_user_specified_name123010:&"
 
_user_specified_name123008:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_3
–
Ь
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124121

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
«
_
C__inference_flatten_layer_call_and_return_conditional_losses_122635

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
Н
I
-__inference_activation_3_layer_call_fn_124126

inputs
identityЌ
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_122247z
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
Є
L
0__inference_up_sampling2d_1_layer_call_fn_123891

inputs
identityў
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
GPU 2J 8В *T
fORM
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_121913Г
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
џ
Ь
'__inference_conv2d_layer_call_fn_124140

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallс
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
GPU 2J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_122259Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124136:&"
 
_user_specified_name124134:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ѕ

b
C__inference_dropout_layer_call_and_return_conditional_losses_123750

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
К
ј
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_123989

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ц
a
C__inference_dropout_layer_call_and_return_conditional_losses_123755

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
ь
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_124339

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
У!
Ы
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_123945

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
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
в
≤
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123699

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
:€€€€€€€€€А2: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
У!
Ы
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_124059

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
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
•
G
+__inference_activation_layer_call_fn_123704

inputs
identity≤
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
GPU 2J 8В *O
fJRH
F__inference_activation_layer_call_and_return_conditional_losses_122157a
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
њ
F
*__inference_dropout_1_layer_call_fn_124181

inputs
identityЄ
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
GPU 2J 8В *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_122666h
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
ь
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_122699

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
в
≤
O__inference_batch_normalization_layer_call_and_return_conditional_losses_121754

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
:€€€€€€€€€А2: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
Н

—
6__inference_batch_normalization_1_layer_call_fn_123840

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallЪ
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_121875Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123836:&"
 
_user_specified_name123834:&"
 
_user_specified_name123832:&"
 
_user_specified_name123830:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
≥
э
D__inference_conv2d_1_layer_call_and_return_conditional_losses_122524

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
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
:€€€€€€€€€((: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs
ь
c
E__inference_dropout_3_layer_call_and_return_conditional_losses_124292

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
Л

—
6__inference_batch_normalization_1_layer_call_fn_123827

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИҐStatefulPartitionedCallШ
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_121857Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123823:&"
 
_user_specified_name123821:&"
 
_user_specified_name123819:&"
 
_user_specified_name123817:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
м
±
&__inference_model_layer_call_fn_122401
input_1
unknown:	dА2
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
identityИҐStatefulPartitionedCall∞
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
GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_122266Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name122397:&"
 
_user_specified_name122395:&"
 
_user_specified_name122393:&"
 
_user_specified_name122391:&"
 
_user_specified_name122389:&"
 
_user_specified_name122387:&"
 
_user_specified_name122385:&"
 
_user_specified_name122383:&"
 
_user_specified_name122381:&"
 
_user_specified_name122379:&"
 
_user_specified_name122377:&"
 
_user_specified_name122375:&"
 
_user_specified_name122373:&"
 
_user_specified_name122371:&"
 
_user_specified_name122369:&"
 
_user_specified_name122367:&
"
 
_user_specified_name122365:&	"
 
_user_specified_name122363:&"
 
_user_specified_name122361:&"
 
_user_specified_name122359:&"
 
_user_specified_name122357:&"
 
_user_specified_name122355:&"
 
_user_specified_name122353:&"
 
_user_specified_name122351:&"
 
_user_specified_name122349:&"
 
_user_specified_name122347:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1
¶	
”
4__inference_batch_normalization_layer_call_fn_123632

inputs
unknown:	А2
	unknown_0:	А2
	unknown_1:	А2
	unknown_2:	А2
identityИҐStatefulPartitionedCallэ
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
GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_121734p
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123628:&"
 
_user_specified_name123626:&"
 
_user_specified_name123624:&"
 
_user_specified_name123622:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
К
ј
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123858

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ї
€
D__inference_conv2d_2_layer_call_and_return_conditional_losses_124218

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
√
F
*__inference_dropout_2_layer_call_fn_124228

inputs
identityє
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
GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_122677i
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
њ
А
D__inference_conv2d_4_layer_call_and_return_conditional_losses_124312

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
с
c
*__inference_dropout_2_layer_call_fn_124223

inputs
identityИҐStatefulPartitionedCall…
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
GPU 2J 8В *N
fIRG
E__inference_dropout_2_layer_call_and_return_conditional_losses_122570x
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
√
F
*__inference_dropout_3_layer_call_fn_124275

inputs
identityє
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
GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_122688i
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
–
Ь
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_124007

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
5:+€€€€€€€€€€€€€€€€€€€€€€€€€€€: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
і
d
H__inference_activation_1_layer_call_and_return_conditional_losses_122206

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
Џ
_
C__inference_reshape_layer_call_and_return_conditional_losses_122172

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
 $
†

C__inference_model_2_layer_call_and_return_conditional_losses_123005
input_3
model_122851:	dА2
model_122853:	А2
model_122855:	А2
model_122857:	А2
model_122859:	А2
model_122861:	А2&
model_122863: @
model_122865: 
model_122867: 
model_122869: 
model_122871: 
model_122873: &
model_122875: 
model_122877:
model_122879:
model_122881:
model_122883:
model_122885:&
model_122887:
model_122889:
model_122891:
model_122893:
model_122895:
model_122897:&
model_122899:
model_122901:(
model_1_122983:@
model_1_122985:@)
model_1_122987:@А
model_1_122989:	А*
model_1_122991:АА
model_1_122993:	А*
model_1_122995:АА
model_1_122997:	А!
model_1_122999:	Аd
model_1_123001:
identityИҐmodel/StatefulPartitionedCallҐmodel_1/StatefulPartitionedCallч
model/StatefulPartitionedCallStatefulPartitionedCallinput_3model_122851model_122853model_122855model_122857model_122859model_122861model_122863model_122865model_122867model_122869model_122871model_122873model_122875model_122877model_122879model_122881model_122883model_122885model_122887model_122889model_122891model_122893model_122895model_122897model_122899model_122901*&
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
GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_122266Ь
model_1/StatefulPartitionedCallStatefulPartitionedCall&model/StatefulPartitionedCall:output:0model_1_122983model_1_122985model_1_122987model_1_122989model_1_122991model_1_122993model_1_122995model_1_122997model_1_122999model_1_123001*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_1_layer_call_and_return_conditional_losses_122982w
IdentityIdentity(model_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€d
NoOpNoOp^model/StatefulPartitionedCall ^model_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall2B
model_1/StatefulPartitionedCallmodel_1/StatefulPartitionedCall:&$"
 
_user_specified_name123001:&#"
 
_user_specified_name122999:&""
 
_user_specified_name122997:&!"
 
_user_specified_name122995:& "
 
_user_specified_name122993:&"
 
_user_specified_name122991:&"
 
_user_specified_name122989:&"
 
_user_specified_name122987:&"
 
_user_specified_name122985:&"
 
_user_specified_name122983:&"
 
_user_specified_name122901:&"
 
_user_specified_name122899:&"
 
_user_specified_name122897:&"
 
_user_specified_name122895:&"
 
_user_specified_name122893:&"
 
_user_specified_name122891:&"
 
_user_specified_name122889:&"
 
_user_specified_name122887:&"
 
_user_specified_name122885:&"
 
_user_specified_name122883:&"
 
_user_specified_name122881:&"
 
_user_specified_name122879:&"
 
_user_specified_name122877:&"
 
_user_specified_name122875:&"
 
_user_specified_name122873:&"
 
_user_specified_name122871:&
"
 
_user_specified_name122869:&	"
 
_user_specified_name122867:&"
 
_user_specified_name122865:&"
 
_user_specified_name122863:&"
 
_user_specified_name122861:&"
 
_user_specified_name122859:&"
 
_user_specified_name122857:&"
 
_user_specified_name122855:&"
 
_user_specified_name122853:&"
 
_user_specified_name122851:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_3
С!
Щ
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_121830

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
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
 
_user_specified_nameinputs
±&
м
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123679

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
:€€€€€€€€€А2: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€А2
 
_user_specified_nameinputs
й
a
(__inference_dropout_layer_call_fn_123733

inputs
identityИҐStatefulPartitionedCall∆
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
GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_122185w
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
Ў

d
E__inference_dropout_4_layer_call_and_return_conditional_losses_122628

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
—

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_122541

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
Я
e
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_121792

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
ф
±
&__inference_model_layer_call_fn_122458
input_1
unknown:	dА2
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
identityИҐStatefulPartitionedCallЄ
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
GPU 2J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_122344Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name122454:&"
 
_user_specified_name122452:&"
 
_user_specified_name122450:&"
 
_user_specified_name122448:&"
 
_user_specified_name122446:&"
 
_user_specified_name122444:&"
 
_user_specified_name122442:&"
 
_user_specified_name122440:&"
 
_user_specified_name122438:&"
 
_user_specified_name122436:&"
 
_user_specified_name122434:&"
 
_user_specified_name122432:&"
 
_user_specified_name122430:&"
 
_user_specified_name122428:&"
 
_user_specified_name122426:&"
 
_user_specified_name122424:&
"
 
_user_specified_name122422:&	"
 
_user_specified_name122420:&"
 
_user_specified_name122418:&"
 
_user_specified_name122416:&"
 
_user_specified_name122414:&"
 
_user_specified_name122412:&"
 
_user_specified_name122410:&"
 
_user_specified_name122408:&"
 
_user_specified_name122406:&"
 
_user_specified_name122404:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1
у[
Ё
A__inference_model_layer_call_and_return_conditional_losses_122266
input_1
dense_122139:	dА2
dense_122141:	А2)
batch_normalization_122144:	А2)
batch_normalization_122146:	А2)
batch_normalization_122148:	А2)
batch_normalization_122150:	А21
conv2d_transpose_122188: @%
conv2d_transpose_122190: *
batch_normalization_1_122193: *
batch_normalization_1_122195: *
batch_normalization_1_122197: *
batch_normalization_1_122199: 3
conv2d_transpose_1_122209: '
conv2d_transpose_1_122211:*
batch_normalization_2_122214:*
batch_normalization_2_122216:*
batch_normalization_2_122218:*
batch_normalization_2_122220:3
conv2d_transpose_2_122229:'
conv2d_transpose_2_122231:*
batch_normalization_3_122234:*
batch_normalization_3_122236:*
batch_normalization_3_122238:*
batch_normalization_3_122240:'
conv2d_122260:
conv2d_122262:
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐ-batch_normalization_2/StatefulPartitionedCallҐ-batch_normalization_3/StatefulPartitionedCallҐconv2d/StatefulPartitionedCallҐ(conv2d_transpose/StatefulPartitionedCallҐ*conv2d_transpose_1/StatefulPartitionedCallҐ*conv2d_transpose_2/StatefulPartitionedCallҐdense/StatefulPartitionedCallҐdropout/StatefulPartitionedCallж
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_122139dense_122141*
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
GPU 2J 8В *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_122138ч
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_122144batch_normalization_122146batch_normalization_122148batch_normalization_122150*
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
GPU 2J 8В *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_121734л
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
GPU 2J 8В *O
fJRH
F__inference_activation_layer_call_and_return_conditional_losses_122157џ
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
GPU 2J 8В *L
fGRE
C__inference_reshape_layer_call_and_return_conditional_losses_122172и
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
GPU 2J 8В *L
fGRE
C__inference_dropout_layer_call_and_return_conditional_losses_122185ю
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
GPU 2J 8В *R
fMRK
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_121792 
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall&up_sampling2d/PartitionedCall:output:0conv2d_transpose_122188conv2d_transpose_122190*
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
GPU 2J 8В *U
fPRN
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_121830І
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0batch_normalization_1_122193batch_normalization_1_122195batch_normalization_1_122197batch_normalization_1_122199*
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_121857К
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_1_layer_call_and_return_conditional_losses_122206€
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
GPU 2J 8В *T
fORM
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_121913‘
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall(up_sampling2d_1/PartitionedCall:output:0conv2d_transpose_1_122209conv2d_transpose_1_122211*
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
GPU 2J 8В *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_121951©
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0batch_normalization_2_122214batch_normalization_2_122216batch_normalization_2_122218batch_normalization_2_122220*
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_121978К
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_2_layer_call_and_return_conditional_losses_122227—
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall%activation_2/PartitionedCall:output:0conv2d_transpose_2_122229conv2d_transpose_2_122231*
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
GPU 2J 8В *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_122055©
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0batch_normalization_3_122234batch_normalization_3_122236batch_normalization_3_122238batch_normalization_3_122240*
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
GPU 2J 8В *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_122082К
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
GPU 2J 8В *Q
fLRJ
H__inference_activation_3_layer_call_and_return_conditional_losses_122247°
conv2d/StatefulPartitionedCallStatefulPartitionedCall%activation_3/PartitionedCall:output:0conv2d_122260conv2d_122262*
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
GPU 2J 8В *K
fFRD
B__inference_conv2d_layer_call_and_return_conditional_losses_122259Р
IdentityIdentity'conv2d/StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€»
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall^conv2d/StatefulPartitionedCall)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:&"
 
_user_specified_name122262:&"
 
_user_specified_name122260:&"
 
_user_specified_name122240:&"
 
_user_specified_name122238:&"
 
_user_specified_name122236:&"
 
_user_specified_name122234:&"
 
_user_specified_name122231:&"
 
_user_specified_name122229:&"
 
_user_specified_name122220:&"
 
_user_specified_name122218:&"
 
_user_specified_name122216:&"
 
_user_specified_name122214:&"
 
_user_specified_name122211:&"
 
_user_specified_name122209:&"
 
_user_specified_name122199:&"
 
_user_specified_name122197:&
"
 
_user_specified_name122195:&	"
 
_user_specified_name122193:&"
 
_user_specified_name122190:&"
 
_user_specified_name122188:&"
 
_user_specified_name122150:&"
 
_user_specified_name122148:&"
 
_user_specified_name122146:&"
 
_user_specified_name122144:&"
 
_user_specified_name122141:&"
 
_user_specified_name122139:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_1
У!
Ы
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_121951

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
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
ќ
b
F__inference_activation_layer_call_and_return_conditional_losses_122157

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
Ќ

х
C__inference_dense_1_layer_call_and_return_conditional_losses_124370

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
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:€€€€€€€€€Аd
 
_user_specified_nameinputs
ђ
ф
(__inference_model_2_layer_call_fn_123211
input_3
unknown:	dА2
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

unknown_24:$

unknown_25:@

unknown_26:@%

unknown_27:@А

unknown_28:	А&

unknown_29:АА

unknown_30:	А&

unknown_31:АА

unknown_32:	А

unknown_33:	Аd

unknown_34:
identityИҐStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*>
_read_only_resource_inputs 
	
 !"#$*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_2_layer_call_and_return_conditional_losses_123005o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*n
_input_shapes]
[:€€€€€€€€€d: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&$"
 
_user_specified_name123207:&#"
 
_user_specified_name123205:&""
 
_user_specified_name123203:&!"
 
_user_specified_name123201:& "
 
_user_specified_name123199:&"
 
_user_specified_name123197:&"
 
_user_specified_name123195:&"
 
_user_specified_name123193:&"
 
_user_specified_name123191:&"
 
_user_specified_name123189:&"
 
_user_specified_name123187:&"
 
_user_specified_name123185:&"
 
_user_specified_name123183:&"
 
_user_specified_name123181:&"
 
_user_specified_name123179:&"
 
_user_specified_name123177:&"
 
_user_specified_name123175:&"
 
_user_specified_name123173:&"
 
_user_specified_name123171:&"
 
_user_specified_name123169:&"
 
_user_specified_name123167:&"
 
_user_specified_name123165:&"
 
_user_specified_name123163:&"
 
_user_specified_name123161:&"
 
_user_specified_name123159:&"
 
_user_specified_name123157:&
"
 
_user_specified_name123155:&	"
 
_user_specified_name123153:&"
 
_user_specified_name123151:&"
 
_user_specified_name123149:&"
 
_user_specified_name123147:&"
 
_user_specified_name123145:&"
 
_user_specified_name123143:&"
 
_user_specified_name123141:&"
 
_user_specified_name123139:&"
 
_user_specified_name123137:P L
'
_output_shapes
:€€€€€€€€€d
!
_user_specified_name	input_3
ы	
ф
A__inference_dense_layer_call_and_return_conditional_losses_122138

inputs1
matmul_readvariableop_resource:	dА2.
biasadd_readvariableop_resource:	А2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА2*
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
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
ае
°3
"__inference__traced_restore_125085
file_prefix0
assignvariableop_dense_kernel:	dА2,
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
assignvariableop_25_conv2d_bias:=
#assignvariableop_26_conv2d_1_kernel:@/
!assignvariableop_27_conv2d_1_bias:@>
#assignvariableop_28_conv2d_2_kernel:@А0
!assignvariableop_29_conv2d_2_bias:	А?
#assignvariableop_30_conv2d_3_kernel:АА0
!assignvariableop_31_conv2d_3_bias:	А?
#assignvariableop_32_conv2d_4_kernel:АА0
!assignvariableop_33_conv2d_4_bias:	А5
"assignvariableop_34_dense_1_kernel:	Аd.
 assignvariableop_35_dense_1_bias:)
assignvariableop_36_iteration_1:	 -
#assignvariableop_37_learning_rate_1: '
assignvariableop_38_iteration:	 +
!assignvariableop_39_learning_rate: D
1assignvariableop_40_rmsprop_velocity_dense_kernel:	dА2>
/assignvariableop_41_rmsprop_velocity_dense_bias:	А2M
>assignvariableop_42_rmsprop_velocity_batch_normalization_gamma:	А2L
=assignvariableop_43_rmsprop_velocity_batch_normalization_beta:	А2V
<assignvariableop_44_rmsprop_velocity_conv2d_transpose_kernel: @H
:assignvariableop_45_rmsprop_velocity_conv2d_transpose_bias: N
@assignvariableop_46_rmsprop_velocity_batch_normalization_1_gamma: M
?assignvariableop_47_rmsprop_velocity_batch_normalization_1_beta: X
>assignvariableop_48_rmsprop_velocity_conv2d_transpose_1_kernel: J
<assignvariableop_49_rmsprop_velocity_conv2d_transpose_1_bias:N
@assignvariableop_50_rmsprop_velocity_batch_normalization_2_gamma:M
?assignvariableop_51_rmsprop_velocity_batch_normalization_2_beta:X
>assignvariableop_52_rmsprop_velocity_conv2d_transpose_2_kernel:J
<assignvariableop_53_rmsprop_velocity_conv2d_transpose_2_bias:N
@assignvariableop_54_rmsprop_velocity_batch_normalization_3_gamma:M
?assignvariableop_55_rmsprop_velocity_batch_normalization_3_beta:L
2assignvariableop_56_rmsprop_velocity_conv2d_kernel:>
0assignvariableop_57_rmsprop_velocity_conv2d_bias:N
4assignvariableop_58_rmsprop_velocity_conv2d_1_kernel:@@
2assignvariableop_59_rmsprop_velocity_conv2d_1_bias:@O
4assignvariableop_60_rmsprop_velocity_conv2d_2_kernel:@АA
2assignvariableop_61_rmsprop_velocity_conv2d_2_bias:	АP
4assignvariableop_62_rmsprop_velocity_conv2d_3_kernel:ААA
2assignvariableop_63_rmsprop_velocity_conv2d_3_bias:	АP
4assignvariableop_64_rmsprop_velocity_conv2d_4_kernel:ААA
2assignvariableop_65_rmsprop_velocity_conv2d_4_bias:	АF
3assignvariableop_66_rmsprop_velocity_dense_1_kernel:	Аd?
1assignvariableop_67_rmsprop_velocity_dense_1_bias:%
assignvariableop_68_total_3: %
assignvariableop_69_count_3: %
assignvariableop_70_total_2: %
assignvariableop_71_count_2: %
assignvariableop_72_total_1: %
assignvariableop_73_count_1: #
assignvariableop_74_total: #
assignvariableop_75_count: 
identity_77ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_8ҐAssignVariableOp_9≥
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:M*
dtype0*ў
valueѕBћMB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEBElayer_with_weights-1/optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEBHlayer_with_weights-1/optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-1/optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-1/optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-1/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHН
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:M*
dtype0*ѓ
value•BҐMB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ґ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0* 
_output_shapesЈ
і:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*[
dtypesQ
O2M		[
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
:Љ
AssignVariableOp_26AssignVariableOp#assignvariableop_26_conv2d_1_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_27AssignVariableOp!assignvariableop_27_conv2d_1_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_2_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_2_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_3_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_3_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_32AssignVariableOp#assignvariableop_32_conv2d_4_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_33AssignVariableOp!assignvariableop_33_conv2d_4_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_34AssignVariableOp"assignvariableop_34_dense_1_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_35AssignVariableOp assignvariableop_35_dense_1_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:Є
AssignVariableOp_36AssignVariableOpassignvariableop_36_iteration_1Identity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Љ
AssignVariableOp_37AssignVariableOp#assignvariableop_37_learning_rate_1Identity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:ґ
AssignVariableOp_38AssignVariableOpassignvariableop_38_iterationIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_39AssignVariableOp!assignvariableop_39_learning_rateIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_40AssignVariableOp1assignvariableop_40_rmsprop_velocity_dense_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_41AssignVariableOp/assignvariableop_41_rmsprop_velocity_dense_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_42AssignVariableOp>assignvariableop_42_rmsprop_velocity_batch_normalization_gammaIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_43AssignVariableOp=assignvariableop_43_rmsprop_velocity_batch_normalization_betaIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_44AssignVariableOp<assignvariableop_44_rmsprop_velocity_conv2d_transpose_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:”
AssignVariableOp_45AssignVariableOp:assignvariableop_45_rmsprop_velocity_conv2d_transpose_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_46AssignVariableOp@assignvariableop_46_rmsprop_velocity_batch_normalization_1_gammaIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_47AssignVariableOp?assignvariableop_47_rmsprop_velocity_batch_normalization_1_betaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_48AssignVariableOp>assignvariableop_48_rmsprop_velocity_conv2d_transpose_1_kernelIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_49AssignVariableOp<assignvariableop_49_rmsprop_velocity_conv2d_transpose_1_biasIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_50AssignVariableOp@assignvariableop_50_rmsprop_velocity_batch_normalization_2_gammaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_51AssignVariableOp?assignvariableop_51_rmsprop_velocity_batch_normalization_2_betaIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:„
AssignVariableOp_52AssignVariableOp>assignvariableop_52_rmsprop_velocity_conv2d_transpose_2_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_53AssignVariableOp<assignvariableop_53_rmsprop_velocity_conv2d_transpose_2_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:ў
AssignVariableOp_54AssignVariableOp@assignvariableop_54_rmsprop_velocity_batch_normalization_3_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_55AssignVariableOp?assignvariableop_55_rmsprop_velocity_batch_normalization_3_betaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_56AssignVariableOp2assignvariableop_56_rmsprop_velocity_conv2d_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_57AssignVariableOp0assignvariableop_57_rmsprop_velocity_conv2d_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_58AssignVariableOp4assignvariableop_58_rmsprop_velocity_conv2d_1_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_59AssignVariableOp2assignvariableop_59_rmsprop_velocity_conv2d_1_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_60AssignVariableOp4assignvariableop_60_rmsprop_velocity_conv2d_2_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_61AssignVariableOp2assignvariableop_61_rmsprop_velocity_conv2d_2_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_62AssignVariableOp4assignvariableop_62_rmsprop_velocity_conv2d_3_kernelIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_63AssignVariableOp2assignvariableop_63_rmsprop_velocity_conv2d_3_biasIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_64AssignVariableOp4assignvariableop_64_rmsprop_velocity_conv2d_4_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_65AssignVariableOp2assignvariableop_65_rmsprop_velocity_conv2d_4_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_66AssignVariableOp3assignvariableop_66_rmsprop_velocity_dense_1_kernelIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_67AssignVariableOp1assignvariableop_67_rmsprop_velocity_dense_1_biasIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_68AssignVariableOpassignvariableop_68_total_3Identity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_69AssignVariableOpassignvariableop_69_count_3Identity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_70AssignVariableOpassignvariableop_70_total_2Identity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_71AssignVariableOpassignvariableop_71_count_2Identity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_72AssignVariableOpassignvariableop_72_total_1Identity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_73AssignVariableOpassignvariableop_73_count_1Identity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_74AssignVariableOpassignvariableop_74_totalIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_75AssignVariableOpassignvariableop_75_countIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 „
Identity_76Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_77IdentityIdentity_76:output:0^NoOp_1*
T0*
_output_shapes
: †
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_77Identity_77:output:0*(
_construction_contextkEagerRuntime*ѓ
_input_shapesЭ
Ъ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
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
AssignVariableOp_3AssignVariableOp_32*
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
AssignVariableOp_4AssignVariableOp_42*
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
AssignVariableOp_5AssignVariableOp_52*
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
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%L!

_user_specified_namecount:%K!

_user_specified_nametotal:'J#
!
_user_specified_name	count_1:'I#
!
_user_specified_name	total_1:'H#
!
_user_specified_name	count_2:'G#
!
_user_specified_name	total_2:'F#
!
_user_specified_name	count_3:'E#
!
_user_specified_name	total_3:=D9
7
_user_specified_nameRMSprop/velocity/dense_1/bias:?C;
9
_user_specified_name!RMSprop/velocity/dense_1/kernel:>B:
8
_user_specified_name RMSprop/velocity/conv2d_4/bias:@A<
:
_user_specified_name" RMSprop/velocity/conv2d_4/kernel:>@:
8
_user_specified_name RMSprop/velocity/conv2d_3/bias:@?<
:
_user_specified_name" RMSprop/velocity/conv2d_3/kernel:>>:
8
_user_specified_name RMSprop/velocity/conv2d_2/bias:@=<
:
_user_specified_name" RMSprop/velocity/conv2d_2/kernel:><:
8
_user_specified_name RMSprop/velocity/conv2d_1/bias:@;<
:
_user_specified_name" RMSprop/velocity/conv2d_1/kernel:<:8
6
_user_specified_nameRMSprop/velocity/conv2d/bias:>9:
8
_user_specified_name RMSprop/velocity/conv2d/kernel:K8G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_3/beta:L7H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_3/gamma:H6D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_2/bias:J5F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_2/kernel:K4G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_2/beta:L3H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_2/gamma:H2D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose_1/bias:J1F
D
_user_specified_name,*RMSprop/velocity/conv2d_transpose_1/kernel:K0G
E
_user_specified_name-+RMSprop/velocity/batch_normalization_1/beta:L/H
F
_user_specified_name.,RMSprop/velocity/batch_normalization_1/gamma:F.B
@
_user_specified_name(&RMSprop/velocity/conv2d_transpose/bias:H-D
B
_user_specified_name*(RMSprop/velocity/conv2d_transpose/kernel:I,E
C
_user_specified_name+)RMSprop/velocity/batch_normalization/beta:J+F
D
_user_specified_name,*RMSprop/velocity/batch_normalization/gamma:;*7
5
_user_specified_nameRMSprop/velocity/dense/bias:=)9
7
_user_specified_nameRMSprop/velocity/dense/kernel:-()
'
_user_specified_namelearning_rate:)'%
#
_user_specified_name	iteration:/&+
)
_user_specified_namelearning_rate_1:+%'
%
_user_specified_nameiteration_1:,$(
&
_user_specified_namedense_1/bias:.#*
(
_user_specified_namedense_1/kernel:-")
'
_user_specified_nameconv2d_4/bias:/!+
)
_user_specified_nameconv2d_4/kernel:- )
'
_user_specified_nameconv2d_3/bias:/+
)
_user_specified_nameconv2d_3/kernel:-)
'
_user_specified_nameconv2d_2/bias:/+
)
_user_specified_nameconv2d_2/kernel:-)
'
_user_specified_nameconv2d_1/bias:/+
)
_user_specified_nameconv2d_1/kernel:+'
%
_user_specified_nameconv2d/bias:-)
'
_user_specified_nameconv2d/kernel:EA
?
_user_specified_name'%batch_normalization_3/moving_variance:A=
;
_user_specified_name#!batch_normalization_3/moving_mean::6
4
_user_specified_namebatch_normalization_3/beta:;7
5
_user_specified_namebatch_normalization_3/gamma:73
1
_user_specified_nameconv2d_transpose_2/bias:95
3
_user_specified_nameconv2d_transpose_2/kernel:EA
?
_user_specified_name'%batch_normalization_2/moving_variance:A=
;
_user_specified_name#!batch_normalization_2/moving_mean::6
4
_user_specified_namebatch_normalization_2/beta:;7
5
_user_specified_namebatch_normalization_2/gamma:73
1
_user_specified_nameconv2d_transpose_1/bias:95
3
_user_specified_nameconv2d_transpose_1/kernel:EA
?
_user_specified_name'%batch_normalization_1/moving_variance:A=
;
_user_specified_name#!batch_normalization_1/moving_mean::
6
4
_user_specified_namebatch_normalization_1/beta:;	7
5
_user_specified_namebatch_normalization_1/gamma:51
/
_user_specified_nameconv2d_transpose/bias:73
1
_user_specified_nameconv2d_transpose/kernel:C?
=
_user_specified_name%#batch_normalization/moving_variance:?;
9
_user_specified_name!batch_normalization/moving_mean:84
2
_user_specified_namebatch_normalization/beta:95
3
_user_specified_namebatch_normalization/gamma:*&
$
_user_specified_name
dense/bias:,(
&
_user_specified_namedense/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
≥
э
D__inference_conv2d_1_layer_call_and_return_conditional_losses_124171

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
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
:€€€€€€€€€((: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs
Ц
Ю
)__inference_conv2d_1_layer_call_fn_124160

inputs!
unknown:@
	unknown_0:@
identityИҐStatefulPartitionedCallб
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
GPU 2J 8В *M
fHRF
D__inference_conv2d_1_layer_call_and_return_conditional_losses_122524w
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
:€€€€€€€€€((: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124156:&"
 
_user_specified_name124154:W S
/
_output_shapes
:€€€€€€€€€((
 
_user_specified_nameinputs
і
d
H__inference_activation_3_layer_call_and_return_conditional_losses_124131

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
п
Ц
(__inference_dense_1_layer_call_fn_124359

inputs
unknown:	Аd
	unknown_0:
identityИҐStatefulPartitionedCallЎ
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
GPU 2J 8В *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_122647o
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124355:&"
 
_user_specified_name124353:P L
(
_output_shapes
:€€€€€€€€€Аd
 
_user_specified_nameinputs
«
_
C__inference_flatten_layer_call_and_return_conditional_losses_124350

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
с
c
*__inference_dropout_3_layer_call_fn_124270

inputs
identityИҐStatefulPartitionedCall…
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
GPU 2J 8В *N
fIRG
E__inference_dropout_3_layer_call_and_return_conditional_losses_122599x
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
ѕ

b
C__inference_dropout_layer_call_and_return_conditional_losses_122185

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
ш
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_122666

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
Э
ы
B__inference_conv2d_layer_call_and_return_conditional_losses_122259

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
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
у
®
3__inference_conv2d_transpose_2_layer_call_fn_124026

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallэ
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
GPU 2J 8В *W
fRRP
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_122055Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name124022:&"
 
_user_specified_name124020:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Я
e
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_123772

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
Ў

d
E__inference_dropout_3_layer_call_and_return_conditional_losses_122599

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
ы	
ф
A__inference_dense_layer_call_and_return_conditional_losses_123619

inputs1
matmul_readvariableop_resource:	dА2.
biasadd_readvariableop_resource:	А2
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	dА2*
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
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€d
 
_user_specified_nameinputs
у
®
3__inference_conv2d_transpose_1_layer_call_fn_123912

inputs!
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCallэ
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
GPU 2J 8В *W
fRRP
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_121951Й
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
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name123908:&"
 
_user_specified_name123906:i e
A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs" L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*™
serving_defaultЦ
;
input_30
serving_default_input_3:0€€€€€€€€€d;
model_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Х»
Њ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Г
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer_with_weights-2
layer-7
layer_with_weights-3
layer-8
layer-9
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses"
_tf_keras_network
»
%layer-0
&layer_with_weights-0
&layer-1
'layer-2
(layer_with_weights-1
(layer-3
)layer-4
*layer_with_weights-2
*layer-5
+layer-6
,layer_with_weights-3
,layer-7
-layer-8
.layer-9
/layer_with_weights-4
/layer-10
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
6	optimizer"
_tf_keras_network
ґ
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13
E14
F15
G16
H17
I18
J19
K20
L21
M22
N23
O24
P25
Q26
R27
S28
T29
U30
V31
W32
X33
Y34
Z35"
trackable_list_wrapper
¶
70
81
92
:3
=4
>5
?6
@7
C8
D9
E10
F11
I12
J13
K14
L15
O16
P17"
trackable_list_wrapper
 "
trackable_list_wrapper
 
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
√
`trace_0
atrace_12М
(__inference_model_2_layer_call_fn_123211
(__inference_model_2_layer_call_fn_123288µ
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
 z`trace_0zatrace_1
щ
btrace_0
ctrace_12¬
C__inference_model_2_layer_call_and_return_conditional_losses_123005
C__inference_model_2_layer_call_and_return_conditional_losses_123134µ
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
 zbtrace_0zctrace_1
ћB…
!__inference__wrapped_model_121700input_3"Ш
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
d
_variables
e_iterations
f_learning_rate
g_index_dict
h_velocities
i
_momentums
j_average_gradients
k_update_step_xla"
experimentalOptimizer
,
lserving_default"
signature_map
"
_tf_keras_input_layer
ї
m	variables
ntrainable_variables
oregularization_losses
p	keras_api
q__call__
*r&call_and_return_all_conditional_losses

7kernel
8bias"
_tf_keras_layer
к
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w__call__
*x&call_and_return_all_conditional_losses
yaxis
	9gamma
:beta
;moving_mean
<moving_variance"
_tf_keras_layer
•
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
М_random_generator"
_tf_keras_layer
Ђ
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
д
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses

=kernel
>bias
!Щ_jit_compiled_convolution_op"
_tf_keras_layer
с
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
	†axis
	?gamma
@beta
Amoving_mean
Bmoving_variance"
_tf_keras_layer
Ђ
°	variables
Ґtrainable_variables
£regularization_losses
§	keras_api
•__call__
+¶&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
І	variables
®trainable_variables
©regularization_losses
™	keras_api
Ђ__call__
+ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
д
≠	variables
Ѓtrainable_variables
ѓregularization_losses
∞	keras_api
±__call__
+≤&call_and_return_all_conditional_losses

Ckernel
Dbias
!≥_jit_compiled_convolution_op"
_tf_keras_layer
с
і	variables
µtrainable_variables
ґregularization_losses
Ј	keras_api
Є__call__
+є&call_and_return_all_conditional_losses
	Їaxis
	Egamma
Fbeta
Gmoving_mean
Hmoving_variance"
_tf_keras_layer
Ђ
ї	variables
Љtrainable_variables
љregularization_losses
Њ	keras_api
њ__call__
+ј&call_and_return_all_conditional_losses"
_tf_keras_layer
д
Ѕ	variables
¬trainable_variables
√regularization_losses
ƒ	keras_api
≈__call__
+∆&call_and_return_all_conditional_losses

Ikernel
Jbias
!«_jit_compiled_convolution_op"
_tf_keras_layer
с
»	variables
…trainable_variables
 regularization_losses
Ћ	keras_api
ћ__call__
+Ќ&call_and_return_all_conditional_losses
	ќaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance"
_tf_keras_layer
Ђ
ѕ	variables
–trainable_variables
—regularization_losses
“	keras_api
”__call__
+‘&call_and_return_all_conditional_losses"
_tf_keras_layer
д
’	variables
÷trainable_variables
„regularization_losses
Ў	keras_api
ў__call__
+Џ&call_and_return_all_conditional_losses

Okernel
Pbias
!џ_jit_compiled_convolution_op"
_tf_keras_layer
ж
70
81
92
:3
;4
<5
=6
>7
?8
@9
A10
B11
C12
D13
E14
F15
G16
H17
I18
J19
K20
L21
M22
N23
O24
P25"
trackable_list_wrapper
¶
70
81
92
:3
=4
>5
?6
@7
C8
D9
E10
F11
I12
J13
K14
L15
O16
P17"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
√
бtrace_0
вtrace_12И
&__inference_model_layer_call_fn_122401
&__inference_model_layer_call_fn_122458µ
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
 zбtrace_0zвtrace_1
щ
гtrace_0
дtrace_12Њ
A__inference_model_layer_call_and_return_conditional_losses_122266
A__inference_model_layer_call_and_return_conditional_losses_122344µ
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
 zгtrace_0zдtrace_1
"
_tf_keras_input_layer
д
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses

Qkernel
Rbias
!л_jit_compiled_convolution_op"
_tf_keras_layer
√
м	variables
нtrainable_variables
оregularization_losses
п	keras_api
р__call__
+с&call_and_return_all_conditional_losses
т_random_generator"
_tf_keras_layer
д
у	variables
фtrainable_variables
хregularization_losses
ц	keras_api
ч__call__
+ш&call_and_return_all_conditional_losses

Skernel
Tbias
!щ_jit_compiled_convolution_op"
_tf_keras_layer
√
ъ	variables
ыtrainable_variables
ьregularization_losses
э	keras_api
ю__call__
+€&call_and_return_all_conditional_losses
А_random_generator"
_tf_keras_layer
д
Б	variables
Вtrainable_variables
Гregularization_losses
Д	keras_api
Е__call__
+Ж&call_and_return_all_conditional_losses

Ukernel
Vbias
!З_jit_compiled_convolution_op"
_tf_keras_layer
√
И	variables
Йtrainable_variables
Кregularization_losses
Л	keras_api
М__call__
+Н&call_and_return_all_conditional_losses
О_random_generator"
_tf_keras_layer
д
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses

Wkernel
Xbias
!Х_jit_compiled_convolution_op"
_tf_keras_layer
√
Ц	variables
Чtrainable_variables
Шregularization_losses
Щ	keras_api
Ъ__call__
+Ы&call_and_return_all_conditional_losses
Ь_random_generator"
_tf_keras_layer
Ђ
Э	variables
Юtrainable_variables
Яregularization_losses
†	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ѕ
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І__call__
+®&call_and_return_all_conditional_losses

Ykernel
Zbias"
_tf_keras_layer
f
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
©non_trainable_variables
™layers
Ђmetrics
 ђlayer_regularization_losses
≠layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
”
Ѓtrace_0
ѓtrace_1
∞trace_2
±trace_32а
(__inference_model_1_layer_call_fn_122733
(__inference_model_1_layer_call_fn_122758
(__inference_model_1_layer_call_fn_123445
(__inference_model_1_layer_call_fn_123470µ
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
 zЃtrace_0zѓtrace_1z∞trace_2z±trace_3
њ
≤trace_0
≥trace_1
іtrace_2
µtrace_32ћ
C__inference_model_1_layer_call_and_return_conditional_losses_122654
C__inference_model_1_layer_call_and_return_conditional_losses_122708
C__inference_model_1_layer_call_and_return_conditional_losses_123549
C__inference_model_1_layer_call_and_return_conditional_losses_123600µ
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
 z≤trace_0z≥trace_1zіtrace_2zµtrace_3
Љ
ґ
_variables
Ј_iterations
Є_learning_rate
є_index_dict
Ї_velocities
ї
_momentums
Љ_average_gradients
љ_update_step_xla"
experimentalOptimizer
:	dА22dense/kernel
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
):'@2conv2d_1/kernel
:@2conv2d_1/bias
*:(@А2conv2d_2/kernel
:А2conv2d_2/bias
+:)АА2conv2d_3/kernel
:А2conv2d_3/bias
+:)АА2conv2d_4/kernel
:А2conv2d_4/bias
!:	Аd2dense_1/kernel
:2dense_1/bias
¶
;0
<1
A2
B3
G4
H5
M6
N7
Q8
R9
S10
T11
U12
V13
W14
X15
Y16
Z17"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
0
Њ0
њ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
(__inference_model_2_layer_call_fn_123211input_3"µ
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
рBн
(__inference_model_2_layer_call_fn_123288input_3"µ
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
ЛBИ
C__inference_model_2_layer_call_and_return_conditional_losses_123005input_3"µ
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
ЛBИ
C__inference_model_2_layer_call_and_return_conditional_losses_123134input_3"µ
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
e0
ј1
Ѕ2
¬3
√4
ƒ5
≈6
∆7
«8
»9
…10
 11
Ћ12
ћ13
Ќ14
ќ15
ѕ16
–17
—18"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Є
ј0
Ѕ1
¬2
√3
ƒ4
≈5
∆6
«7
»8
…9
 10
Ћ11
ћ12
Ќ13
ќ14
ѕ15
–16
—17"
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
ЋB»
$__inference_signature_wrapper_123418input_3"Ф
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
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
“non_trainable_variables
”layers
‘metrics
 ’layer_regularization_losses
÷layer_metrics
m	variables
ntrainable_variables
oregularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
в
„trace_02√
&__inference_dense_layer_call_fn_123609Ш
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
 z„trace_0
э
Ўtrace_02ё
A__inference_dense_layer_call_and_return_conditional_losses_123619Ш
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
 zЎtrace_0
<
90
:1
;2
<3"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ўnon_trainable_variables
Џlayers
џmetrics
 №layer_regularization_losses
Ёlayer_metrics
s	variables
ttrainable_variables
uregularization_losses
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
я
ёtrace_0
яtrace_12§
4__inference_batch_normalization_layer_call_fn_123632
4__inference_batch_normalization_layer_call_fn_123645µ
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
 zёtrace_0zяtrace_1
Х
аtrace_0
бtrace_12Џ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123679
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123699µ
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
 zаtrace_0zбtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
вnon_trainable_variables
гlayers
дmetrics
 еlayer_regularization_losses
жlayer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
з
зtrace_02»
+__inference_activation_layer_call_fn_123704Ш
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
 zзtrace_0
В
иtrace_02г
F__inference_activation_layer_call_and_return_conditional_losses_123709Ш
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
 zиtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
д
оtrace_02≈
(__inference_reshape_layer_call_fn_123714Ш
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
 zоtrace_0
€
пtrace_02а
C__inference_reshape_layer_call_and_return_conditional_losses_123728Ш
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
 zпtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
ї
хtrace_0
цtrace_12А
(__inference_dropout_layer_call_fn_123733
(__inference_dropout_layer_call_fn_123738©
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
 zхtrace_0zцtrace_1
с
чtrace_0
шtrace_12ґ
C__inference_dropout_layer_call_and_return_conditional_losses_123750
C__inference_dropout_layer_call_and_return_conditional_losses_123755©
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
 zчtrace_0zшtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
щnon_trainable_variables
ъlayers
ыmetrics
 ьlayer_regularization_losses
эlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
к
юtrace_02Ћ
.__inference_up_sampling2d_layer_call_fn_123760Ш
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
Е
€trace_02ж
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_123772Ш
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
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
н
Еtrace_02ќ
1__inference_conv2d_transpose_layer_call_fn_123781Ш
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
 zЕtrace_0
И
Жtrace_02й
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_123814Ш
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
 zЖtrace_0
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
?0
@1
A2
B3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
г
Мtrace_0
Нtrace_12®
6__inference_batch_normalization_1_layer_call_fn_123827
6__inference_batch_normalization_1_layer_call_fn_123840µ
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
 zМtrace_0zНtrace_1
Щ
Оtrace_0
Пtrace_12ё
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123858
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123876µ
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
 zОtrace_0zПtrace_1
 "
trackable_list_wrapper
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
°	variables
Ґtrainable_variables
£regularization_losses
•__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
й
Хtrace_02 
-__inference_activation_1_layer_call_fn_123881Ш
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
Д
Цtrace_02е
H__inference_activation_1_layer_call_and_return_conditional_losses_123886Ш
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
І	variables
®trainable_variables
©regularization_losses
Ђ__call__
+ђ&call_and_return_all_conditional_losses
'ђ"call_and_return_conditional_losses"
_generic_user_object
м
Ьtrace_02Ќ
0__inference_up_sampling2d_1_layer_call_fn_123891Ш
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
 zЬtrace_0
З
Эtrace_02и
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_123903Ш
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
 zЭtrace_0
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
Юnon_trainable_variables
Яlayers
†metrics
 °layer_regularization_losses
Ґlayer_metrics
≠	variables
Ѓtrainable_variables
ѓregularization_losses
±__call__
+≤&call_and_return_all_conditional_losses
'≤"call_and_return_conditional_losses"
_generic_user_object
п
£trace_02–
3__inference_conv2d_transpose_1_layer_call_fn_123912Ш
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
 z£trace_0
К
§trace_02л
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_123945Ш
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
 z§trace_0
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
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
і	variables
µtrainable_variables
ґregularization_losses
Є__call__
+є&call_and_return_all_conditional_losses
'є"call_and_return_conditional_losses"
_generic_user_object
г
™trace_0
Ђtrace_12®
6__inference_batch_normalization_2_layer_call_fn_123958
6__inference_batch_normalization_2_layer_call_fn_123971µ
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
 z™trace_0zЂtrace_1
Щ
ђtrace_0
≠trace_12ё
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_123989
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_124007µ
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
 zђtrace_0z≠trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ѓnon_trainable_variables
ѓlayers
∞metrics
 ±layer_regularization_losses
≤layer_metrics
ї	variables
Љtrainable_variables
љregularization_losses
њ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
й
≥trace_02 
-__inference_activation_2_layer_call_fn_124012Ш
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
 z≥trace_0
Д
іtrace_02е
H__inference_activation_2_layer_call_and_return_conditional_losses_124017Ш
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
 zіtrace_0
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
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
Ѕ	variables
¬trainable_variables
√regularization_losses
≈__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses"
_generic_user_object
п
Їtrace_02–
3__inference_conv2d_transpose_2_layer_call_fn_124026Ш
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
 zЇtrace_0
К
їtrace_02л
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_124059Ш
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
 zїtrace_0
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
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
»	variables
…trainable_variables
 regularization_losses
ћ__call__
+Ќ&call_and_return_all_conditional_losses
'Ќ"call_and_return_conditional_losses"
_generic_user_object
г
Ѕtrace_0
¬trace_12®
6__inference_batch_normalization_3_layer_call_fn_124072
6__inference_batch_normalization_3_layer_call_fn_124085µ
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
 zЅtrace_0z¬trace_1
Щ
√trace_0
ƒtrace_12ё
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124103
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124121µ
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
 z√trace_0zƒtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
≈non_trainable_variables
∆layers
«metrics
 »layer_regularization_losses
…layer_metrics
ѕ	variables
–trainable_variables
—regularization_losses
”__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses"
_generic_user_object
й
 trace_02 
-__inference_activation_3_layer_call_fn_124126Ш
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
Д
Ћtrace_02е
H__inference_activation_3_layer_call_and_return_conditional_losses_124131Ш
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
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
’	variables
÷trainable_variables
„regularization_losses
ў__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
г
—trace_02ƒ
'__inference_conv2d_layer_call_fn_124140Ш
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
 z—trace_0
ю
“trace_02я
B__inference_conv2d_layer_call_and_return_conditional_losses_124151Ш
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
 z“trace_0
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
;0
<1
A2
B3
G4
H5
M6
N7"
trackable_list_wrapper
¶
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
оBл
&__inference_model_layer_call_fn_122401input_1"µ
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
оBл
&__inference_model_layer_call_fn_122458input_1"µ
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
ЙBЖ
A__inference_model_layer_call_and_return_conditional_losses_122266input_1"µ
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
ЙBЖ
A__inference_model_layer_call_and_return_conditional_losses_122344input_1"µ
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
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
”non_trainable_variables
‘layers
’metrics
 ÷layer_regularization_losses
„layer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
е
Ўtrace_02∆
)__inference_conv2d_1_layer_call_fn_124160Ш
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
 zЎtrace_0
А
ўtrace_02б
D__inference_conv2d_1_layer_call_and_return_conditional_losses_124171Ш
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
 zўtrace_0
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
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
м	variables
нtrainable_variables
оregularization_losses
р__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
њ
яtrace_0
аtrace_12Д
*__inference_dropout_1_layer_call_fn_124176
*__inference_dropout_1_layer_call_fn_124181©
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
 zяtrace_0zаtrace_1
х
бtrace_0
вtrace_12Ї
E__inference_dropout_1_layer_call_and_return_conditional_losses_124193
E__inference_dropout_1_layer_call_and_return_conditional_losses_124198©
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
 zбtrace_0zвtrace_1
"
_generic_user_object
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
у	variables
фtrainable_variables
хregularization_losses
ч__call__
+ш&call_and_return_all_conditional_losses
'ш"call_and_return_conditional_losses"
_generic_user_object
е
иtrace_02∆
)__inference_conv2d_2_layer_call_fn_124207Ш
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
 zиtrace_0
А
йtrace_02б
D__inference_conv2d_2_layer_call_and_return_conditional_losses_124218Ш
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
 zйtrace_0
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
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
ъ	variables
ыtrainable_variables
ьregularization_losses
ю__call__
+€&call_and_return_all_conditional_losses
'€"call_and_return_conditional_losses"
_generic_user_object
њ
пtrace_0
рtrace_12Д
*__inference_dropout_2_layer_call_fn_124223
*__inference_dropout_2_layer_call_fn_124228©
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
 zпtrace_0zрtrace_1
х
сtrace_0
тtrace_12Ї
E__inference_dropout_2_layer_call_and_return_conditional_losses_124240
E__inference_dropout_2_layer_call_and_return_conditional_losses_124245©
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
 zсtrace_0zтtrace_1
"
_generic_user_object
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
Б	variables
Вtrainable_variables
Гregularization_losses
Е__call__
+Ж&call_and_return_all_conditional_losses
'Ж"call_and_return_conditional_losses"
_generic_user_object
е
шtrace_02∆
)__inference_conv2d_3_layer_call_fn_124254Ш
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
А
щtrace_02б
D__inference_conv2d_3_layer_call_and_return_conditional_losses_124265Ш
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
 "
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
И	variables
Йtrainable_variables
Кregularization_losses
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
њ
€trace_0
Аtrace_12Д
*__inference_dropout_3_layer_call_fn_124270
*__inference_dropout_3_layer_call_fn_124275©
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
 z€trace_0zАtrace_1
х
Бtrace_0
Вtrace_12Ї
E__inference_dropout_3_layer_call_and_return_conditional_losses_124287
E__inference_dropout_3_layer_call_and_return_conditional_losses_124292©
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
 zБtrace_0zВtrace_1
"
_generic_user_object
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Гnon_trainable_variables
Дlayers
Еmetrics
 Жlayer_regularization_losses
Зlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
е
Иtrace_02∆
)__inference_conv2d_4_layer_call_fn_124301Ш
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
 zИtrace_0
А
Йtrace_02б
D__inference_conv2d_4_layer_call_and_return_conditional_losses_124312Ш
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
 zЙtrace_0
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
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
Ц	variables
Чtrainable_variables
Шregularization_losses
Ъ__call__
+Ы&call_and_return_all_conditional_losses
'Ы"call_and_return_conditional_losses"
_generic_user_object
њ
Пtrace_0
Рtrace_12Д
*__inference_dropout_4_layer_call_fn_124317
*__inference_dropout_4_layer_call_fn_124322©
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
 zПtrace_0zРtrace_1
х
Сtrace_0
Тtrace_12Ї
E__inference_dropout_4_layer_call_and_return_conditional_losses_124334
E__inference_dropout_4_layer_call_and_return_conditional_losses_124339©
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
 zСtrace_0zТtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
д
Шtrace_02≈
(__inference_flatten_layer_call_fn_124344Ш
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
 zШtrace_0
€
Щtrace_02а
C__inference_flatten_layer_call_and_return_conditional_losses_124350Ш
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
 zЩtrace_0
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ъnon_trainable_variables
Ыlayers
Ьmetrics
 Эlayer_regularization_losses
Юlayer_metrics
£	variables
§trainable_variables
•regularization_losses
І__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
д
Яtrace_02≈
(__inference_dense_1_layer_call_fn_124359Ш
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
 zЯtrace_0
€
†trace_02а
C__inference_dense_1_layer_call_and_return_conditional_losses_124370Ш
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
 z†trace_0
f
Q0
R1
S2
T3
U4
V5
W6
X7
Y8
Z9"
trackable_list_wrapper
n
%0
&1
'2
(3
)4
*5
+6
,7
-8
.9
/10"
trackable_list_wrapper
0
°0
Ґ1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
рBн
(__inference_model_1_layer_call_fn_122733input_2"µ
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
рBн
(__inference_model_1_layer_call_fn_122758input_2"µ
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
пBм
(__inference_model_1_layer_call_fn_123445inputs"µ
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
пBм
(__inference_model_1_layer_call_fn_123470inputs"µ
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
ЛBИ
C__inference_model_1_layer_call_and_return_conditional_losses_122654input_2"µ
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
ЛBИ
C__inference_model_1_layer_call_and_return_conditional_losses_122708input_2"µ
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
КBЗ
C__inference_model_1_layer_call_and_return_conditional_losses_123549inputs"µ
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
КBЗ
C__inference_model_1_layer_call_and_return_conditional_losses_123600inputs"µ
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
y
Ј0
£1
§2
•3
¶4
І5
®6
©7
™8
Ђ9
ђ10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
p
£0
§1
•2
¶3
І4
®5
©6
™7
Ђ8
ђ9"
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
≠	variables
Ѓ	keras_api

ѓtotal

∞count"
_tf_keras_metric
c
±	variables
≤	keras_api

≥total

іcount
µ
_fn_kwargs"
_tf_keras_metric
.:,	dА22RMSprop/velocity/dense/kernel
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
–BЌ
&__inference_dense_layer_call_fn_123609inputs"Ш
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
A__inference_dense_layer_call_and_return_conditional_losses_123619inputs"Ш
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
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ыBш
4__inference_batch_normalization_layer_call_fn_123632inputs"µ
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
ыBш
4__inference_batch_normalization_layer_call_fn_123645inputs"µ
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
ЦBУ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123679inputs"µ
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
ЦBУ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123699inputs"µ
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
’B“
+__inference_activation_layer_call_fn_123704inputs"Ш
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
рBн
F__inference_activation_layer_call_and_return_conditional_losses_123709inputs"Ш
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
“Bѕ
(__inference_reshape_layer_call_fn_123714inputs"Ш
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
C__inference_reshape_layer_call_and_return_conditional_losses_123728inputs"Ш
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
гBа
(__inference_dropout_layer_call_fn_123733inputs"©
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
гBа
(__inference_dropout_layer_call_fn_123738inputs"©
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
юBы
C__inference_dropout_layer_call_and_return_conditional_losses_123750inputs"©
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
юBы
C__inference_dropout_layer_call_and_return_conditional_losses_123755inputs"©
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
ЎB’
.__inference_up_sampling2d_layer_call_fn_123760inputs"Ш
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
уBр
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_123772inputs"Ш
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
џBЎ
1__inference_conv2d_transpose_layer_call_fn_123781inputs"Ш
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
цBу
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_123814inputs"Ш
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
A0
B1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
эBъ
6__inference_batch_normalization_1_layer_call_fn_123827inputs"µ
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
эBъ
6__inference_batch_normalization_1_layer_call_fn_123840inputs"µ
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
ШBХ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123858inputs"µ
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
ШBХ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123876inputs"µ
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
„B‘
-__inference_activation_1_layer_call_fn_123881inputs"Ш
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
H__inference_activation_1_layer_call_and_return_conditional_losses_123886inputs"Ш
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
0__inference_up_sampling2d_1_layer_call_fn_123891inputs"Ш
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
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_123903inputs"Ш
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
ЁBЏ
3__inference_conv2d_transpose_1_layer_call_fn_123912inputs"Ш
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
шBх
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_123945inputs"Ш
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
эBъ
6__inference_batch_normalization_2_layer_call_fn_123958inputs"µ
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
эBъ
6__inference_batch_normalization_2_layer_call_fn_123971inputs"µ
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
ШBХ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_123989inputs"µ
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
ШBХ
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_124007inputs"µ
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
„B‘
-__inference_activation_2_layer_call_fn_124012inputs"Ш
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
H__inference_activation_2_layer_call_and_return_conditional_losses_124017inputs"Ш
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
ЁBЏ
3__inference_conv2d_transpose_2_layer_call_fn_124026inputs"Ш
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
шBх
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_124059inputs"Ш
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
эBъ
6__inference_batch_normalization_3_layer_call_fn_124072inputs"µ
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
эBъ
6__inference_batch_normalization_3_layer_call_fn_124085inputs"µ
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
ШBХ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124103inputs"µ
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
ШBХ
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124121inputs"µ
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
„B‘
-__inference_activation_3_layer_call_fn_124126inputs"Ш
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
H__inference_activation_3_layer_call_and_return_conditional_losses_124131inputs"Ш
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
'__inference_conv2d_layer_call_fn_124140inputs"Ш
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
B__inference_conv2d_layer_call_and_return_conditional_losses_124151inputs"Ш
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
Q0
R1"
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
)__inference_conv2d_1_layer_call_fn_124160inputs"Ш
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
D__inference_conv2d_1_layer_call_and_return_conditional_losses_124171inputs"Ш
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
еBв
*__inference_dropout_1_layer_call_fn_124176inputs"©
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
еBв
*__inference_dropout_1_layer_call_fn_124181inputs"©
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
АBэ
E__inference_dropout_1_layer_call_and_return_conditional_losses_124193inputs"©
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
АBэ
E__inference_dropout_1_layer_call_and_return_conditional_losses_124198inputs"©
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
”B–
)__inference_conv2d_2_layer_call_fn_124207inputs"Ш
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
D__inference_conv2d_2_layer_call_and_return_conditional_losses_124218inputs"Ш
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
еBв
*__inference_dropout_2_layer_call_fn_124223inputs"©
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
еBв
*__inference_dropout_2_layer_call_fn_124228inputs"©
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
АBэ
E__inference_dropout_2_layer_call_and_return_conditional_losses_124240inputs"©
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
АBэ
E__inference_dropout_2_layer_call_and_return_conditional_losses_124245inputs"©
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
U0
V1"
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
)__inference_conv2d_3_layer_call_fn_124254inputs"Ш
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
D__inference_conv2d_3_layer_call_and_return_conditional_losses_124265inputs"Ш
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
еBв
*__inference_dropout_3_layer_call_fn_124270inputs"©
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
еBв
*__inference_dropout_3_layer_call_fn_124275inputs"©
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
АBэ
E__inference_dropout_3_layer_call_and_return_conditional_losses_124287inputs"©
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
АBэ
E__inference_dropout_3_layer_call_and_return_conditional_losses_124292inputs"©
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
W0
X1"
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
)__inference_conv2d_4_layer_call_fn_124301inputs"Ш
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
D__inference_conv2d_4_layer_call_and_return_conditional_losses_124312inputs"Ш
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
еBв
*__inference_dropout_4_layer_call_fn_124317inputs"©
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
еBв
*__inference_dropout_4_layer_call_fn_124322inputs"©
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
АBэ
E__inference_dropout_4_layer_call_and_return_conditional_losses_124334inputs"©
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
АBэ
E__inference_dropout_4_layer_call_and_return_conditional_losses_124339inputs"©
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
“Bѕ
(__inference_flatten_layer_call_fn_124344inputs"Ш
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
C__inference_flatten_layer_call_and_return_conditional_losses_124350inputs"Ш
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
“Bѕ
(__inference_dense_1_layer_call_fn_124359inputs"Ш
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
C__inference_dense_1_layer_call_and_return_conditional_losses_124370inputs"Ш
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
ґ	variables
Ј	keras_api

Єtotal

єcount"
_tf_keras_metric
c
Ї	variables
ї	keras_api

Љtotal

љcount
Њ
_fn_kwargs"
_tf_keras_metric
8:6@2 RMSprop/velocity/conv2d_1/kernel
*:(@2RMSprop/velocity/conv2d_1/bias
9:7@А2 RMSprop/velocity/conv2d_2/kernel
+:)А2RMSprop/velocity/conv2d_2/bias
::8АА2 RMSprop/velocity/conv2d_3/kernel
+:)А2RMSprop/velocity/conv2d_3/bias
::8АА2 RMSprop/velocity/conv2d_4/kernel
+:)А2RMSprop/velocity/conv2d_4/bias
0:.	Аd2RMSprop/velocity/dense_1/kernel
):'2RMSprop/velocity/dense_1/bias
0
ѓ0
∞1"
trackable_list_wrapper
.
≠	variables"
_generic_user_object
:  (2total
:  (2count
0
≥0
і1"
trackable_list_wrapper
.
±	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Є0
є1"
trackable_list_wrapper
.
ґ	variables"
_generic_user_object
:  (2total
:  (2count
0
Љ0
љ1"
trackable_list_wrapper
.
Ї	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper±
!__inference__wrapped_model_121700Л$78<9;:=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ0Ґ-
&Ґ#
!К
input_3€€€€€€€€€d
™ "1™.
,
model_1!К
model_1€€€€€€€€€а
H__inference_activation_1_layer_call_and_return_conditional_losses_123886УIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ Ї
-__inference_activation_1_layer_call_fn_123881ИIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ а
H__inference_activation_2_layer_call_and_return_conditional_losses_124017УIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ї
-__inference_activation_2_layer_call_fn_124012ИIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€а
H__inference_activation_3_layer_call_and_return_conditional_losses_124131УIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ї
-__inference_activation_3_layer_call_fn_124126ИIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€Ђ
F__inference_activation_layer_call_and_return_conditional_losses_123709a0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ Е
+__inference_activation_layer_call_fn_123704V0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ ""К
unknown€€€€€€€€€А2ч
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123858°?@ABQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ч
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_123876°?@ABQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ —
6__inference_batch_normalization_1_layer_call_fn_123827Ц?@ABQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ —
6__inference_batch_normalization_1_layer_call_fn_123840Ц?@ABQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ ч
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_123989°EFGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ч
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_124007°EFGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ —
6__inference_batch_normalization_2_layer_call_fn_123958ЦEFGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€—
6__inference_batch_normalization_2_layer_call_fn_123971ЦEFGHQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ч
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124103°KLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ч
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_124121°KLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ —
6__inference_batch_normalization_3_layer_call_fn_124072ЦKLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€—
6__inference_batch_normalization_3_layer_call_fn_124085ЦKLMNQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€¬
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123679o;<9:8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ ¬
O__inference_batch_normalization_layer_call_and_return_conditional_losses_123699o<9;:8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ Ь
4__inference_batch_normalization_layer_call_fn_123632d;<9:8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p

 
™ ""К
unknown€€€€€€€€€А2Ь
4__inference_batch_normalization_layer_call_fn_123645d<9;:8Ґ5
.Ґ+
!К
inputs€€€€€€€€€А2
p 

 
™ ""К
unknown€€€€€€€€€А2ї
D__inference_conv2d_1_layer_call_and_return_conditional_losses_124171sQR7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€((
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ Х
)__inference_conv2d_1_layer_call_fn_124160hQR7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€((
™ ")К&
unknown€€€€€€€€€@Љ
D__inference_conv2d_2_layer_call_and_return_conditional_losses_124218tST7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "5Ґ2
+К(
tensor_0€€€€€€€€€

А
Ъ Ц
)__inference_conv2d_2_layer_call_fn_124207iST7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "*К'
unknown€€€€€€€€€

Аљ
D__inference_conv2d_3_layer_call_and_return_conditional_losses_124265uUV8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ч
)__inference_conv2d_3_layer_call_fn_124254jUV8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€

А
™ "*К'
unknown€€€€€€€€€Аљ
D__inference_conv2d_4_layer_call_and_return_conditional_losses_124312uWX8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ч
)__inference_conv2d_4_layer_call_fn_124301jWX8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "*К'
unknown€€€€€€€€€Аё
B__inference_conv2d_layer_call_and_return_conditional_losses_124151ЧOPIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Є
'__inference_conv2d_layer_call_fn_124140МOPIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€к
N__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_123945ЧCDIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
3__inference_conv2d_transpose_1_layer_call_fn_123912МCDIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€к
N__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_124059ЧIJIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ƒ
3__inference_conv2d_transpose_2_layer_call_fn_124026МIJIҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€и
L__inference_conv2d_transpose_layer_call_and_return_conditional_losses_123814Ч=>IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ъ ¬
1__inference_conv2d_transpose_layer_call_fn_123781М=>IҐF
?Ґ<
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ Ђ
C__inference_dense_1_layer_call_and_return_conditional_losses_124370dYZ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Аd
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Е
(__inference_dense_1_layer_call_fn_124359YYZ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€Аd
™ "!К
unknown€€€€€€€€€©
A__inference_dense_layer_call_and_return_conditional_losses_123619d78/Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ "-Ґ*
#К 
tensor_0€€€€€€€€€А2
Ъ Г
&__inference_dense_layer_call_fn_123609Y78/Ґ,
%Ґ"
 К
inputs€€€€€€€€€d
™ ""К
unknown€€€€€€€€€А2Љ
E__inference_dropout_1_layer_call_and_return_conditional_losses_124193s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ Љ
E__inference_dropout_1_layer_call_and_return_conditional_losses_124198s;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ "4Ґ1
*К'
tensor_0€€€€€€€€€@
Ъ Ц
*__inference_dropout_1_layer_call_fn_124176h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p
™ ")К&
unknown€€€€€€€€€@Ц
*__inference_dropout_1_layer_call_fn_124181h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€@
p 
™ ")К&
unknown€€€€€€€€€@Њ
E__inference_dropout_2_layer_call_and_return_conditional_losses_124240u<Ґ9
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
Ъ Њ
E__inference_dropout_2_layer_call_and_return_conditional_losses_124245u<Ґ9
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
Ъ Ш
*__inference_dropout_2_layer_call_fn_124223j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€

А
p
™ "*К'
unknown€€€€€€€€€

АШ
*__inference_dropout_2_layer_call_fn_124228j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€

А
p 
™ "*К'
unknown€€€€€€€€€

АЊ
E__inference_dropout_3_layer_call_and_return_conditional_losses_124287u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Њ
E__inference_dropout_3_layer_call_and_return_conditional_losses_124292u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ш
*__inference_dropout_3_layer_call_fn_124270j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "*К'
unknown€€€€€€€€€АШ
*__inference_dropout_3_layer_call_fn_124275j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "*К'
unknown€€€€€€€€€АЊ
E__inference_dropout_4_layer_call_and_return_conditional_losses_124334u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Њ
E__inference_dropout_4_layer_call_and_return_conditional_losses_124339u<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "5Ґ2
+К(
tensor_0€€€€€€€€€А
Ъ Ш
*__inference_dropout_4_layer_call_fn_124317j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "*К'
unknown€€€€€€€€€АШ
*__inference_dropout_4_layer_call_fn_124322j<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "*К'
unknown€€€€€€€€€АЇ
C__inference_dropout_layer_call_and_return_conditional_losses_123750s;Ґ8
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
Ъ Ї
C__inference_dropout_layer_call_and_return_conditional_losses_123755s;Ґ8
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
Ъ Ф
(__inference_dropout_layer_call_fn_123733h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€

@
p
™ ")К&
unknown€€€€€€€€€

@Ф
(__inference_dropout_layer_call_fn_123738h;Ґ8
1Ґ.
(К%
inputs€€€€€€€€€

@
p 
™ ")К&
unknown€€€€€€€€€

@∞
C__inference_flatten_layer_call_and_return_conditional_losses_124350i8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "-Ґ*
#К 
tensor_0€€€€€€€€€Аd
Ъ К
(__inference_flatten_layer_call_fn_124344^8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ""К
unknown€€€€€€€€€Аd√
C__inference_model_1_layer_call_and_return_conditional_losses_122654|
QRSTUVWXYZ@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€((
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ √
C__inference_model_1_layer_call_and_return_conditional_losses_122708|
QRSTUVWXYZ@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€((
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ’
C__inference_model_1_layer_call_and_return_conditional_losses_123549Н
QRSTUVWXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ’
C__inference_model_1_layer_call_and_return_conditional_losses_123600Н
QRSTUVWXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Э
(__inference_model_1_layer_call_fn_122733q
QRSTUVWXYZ@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€((
p

 
™ "!К
unknown€€€€€€€€€Э
(__inference_model_1_layer_call_fn_122758q
QRSTUVWXYZ@Ґ=
6Ґ3
)К&
input_2€€€€€€€€€((
p 

 
™ "!К
unknown€€€€€€€€€ѓ
(__inference_model_1_layer_call_fn_123445В
QRSTUVWXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€ѓ
(__inference_model_1_layer_call_fn_123470В
QRSTUVWXYZQҐN
GҐD
:К7
inputs+€€€€€€€€€€€€€€€€€€€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€÷
C__inference_model_2_layer_call_and_return_conditional_losses_123005О$78;<9:=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ8Ґ5
.Ґ+
!К
input_3€€€€€€€€€d
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ÷
C__inference_model_2_layer_call_and_return_conditional_losses_123134О$78<9;:=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ8Ґ5
.Ґ+
!К
input_3€€€€€€€€€d
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
(__inference_model_2_layer_call_fn_123211Г$78;<9:=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ8Ґ5
.Ґ+
!К
input_3€€€€€€€€€d
p

 
™ "!К
unknown€€€€€€€€€∞
(__inference_model_2_layer_call_fn_123288Г$78<9;:=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ8Ґ5
.Ґ+
!К
input_3€€€€€€€€€d
p 

 
™ "!К
unknown€€€€€€€€€д
A__inference_model_layer_call_and_return_conditional_losses_122266Ю78;<9:=>?@ABCDEFGHIJKLMNOP8Ґ5
.Ґ+
!К
input_1€€€€€€€€€d
p

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ д
A__inference_model_layer_call_and_return_conditional_losses_122344Ю78<9;:=>?@ABCDEFGHIJKLMNOP8Ґ5
.Ґ+
!К
input_1€€€€€€€€€d
p 

 
™ "FҐC
<К9
tensor_0+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Њ
&__inference_model_layer_call_fn_122401У78;<9:=>?@ABCDEFGHIJKLMNOP8Ґ5
.Ґ+
!К
input_1€€€€€€€€€d
p

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€Њ
&__inference_model_layer_call_fn_122458У78<9;:=>?@ABCDEFGHIJKLMNOP8Ґ5
.Ґ+
!К
input_1€€€€€€€€€d
p 

 
™ ";К8
unknown+€€€€€€€€€€€€€€€€€€€€€€€€€€€ѓ
C__inference_reshape_layer_call_and_return_conditional_losses_123728h0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ "4Ґ1
*К'
tensor_0€€€€€€€€€

@
Ъ Й
(__inference_reshape_layer_call_fn_123714]0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А2
™ ")К&
unknown€€€€€€€€€

@њ
$__inference_signature_wrapper_123418Ц$78<9;:=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ;Ґ8
Ґ 
1™.
,
input_3!К
input_3€€€€€€€€€d"1™.
,
model_1!К
model_1€€€€€€€€€х
K__inference_up_sampling2d_1_layer_call_and_return_conditional_losses_123903•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ѕ
0__inference_up_sampling2d_1_layer_call_fn_123891ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€у
I__inference_up_sampling2d_layer_call_and_return_conditional_losses_123772•RҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "OҐL
EКB
tensor_04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ќ
.__inference_up_sampling2d_layer_call_fn_123760ЪRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "DКA
unknown4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€