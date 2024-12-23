��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
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
�
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
�
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
resource�
�
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
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
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
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
dtypetype�
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
�
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
list(type)(0�
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
list(type)(0�
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
output"out_type��out_type"	
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.12v2.13.1-0-gf841394b1b78͍
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
shape:	�d*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�d*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:�*
dtype0
�
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_4/kernel
}
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:��* 
shared_nameconv2d_3/kernel
}
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*(
_output_shapes
:��*
dtype0
s
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_2/bias
l
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes	
:�*
dtype0
�
conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�* 
shared_nameconv2d_2/kernel
|
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*'
_output_shapes
:@�*
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
�
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
shape:�*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:�*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
��*
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
�
%batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_3/moving_variance
�
9batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_3/moving_mean
�
5batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_3/beta
�
.batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_3/beta*
_output_shapes
:*
dtype0
�
batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_3/gamma
�
/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_3/gamma*
_output_shapes
:*
dtype0
�
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
�
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_2/kernel
�
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
:*
dtype0
�
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance
�
9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean
�
5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta
�
.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes
:*
dtype0
�
batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma
�
/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes
:*
dtype0
�
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
�
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv2d_transpose_1/kernel
�
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*&
_output_shapes
: *
dtype0
�
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance
�
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
�
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean
�
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta
�
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0
�
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma
�
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
�
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
�
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameconv2d_transpose/kernel
�
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*&
_output_shapes
: @*
dtype0
�
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�2*4
shared_name%#batch_normalization/moving_variance
�
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:�2*
dtype0
�
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�2*0
shared_name!batch_normalization/moving_mean
�
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:�2*
dtype0
�
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�2*)
shared_namebatch_normalization/beta
�
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:�2*
dtype0
�
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�2**
shared_namebatch_normalization/gamma
�
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:�2*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�2*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�2*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��2*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
��2*
dtype0
p
serve_input_4Placeholder*'
_output_shapes
:���������d*
dtype0*
shape:���������d
r
serve_input_5Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�

StatefulPartitionedCallStatefulPartitionedCallserve_input_4serve_input_5dense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/bias*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_signature_wrapper___call___73966
z
serving_default_input_4Placeholder*'
_output_shapes
:���������d*
dtype0*
shape:���������d
|
serving_default_input_5Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�

StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_4serving_default_input_5dense/kernel
dense/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/betaconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/bias*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_signature_wrapper___call___74048

NoOpNoOp
�$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�#
value�#B�# B�#
�
_endpoint_names
_endpoint_signatures
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve
	
signatures*
* 

	
serve* 
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27
'28
(29
)30
*31
+32
,33
-34
.35
/36
037*
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
#16
$17*
�
0
1
2
3
4
5
!6
"7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019*
�
0
-1
2
3
4
5
$6
7
#8
(9
*10
11
,12
013
14
15
&16
.17
18
19
20
21
+22
23
%24
)25
26
 27
'28
/29
30
"31
32
!33
34
35
36
37*
* 

1trace_0* 
"
	2serve
3serving_default* 
	
40* 
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
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/biasConst*3
Tin,
*2(*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_74302
�	
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/biasbatch_normalization_3/gammabatch_normalization_3/beta!batch_normalization_3/moving_mean%batch_normalization_3/moving_varianceconv2d/kernelconv2d/biasdense_1/kerneldense_1/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasdense_2/kerneldense_2/bias*2
Tin+
)2'*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_74425��
��
�)
__inference___call___73883
input_4
input_5F
2model_2_model_dense_matmul_readvariableop_resource:
��2B
3model_2_model_dense_biasadd_readvariableop_resource:	�2R
Cmodel_2_model_batch_normalization_batchnorm_readvariableop_resource:	�2V
Gmodel_2_model_batch_normalization_batchnorm_mul_readvariableop_resource:	�2T
Emodel_2_model_batch_normalization_batchnorm_readvariableop_1_resource:	�2T
Emodel_2_model_batch_normalization_batchnorm_readvariableop_2_resource:	�2a
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
��F
7model_2_model_1_dense_1_biasadd_readvariableop_resource:	�Q
7model_2_model_1_conv2d_1_conv2d_readvariableop_resource:@F
8model_2_model_1_conv2d_1_biasadd_readvariableop_resource:@R
7model_2_model_1_conv2d_2_conv2d_readvariableop_resource:@�G
8model_2_model_1_conv2d_2_biasadd_readvariableop_resource:	�S
7model_2_model_1_conv2d_3_conv2d_readvariableop_resource:��G
8model_2_model_1_conv2d_3_biasadd_readvariableop_resource:	�S
7model_2_model_1_conv2d_4_conv2d_readvariableop_resource:��G
8model_2_model_1_conv2d_4_biasadd_readvariableop_resource:	�I
6model_2_model_1_dense_2_matmul_readvariableop_resource:	�dE
7model_2_model_1_dense_2_biasadd_readvariableop_resource:
identity��:model_2/model/batch_normalization/batchnorm/ReadVariableOp�<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1�<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2�>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOp�Cmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�2model_2/model/batch_normalization_1/ReadVariableOp�4model_2/model/batch_normalization_1/ReadVariableOp_1�Cmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�2model_2/model/batch_normalization_2/ReadVariableOp�4model_2/model/batch_normalization_2/ReadVariableOp_1�Cmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp�Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1�2model_2/model/batch_normalization_3/ReadVariableOp�4model_2/model/batch_normalization_3/ReadVariableOp_1�+model_2/model/conv2d/BiasAdd/ReadVariableOp�*model_2/model/conv2d/Conv2D/ReadVariableOp�5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp�>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp�7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp�@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp�7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp�@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp�*model_2/model/dense/BiasAdd/ReadVariableOp�)model_2/model/dense/MatMul/ReadVariableOp�/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp�.model_2/model_1/conv2d_1/Conv2D/ReadVariableOp�/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp�.model_2/model_1/conv2d_2/Conv2D/ReadVariableOp�/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp�.model_2/model_1/conv2d_3/Conv2D/ReadVariableOp�/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp�.model_2/model_1/conv2d_4/Conv2D/ReadVariableOp�.model_2/model_1/dense_1/BiasAdd/ReadVariableOp�-model_2/model_1/dense_1/MatMul/ReadVariableOp�.model_2/model_1/dense_2/BiasAdd/ReadVariableOp�-model_2/model_1/dense_2/MatMul/ReadVariableOpc
!model_2/concatenate_1/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model_2/concatenate_1/concatConcatV2input_4input_5*model_2/concatenate_1/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
)model_2/model/dense/MatMul/ReadVariableOpReadVariableOp2model_2_model_dense_matmul_readvariableop_resource* 
_output_shapes
:
��2*
dtype0�
model_2/model/dense/MatMulMatMul%model_2/concatenate_1/concat:output:01model_2/model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2�
*model_2/model/dense/BiasAdd/ReadVariableOpReadVariableOp3model_2_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�2*
dtype0�
model_2/model/dense/BiasAddBiasAdd$model_2/model/dense/MatMul:product:02model_2/model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2�
:model_2/model/batch_normalization/batchnorm/ReadVariableOpReadVariableOpCmodel_2_model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:�2*
dtype0v
1model_2/model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
/model_2/model/batch_normalization/batchnorm/addAddV2Bmodel_2/model/batch_normalization/batchnorm/ReadVariableOp:value:0:model_2/model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:�2�
1model_2/model/batch_normalization/batchnorm/RsqrtRsqrt3model_2/model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:�2�
>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpGmodel_2_model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�2*
dtype0�
/model_2/model/batch_normalization/batchnorm/mulMul5model_2/model/batch_normalization/batchnorm/Rsqrt:y:0Fmodel_2/model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�2�
1model_2/model/batch_normalization/batchnorm/mul_1Mul$model_2/model/dense/BiasAdd:output:03model_2/model/batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:����������2�
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpEmodel_2_model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:�2*
dtype0�
1model_2/model/batch_normalization/batchnorm/mul_2MulDmodel_2/model/batch_normalization/batchnorm/ReadVariableOp_1:value:03model_2/model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:�2�
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpEmodel_2_model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:�2*
dtype0�
/model_2/model/batch_normalization/batchnorm/subSubDmodel_2/model/batch_normalization/batchnorm/ReadVariableOp_2:value:05model_2/model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�2�
1model_2/model/batch_normalization/batchnorm/add_1AddV25model_2/model/batch_normalization/batchnorm/mul_1:z:03model_2/model/batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:����������2�
model_2/model/activation/ReluRelu5model_2/model/batch_normalization/batchnorm/add_1:z:0*
T0*(
_output_shapes
:����������2�
model_2/model/reshape/ShapeShape+model_2/model/activation/Relu:activations:0*
T0*
_output_shapes
::��s
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
valueB:�
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
value	B :@�
#model_2/model/reshape/Reshape/shapePack,model_2/model/reshape/strided_slice:output:0.model_2/model/reshape/Reshape/shape/1:output:0.model_2/model/reshape/Reshape/shape/2:output:0.model_2/model/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
model_2/model/reshape/ReshapeReshape+model_2/model/activation/Relu:activations:0,model_2/model/reshape/Reshape/shape:output:0*
T0*/
_output_shapes
:���������

@�
model_2/model/dropout/IdentityIdentity&model_2/model/reshape/Reshape:output:0*
T0*/
_output_shapes
:���������
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
valueB"      �
model_2/model/up_sampling2d/mulMul*model_2/model/up_sampling2d/Const:output:0,model_2/model/up_sampling2d/Const_1:output:0*
T0*
_output_shapes
:�
8model_2/model/up_sampling2d/resize/ResizeNearestNeighborResizeNearestNeighbor'model_2/model/dropout/Identity:output:0#model_2/model/up_sampling2d/mul:z:0*
T0*/
_output_shapes
:���������@*
half_pixel_centers(�
$model_2/model/conv2d_transpose/ShapeShapeImodel_2/model/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::��|
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
valueB:�
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
value	B : �
$model_2/model/conv2d_transpose/stackPack5model_2/model/conv2d_transpose/strided_slice:output:0/model_2/model/conv2d_transpose/stack/1:output:0/model_2/model/conv2d_transpose/stack/2:output:0/model_2/model/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:~
4model_2/model/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6model_2/model/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6model_2/model/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.model_2/model/conv2d_transpose/strided_slice_1StridedSlice-model_2/model/conv2d_transpose/stack:output:0=model_2/model/conv2d_transpose/strided_slice_1/stack:output:0?model_2/model/conv2d_transpose/strided_slice_1/stack_1:output:0?model_2/model/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpGmodel_2_model_conv2d_transpose_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
/model_2/model/conv2d_transpose/conv2d_transposeConv2DBackpropInput-model_2/model/conv2d_transpose/stack:output:0Fmodel_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0Imodel_2/model/up_sampling2d/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp>model_2_model_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
&model_2/model/conv2d_transpose/BiasAddBiasAdd8model_2/model/conv2d_transpose/conv2d_transpose:output:0=model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
2model_2/model/batch_normalization_1/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_1_readvariableop_resource*
_output_shapes
: *
dtype0�
4model_2/model/batch_normalization_1/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Cmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
4model_2/model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3/model_2/model/conv2d_transpose/BiasAdd:output:0:model_2/model/batch_normalization_1/ReadVariableOp:value:0<model_2/model/batch_normalization_1/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
model_2/model/activation_1/ReluRelu8model_2/model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� t
#model_2/model/up_sampling2d_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"      v
%model_2/model/up_sampling2d_1/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
!model_2/model/up_sampling2d_1/mulMul,model_2/model/up_sampling2d_1/Const:output:0.model_2/model/up_sampling2d_1/Const_1:output:0*
T0*
_output_shapes
:�
:model_2/model/up_sampling2d_1/resize/ResizeNearestNeighborResizeNearestNeighbor-model_2/model/activation_1/Relu:activations:0%model_2/model/up_sampling2d_1/mul:z:0*
T0*/
_output_shapes
:���������(( *
half_pixel_centers(�
&model_2/model/conv2d_transpose_1/ShapeShapeKmodel_2/model/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::��~
4model_2/model/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6model_2/model/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6model_2/model/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
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
value	B :�
&model_2/model/conv2d_transpose_1/stackPack7model_2/model/conv2d_transpose_1/strided_slice:output:01model_2/model/conv2d_transpose_1/stack/1:output:01model_2/model/conv2d_transpose_1/stack/2:output:01model_2/model/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:�
6model_2/model/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8model_2/model/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8model_2/model/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0model_2/model/conv2d_transpose_1/strided_slice_1StridedSlice/model_2/model/conv2d_transpose_1/stack:output:0?model_2/model/conv2d_transpose_1/strided_slice_1/stack:output:0Amodel_2/model/conv2d_transpose_1/strided_slice_1/stack_1:output:0Amodel_2/model/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
1model_2/model/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput/model_2/model/conv2d_transpose_1/stack:output:0Hmodel_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0Kmodel_2/model/up_sampling2d_1/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������((*
paddingSAME*
strides
�
7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(model_2/model/conv2d_transpose_1/BiasAddBiasAdd:model_2/model/conv2d_transpose_1/conv2d_transpose:output:0?model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������((�
2model_2/model/batch_normalization_2/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_2_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/model/batch_normalization_2/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Cmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4model_2/model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV31model_2/model/conv2d_transpose_1/BiasAdd:output:0:model_2/model/batch_normalization_2/ReadVariableOp:value:0<model_2/model/batch_normalization_2/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������((:::::*
epsilon%o�:*
is_training( �
model_2/model/activation_2/ReluRelu8model_2/model/batch_normalization_2/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������((�
&model_2/model/conv2d_transpose_2/ShapeShape-model_2/model/activation_2/Relu:activations:0*
T0*
_output_shapes
::��~
4model_2/model/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6model_2/model/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6model_2/model/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
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
value	B :�
&model_2/model/conv2d_transpose_2/stackPack7model_2/model/conv2d_transpose_2/strided_slice:output:01model_2/model/conv2d_transpose_2/stack/1:output:01model_2/model/conv2d_transpose_2/stack/2:output:01model_2/model/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:�
6model_2/model/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
8model_2/model/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
8model_2/model/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
0model_2/model/conv2d_transpose_2/strided_slice_1StridedSlice/model_2/model/conv2d_transpose_2/stack:output:0?model_2/model/conv2d_transpose_2/strided_slice_1/stack:output:0Amodel_2/model/conv2d_transpose_2/strided_slice_1/stack_1:output:0Amodel_2/model/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
@model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpImodel_2_model_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
1model_2/model/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput/model_2/model/conv2d_transpose_2/stack:output:0Hmodel_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0-model_2/model/activation_2/Relu:activations:0*
T0*/
_output_shapes
:���������((*
paddingSAME*
strides
�
7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp@model_2_model_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
(model_2/model/conv2d_transpose_2/BiasAddBiasAdd:model_2/model/conv2d_transpose_2/conv2d_transpose:output:0?model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������((�
2model_2/model/batch_normalization_3/ReadVariableOpReadVariableOp;model_2_model_batch_normalization_3_readvariableop_resource*
_output_shapes
:*
dtype0�
4model_2/model/batch_normalization_3/ReadVariableOp_1ReadVariableOp=model_2_model_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Cmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpLmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpNmodel_2_model_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4model_2/model/batch_normalization_3/FusedBatchNormV3FusedBatchNormV31model_2/model/conv2d_transpose_2/BiasAdd:output:0:model_2/model/batch_normalization_3/ReadVariableOp:value:0<model_2/model/batch_normalization_3/ReadVariableOp_1:value:0Kmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Mmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������((:::::*
epsilon%o�:*
is_training( �
model_2/model/activation_3/ReluRelu8model_2/model/batch_normalization_3/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:���������((�
*model_2/model/conv2d/Conv2D/ReadVariableOpReadVariableOp3model_2_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
model_2/model/conv2d/Conv2DConv2D-model_2/model/activation_3/Relu:activations:02model_2/model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������((*
paddingSAME*
strides
�
+model_2/model/conv2d/BiasAdd/ReadVariableOpReadVariableOp4model_2_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/model/conv2d/BiasAddBiasAdd$model_2/model/conv2d/Conv2D:output:03model_2/model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������((�
model_2/model/conv2d/SigmoidSigmoid%model_2/model/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:���������((�
-model_2/model_1/dense_1/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
model_2/model_1/dense_1/MatMulMatMulinput_55model_2/model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.model_2/model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_2/model_1/dense_1/BiasAddBiasAdd(model_2/model_1/dense_1/MatMul:product:06model_2/model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
model_2/model_1/reshape_1/ShapeShape(model_2/model_1/dense_1/BiasAdd:output:0*
T0*
_output_shapes
::��w
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
valueB:�
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
value	B :�
'model_2/model_1/reshape_1/Reshape/shapePack0model_2/model_1/reshape_1/strided_slice:output:02model_2/model_1/reshape_1/Reshape/shape/1:output:02model_2/model_1/reshape_1/Reshape/shape/2:output:02model_2/model_1/reshape_1/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
!model_2/model_1/reshape_1/ReshapeReshape(model_2/model_1/dense_1/BiasAdd:output:00model_2/model_1/reshape_1/Reshape/shape:output:0*
T0*/
_output_shapes
:���������((i
'model_2/model_1/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
"model_2/model_1/concatenate/concatConcatV2 model_2/model/conv2d/Sigmoid:y:0*model_2/model_1/reshape_1/Reshape:output:00model_2/model_1/concatenate/concat/axis:output:0*
N*
T0*/
_output_shapes
:���������((�
.model_2/model_1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
model_2/model_1/conv2d_1/Conv2DConv2D+model_2/model_1/concatenate/concat:output:06model_2/model_1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
�
/model_2/model_1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
 model_2/model_1/conv2d_1/BiasAddBiasAdd(model_2/model_1/conv2d_1/Conv2D:output:07model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
model_2/model_1/conv2d_1/ReluRelu)model_2/model_1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:���������@�
"model_2/model_1/dropout_1/IdentityIdentity+model_2/model_1/conv2d_1/Relu:activations:0*
T0*/
_output_shapes
:���������@�
.model_2/model_1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
model_2/model_1/conv2d_2/Conv2DConv2D+model_2/model_1/dropout_1/Identity:output:06model_2/model_1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������

�*
paddingSAME*
strides
�
/model_2/model_1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model_2/model_1/conv2d_2/BiasAddBiasAdd(model_2/model_1/conv2d_2/Conv2D:output:07model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:���������

��
model_2/model_1/conv2d_2/ReluRelu)model_2/model_1/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:���������

��
"model_2/model_1/dropout_2/IdentityIdentity+model_2/model_1/conv2d_2/Relu:activations:0*
T0*0
_output_shapes
:���������

��
.model_2/model_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_3_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model_2/model_1/conv2d_3/Conv2DConv2D+model_2/model_1/dropout_2/Identity:output:06model_2/model_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
/model_2/model_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model_2/model_1/conv2d_3/BiasAddBiasAdd(model_2/model_1/conv2d_3/Conv2D:output:07model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
model_2/model_1/conv2d_3/ReluRelu)model_2/model_1/conv2d_3/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"model_2/model_1/dropout_3/IdentityIdentity+model_2/model_1/conv2d_3/Relu:activations:0*
T0*0
_output_shapes
:�����������
.model_2/model_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp7model_2_model_1_conv2d_4_conv2d_readvariableop_resource*(
_output_shapes
:��*
dtype0�
model_2/model_1/conv2d_4/Conv2DConv2D+model_2/model_1/dropout_3/Identity:output:06model_2/model_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
/model_2/model_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp8model_2_model_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
 model_2/model_1/conv2d_4/BiasAddBiasAdd(model_2/model_1/conv2d_4/Conv2D:output:07model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
model_2/model_1/conv2d_4/ReluRelu)model_2/model_1/conv2d_4/BiasAdd:output:0*
T0*0
_output_shapes
:�����������
"model_2/model_1/dropout_4/IdentityIdentity+model_2/model_1/conv2d_4/Relu:activations:0*
T0*0
_output_shapes
:����������n
model_2/model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"���� 2  �
model_2/model_1/flatten/ReshapeReshape+model_2/model_1/dropout_4/Identity:output:0&model_2/model_1/flatten/Const:output:0*
T0*(
_output_shapes
:����������d�
-model_2/model_1/dense_2/MatMul/ReadVariableOpReadVariableOp6model_2_model_1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
model_2/model_1/dense_2/MatMulMatMul(model_2/model_1/flatten/Reshape:output:05model_2/model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.model_2/model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp7model_2_model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_2/model_1/dense_2/BiasAddBiasAdd(model_2/model_1/dense_2/MatMul:product:06model_2/model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
model_2/model_1/dense_2/SigmoidSigmoid(model_2/model_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������r
IdentityIdentity#model_2/model_1/dense_2/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp;^model_2/model/batch_normalization/batchnorm/ReadVariableOp=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_1=^model_2/model/batch_normalization/batchnorm/ReadVariableOp_2?^model_2/model/batch_normalization/batchnorm/mul/ReadVariableOpD^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_1/ReadVariableOp5^model_2/model/batch_normalization_1/ReadVariableOp_1D^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_2/ReadVariableOp5^model_2/model/batch_normalization_2/ReadVariableOp_1D^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpF^model_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_13^model_2/model/batch_normalization_3/ReadVariableOp5^model_2/model/batch_normalization_3/ReadVariableOp_1,^model_2/model/conv2d/BiasAdd/ReadVariableOp+^model_2/model/conv2d/Conv2D/ReadVariableOp6^model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp?^model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp8^model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOpA^model_2/model/conv2d_transpose_2/conv2d_transpose/ReadVariableOp+^model_2/model/dense/BiasAdd/ReadVariableOp*^model_2/model/dense/MatMul/ReadVariableOp0^model_2/model_1/conv2d_1/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_1/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_2/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_2/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_3/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_3/Conv2D/ReadVariableOp0^model_2/model_1/conv2d_4/BiasAdd/ReadVariableOp/^model_2/model_1/conv2d_4/Conv2D/ReadVariableOp/^model_2/model_1/dense_1/BiasAdd/ReadVariableOp.^model_2/model_1/dense_1/MatMul/ReadVariableOp/^model_2/model_1/dense_2/BiasAdd/ReadVariableOp.^model_2/model_1/dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2x
:model_2/model/batch_normalization/batchnorm/ReadVariableOp:model_2/model/batch_normalization/batchnorm/ReadVariableOp2|
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_1<model_2/model/batch_normalization/batchnorm/ReadVariableOp_12|
<model_2/model/batch_normalization/batchnorm/ReadVariableOp_2<model_2/model/batch_normalization/batchnorm/ReadVariableOp_22�
>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOp>model_2/model/batch_normalization/batchnorm/mul/ReadVariableOp2�
Cmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12h
2model_2/model/batch_normalization_1/ReadVariableOp2model_2/model/batch_normalization_1/ReadVariableOp2l
4model_2/model/batch_normalization_1/ReadVariableOp_14model_2/model/batch_normalization_1/ReadVariableOp_12�
Cmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12h
2model_2/model/batch_normalization_2/ReadVariableOp2model_2/model/batch_normalization_2/ReadVariableOp2l
4model_2/model/batch_normalization_2/ReadVariableOp_14model_2/model/batch_normalization_2/ReadVariableOp_12�
Cmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOpCmodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2�
Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Emodel_2/model/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12h
2model_2/model/batch_normalization_3/ReadVariableOp2model_2/model/batch_normalization_3/ReadVariableOp2l
4model_2/model/batch_normalization_3/ReadVariableOp_14model_2/model/batch_normalization_3/ReadVariableOp_12Z
+model_2/model/conv2d/BiasAdd/ReadVariableOp+model_2/model/conv2d/BiasAdd/ReadVariableOp2X
*model_2/model/conv2d/Conv2D/ReadVariableOp*model_2/model/conv2d/Conv2D/ReadVariableOp2n
5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp5model_2/model/conv2d_transpose/BiasAdd/ReadVariableOp2�
>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp>model_2/model/conv2d_transpose/conv2d_transpose/ReadVariableOp2r
7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp7model_2/model/conv2d_transpose_1/BiasAdd/ReadVariableOp2�
@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp@model_2/model/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2r
7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp7model_2/model/conv2d_transpose_2/BiasAdd/ReadVariableOp2�
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
:���������d
!
_user_specified_name	input_4:QM
(
_output_shapes
:����������
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
� 
�	
,__inference_signature_wrapper___call___74048
input_4
input_5
unknown:
��2
	unknown_0:	�2
	unknown_1:	�2
	unknown_2:	�2
	unknown_3:	�2
	unknown_4:	�2#
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
��

unknown_26:	�$

unknown_27:@

unknown_28:@%

unknown_29:@�

unknown_30:	�&

unknown_31:��

unknown_32:	�&

unknown_33:��

unknown_34:	�

unknown_35:	�d

unknown_36:
identity��StatefulPartitionedCall�
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
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8� *#
fR
__inference___call___73883o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������d
!
_user_specified_name	input_4:QM
(
_output_shapes
:����������
!
_user_specified_name	input_5:%!

_user_specified_name73970:%!

_user_specified_name73972:%!

_user_specified_name73974:%!

_user_specified_name73976:%!

_user_specified_name73978:%!

_user_specified_name73980:%!

_user_specified_name73982:%	!

_user_specified_name73984:%
!

_user_specified_name73986:%!

_user_specified_name73988:%!

_user_specified_name73990:%!

_user_specified_name73992:%!

_user_specified_name73994:%!

_user_specified_name73996:%!

_user_specified_name73998:%!

_user_specified_name74000:%!

_user_specified_name74002:%!

_user_specified_name74004:%!

_user_specified_name74006:%!

_user_specified_name74008:%!

_user_specified_name74010:%!

_user_specified_name74012:%!

_user_specified_name74014:%!

_user_specified_name74016:%!

_user_specified_name74018:%!

_user_specified_name74020:%!

_user_specified_name74022:%!

_user_specified_name74024:%!

_user_specified_name74026:%!

_user_specified_name74028:% !

_user_specified_name74030:%!!

_user_specified_name74032:%"!

_user_specified_name74034:%#!

_user_specified_name74036:%$!

_user_specified_name74038:%%!

_user_specified_name74040:%&!

_user_specified_name74042:%'!

_user_specified_name74044
� 
�	
,__inference_signature_wrapper___call___73966
input_4
input_5
unknown:
��2
	unknown_0:	�2
	unknown_1:	�2
	unknown_2:	�2
	unknown_3:	�2
	unknown_4:	�2#
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
��

unknown_26:	�$

unknown_27:@

unknown_28:@%

unknown_29:@�

unknown_30:	�&

unknown_31:��

unknown_32:	�&

unknown_33:��

unknown_34:	�

unknown_35:	�d

unknown_36:
identity��StatefulPartitionedCall�
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
:���������*H
_read_only_resource_inputs*
(&	
 !"#$%&'*-
config_proto

CPU

GPU 2J 8� *#
fR
__inference___call___73883o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesu
s:���������d:����������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������d
!
_user_specified_name	input_4:QM
(
_output_shapes
:����������
!
_user_specified_name	input_5:%!

_user_specified_name73888:%!

_user_specified_name73890:%!

_user_specified_name73892:%!

_user_specified_name73894:%!

_user_specified_name73896:%!

_user_specified_name73898:%!

_user_specified_name73900:%	!

_user_specified_name73902:%
!

_user_specified_name73904:%!

_user_specified_name73906:%!

_user_specified_name73908:%!

_user_specified_name73910:%!

_user_specified_name73912:%!

_user_specified_name73914:%!

_user_specified_name73916:%!

_user_specified_name73918:%!

_user_specified_name73920:%!

_user_specified_name73922:%!

_user_specified_name73924:%!

_user_specified_name73926:%!

_user_specified_name73928:%!

_user_specified_name73930:%!

_user_specified_name73932:%!

_user_specified_name73934:%!

_user_specified_name73936:%!

_user_specified_name73938:%!

_user_specified_name73940:%!

_user_specified_name73942:%!

_user_specified_name73944:%!

_user_specified_name73946:% !

_user_specified_name73948:%!!

_user_specified_name73950:%"!

_user_specified_name73952:%#!

_user_specified_name73954:%$!

_user_specified_name73956:%%!

_user_specified_name73958:%&!

_user_specified_name73960:%'!

_user_specified_name73962
إ
�$
__inference__traced_save_74302
file_prefix7
#read_disablecopyonread_dense_kernel:
��22
#read_1_disablecopyonread_dense_bias:	�2A
2read_2_disablecopyonread_batch_normalization_gamma:	�2@
1read_3_disablecopyonread_batch_normalization_beta:	�2G
8read_4_disablecopyonread_batch_normalization_moving_mean:	�2K
<read_5_disablecopyonread_batch_normalization_moving_variance:	�2J
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
��5
&read_27_disablecopyonread_dense_1_bias:	�C
)read_28_disablecopyonread_conv2d_1_kernel:@5
'read_29_disablecopyonread_conv2d_1_bias:@D
)read_30_disablecopyonread_conv2d_2_kernel:@�6
'read_31_disablecopyonread_conv2d_2_bias:	�E
)read_32_disablecopyonread_conv2d_3_kernel:��6
'read_33_disablecopyonread_conv2d_3_bias:	�E
)read_34_disablecopyonread_conv2d_4_kernel:��6
'read_35_disablecopyonread_conv2d_4_bias:	�;
(read_36_disablecopyonread_dense_2_kernel:	�d4
&read_37_disablecopyonread_dense_2_bias:
savev2_const
identity_77��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: u
Read/DisableCopyOnReadDisableCopyOnRead#read_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp#read_disablecopyonread_dense_kernel^Read/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��2*
dtype0k
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��2c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��2w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_dense_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�2*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�2`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�2�
Read_2/DisableCopyOnReadDisableCopyOnRead2read_2_disablecopyonread_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp2read_2_disablecopyonread_batch_normalization_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�2*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�2`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:�2�
Read_3/DisableCopyOnReadDisableCopyOnRead1read_3_disablecopyonread_batch_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp1read_3_disablecopyonread_batch_normalization_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�2*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�2`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:�2�
Read_4/DisableCopyOnReadDisableCopyOnRead8read_4_disablecopyonread_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp8read_4_disablecopyonread_batch_normalization_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�2*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�2`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:�2�
Read_5/DisableCopyOnReadDisableCopyOnRead<read_5_disablecopyonread_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp<read_5_disablecopyonread_batch_normalization_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�2*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�2b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:�2�
Read_6/DisableCopyOnReadDisableCopyOnRead0read_6_disablecopyonread_conv2d_transpose_kernel"/device:CPU:0*
_output_shapes
 �
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
: @�
Read_7/DisableCopyOnReadDisableCopyOnRead.read_7_disablecopyonread_conv2d_transpose_bias"/device:CPU:0*
_output_shapes
 �
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
: �
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
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
: �
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
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
: �
Read_10/DisableCopyOnReadDisableCopyOnRead;read_10_disablecopyonread_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 �
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
: �
Read_11/DisableCopyOnReadDisableCopyOnRead?read_11_disablecopyonread_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 �
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
: �
Read_12/DisableCopyOnReadDisableCopyOnRead3read_12_disablecopyonread_conv2d_transpose_1_kernel"/device:CPU:0*
_output_shapes
 �
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
: �
Read_13/DisableCopyOnReadDisableCopyOnRead1read_13_disablecopyonread_conv2d_transpose_1_bias"/device:CPU:0*
_output_shapes
 �
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
:�
Read_14/DisableCopyOnReadDisableCopyOnRead5read_14_disablecopyonread_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
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
:�
Read_15/DisableCopyOnReadDisableCopyOnRead4read_15_disablecopyonread_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
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
:�
Read_16/DisableCopyOnReadDisableCopyOnRead;read_16_disablecopyonread_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 �
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
:�
Read_17/DisableCopyOnReadDisableCopyOnRead?read_17_disablecopyonread_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 �
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
:�
Read_18/DisableCopyOnReadDisableCopyOnRead3read_18_disablecopyonread_conv2d_transpose_2_kernel"/device:CPU:0*
_output_shapes
 �
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
:�
Read_19/DisableCopyOnReadDisableCopyOnRead1read_19_disablecopyonread_conv2d_transpose_2_bias"/device:CPU:0*
_output_shapes
 �
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
:�
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
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
:�
Read_21/DisableCopyOnReadDisableCopyOnRead4read_21_disablecopyonread_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
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
:�
Read_22/DisableCopyOnReadDisableCopyOnRead;read_22_disablecopyonread_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 �
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
:�
Read_23/DisableCopyOnReadDisableCopyOnRead?read_23_disablecopyonread_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 �
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
 �
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
 �
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
 �
Read_26/ReadVariableOpReadVariableOp(read_26_disablecopyonread_dense_1_kernel^Read_26/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��{
Read_27/DisableCopyOnReadDisableCopyOnRead&read_27_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp&read_27_disablecopyonread_dense_1_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_28/DisableCopyOnReadDisableCopyOnRead)read_28_disablecopyonread_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 �
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
 �
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
 �
Read_30/ReadVariableOpReadVariableOp)read_30_disablecopyonread_conv2d_2_kernel^Read_30/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@�*
dtype0x
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@�n
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*'
_output_shapes
:@�|
Read_31/DisableCopyOnReadDisableCopyOnRead'read_31_disablecopyonread_conv2d_2_bias"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp'read_31_disablecopyonread_conv2d_2_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_32/DisableCopyOnReadDisableCopyOnRead)read_32_disablecopyonread_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp)read_32_disablecopyonread_conv2d_3_kernel^Read_32/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*(
_output_shapes
:��|
Read_33/DisableCopyOnReadDisableCopyOnRead'read_33_disablecopyonread_conv2d_3_bias"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOp'read_33_disablecopyonread_conv2d_3_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:�~
Read_34/DisableCopyOnReadDisableCopyOnRead)read_34_disablecopyonread_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOp)read_34_disablecopyonread_conv2d_4_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*(
_output_shapes
:��*
dtype0y
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*(
_output_shapes
:��o
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*(
_output_shapes
:��|
Read_35/DisableCopyOnReadDisableCopyOnRead'read_35_disablecopyonread_conv2d_4_bias"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp'read_35_disablecopyonread_conv2d_4_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_36/DisableCopyOnReadDisableCopyOnRead(read_36_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp(read_36_disablecopyonread_dense_2_kernel^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�d*
dtype0p
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�df
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes
:	�d{
Read_37/DisableCopyOnReadDisableCopyOnRead&read_37_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
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
:�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*�
value�B�'B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *5
dtypes+
)2'�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_76Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_77IdentityIdentity_76:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_77Identity_77:output:0*(
_construction_contextkEagerRuntime*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_37/ReadVariableOpRead_37/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
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
_user_specified_namedense_2/bias:='9

_output_shapes
: 

_user_specified_nameConst
��
�
!__inference__traced_restore_74425
file_prefix1
assignvariableop_dense_kernel:
��2,
assignvariableop_1_dense_bias:	�2;
,assignvariableop_2_batch_normalization_gamma:	�2:
+assignvariableop_3_batch_normalization_beta:	�2A
2assignvariableop_4_batch_normalization_moving_mean:	�2E
6assignvariableop_5_batch_normalization_moving_variance:	�2D
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
��/
 assignvariableop_27_dense_1_bias:	�=
#assignvariableop_28_conv2d_1_kernel:@/
!assignvariableop_29_conv2d_1_bias:@>
#assignvariableop_30_conv2d_2_kernel:@�0
!assignvariableop_31_conv2d_2_bias:	�?
#assignvariableop_32_conv2d_3_kernel:��0
!assignvariableop_33_conv2d_3_bias:	�?
#assignvariableop_34_conv2d_4_kernel:��0
!assignvariableop_35_conv2d_4_bias:	�5
"assignvariableop_36_dense_2_kernel:	�d.
 assignvariableop_37_dense_2_bias:
identity_39��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*�
value�B�'B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp,assignvariableop_2_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp+assignvariableop_3_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp2assignvariableop_4_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp6assignvariableop_5_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp*assignvariableop_6_conv2d_transpose_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp(assignvariableop_7_conv2d_transpose_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_1_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_1_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp/assignvariableop_14_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp.assignvariableop_15_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp5assignvariableop_16_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp9assignvariableop_17_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp-assignvariableop_18_conv2d_transpose_2_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp+assignvariableop_19_conv2d_transpose_2_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp.assignvariableop_21_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp5assignvariableop_22_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp9assignvariableop_23_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp!assignvariableop_24_conv2d_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_conv2d_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_1_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_1_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp#assignvariableop_28_conv2d_1_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp!assignvariableop_29_conv2d_1_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp#assignvariableop_30_conv2d_2_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp!assignvariableop_31_conv2d_2_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp#assignvariableop_32_conv2d_3_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp!assignvariableop_33_conv2d_3_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp#assignvariableop_34_conv2d_4_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp!assignvariableop_35_conv2d_4_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_2_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_2_biasIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_39IdentityIdentity_38:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_39Identity_39:output:0*(
_construction_contextkEagerRuntime*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_37AssignVariableOp_372(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
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
_user_specified_namedense_2/bias"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
1
input_4&
serve_input_4:0���������d
2
input_5'
serve_input_5:0����������<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
;
input_40
serving_default_input_4:0���������d
<
input_51
serving_default_input_5:0����������>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�%
�
_endpoint_names
_endpoint_signatures
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve
	
signatures"
_generic_user_object
 "
trackable_list_wrapper
+
	
serve"
trackable_dict_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
 21
!22
"23
#24
$25
%26
&27
'28
(29
)30
*31
+32
,33
-34
.35
/36
037"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
 15
#16
$17"
trackable_list_wrapper
�
0
1
2
3
4
5
!6
"7
%8
&9
'10
(11
)12
*13
+14
,15
-16
.17
/18
019"
trackable_list_wrapper
�
0
-1
2
3
4
5
$6
7
#8
(9
*10
11
,12
013
14
15
&16
.17
18
19
20
21
+22
23
%24
)25
26
 27
'28
/29
30
"31
32
!33
34
35
36
37"
trackable_list_wrapper
 "
trackable_list_wrapper
�
1trace_02�
__inference___call___73883�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *O�L
J�G
!�
input_4���������d
"�
input_5����������z1trace_0
7
	2serve
3serving_default"
signature_map
'
40"
trackable_list_wrapper
 :
��22dense/kernel
:�22
dense/bias
(:&�22batch_normalization/gamma
':%�22batch_normalization/beta
0:.�2 (2batch_normalization/moving_mean
4:2�2 (2#batch_normalization/moving_variance
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
��2dense_1/kernel
:�2dense_1/bias
):'@2conv2d_1/kernel
:@2conv2d_1/bias
*:(@�2conv2d_2/kernel
:�2conv2d_2/bias
+:)��2conv2d_3/kernel
:�2conv2d_3/bias
+:)��2conv2d_4/kernel
:�2conv2d_4/bias
!:	�d2dense_2/kernel
:2dense_2/bias
�B�
__inference___call___73883input_4input_5"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *O�L
J�G
!�
input_4���������d
"�
input_5����������
�B�
,__inference_signature_wrapper___call___73966input_4input_5"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_signature_wrapper___call___74048input_4input_5"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper�
__inference___call___73883�& !"#$%&'()*+,-./0Y�V
O�L
J�G
!�
input_4���������d
"�
input_5����������
� "!�
unknown����������
,__inference_signature_wrapper___call___73966�& !"#$%&'()*+,-./0j�g
� 
`�]
,
input_4!�
input_4���������d
-
input_5"�
input_5����������"3�0
.
output_0"�
output_0����������
,__inference_signature_wrapper___call___74048�& !"#$%&'()*+,-./0j�g
� 
`�]
,
input_4!�
input_4���������d
-
input_5"�
input_5����������"3�0
.
output_0"�
output_0���������