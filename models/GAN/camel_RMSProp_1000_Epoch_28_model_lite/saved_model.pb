Ĵ
��
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
 �"serve*2.13.12v2.13.1-0-gf841394b1b78��
t
conv2d_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_55/bias
m
"conv2d_55/bias/Read/ReadVariableOpReadVariableOpconv2d_55/bias*
_output_shapes
:*
dtype0
�
conv2d_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_55/kernel
}
$conv2d_55/kernel/Read/ReadVariableOpReadVariableOpconv2d_55/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_47/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_47/moving_variance
�
:batch_normalization_47/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_47/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_47/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_47/moving_mean
�
6batch_normalization_47/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_47/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_47/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_47/beta
�
/batch_normalization_47/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_47/beta*
_output_shapes
:*
dtype0
�
batch_normalization_47/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_47/gamma
�
0batch_normalization_47/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_47/gamma*
_output_shapes
:*
dtype0
�
conv2d_transpose_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_35/bias
�
,conv2d_transpose_35/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv2d_transpose_35/kernel
�
.conv2d_transpose_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_35/kernel*&
_output_shapes
:*
dtype0
�
&batch_normalization_46/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_46/moving_variance
�
:batch_normalization_46/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_46/moving_variance*
_output_shapes
:*
dtype0
�
"batch_normalization_46/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_46/moving_mean
�
6batch_normalization_46/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_46/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_46/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_46/beta
�
/batch_normalization_46/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_46/beta*
_output_shapes
:*
dtype0
�
batch_normalization_46/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_46/gamma
�
0batch_normalization_46/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_46/gamma*
_output_shapes
:*
dtype0
�
conv2d_transpose_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_34/bias
�
,conv2d_transpose_34/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_34/bias*
_output_shapes
:*
dtype0
�
conv2d_transpose_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_34/kernel
�
.conv2d_transpose_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_34/kernel*&
_output_shapes
: *
dtype0
�
&batch_normalization_45/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_45/moving_variance
�
:batch_normalization_45/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_45/moving_variance*
_output_shapes
: *
dtype0
�
"batch_normalization_45/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_45/moving_mean
�
6batch_normalization_45/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_45/moving_mean*
_output_shapes
: *
dtype0
�
batch_normalization_45/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_45/beta
�
/batch_normalization_45/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_45/beta*
_output_shapes
: *
dtype0
�
batch_normalization_45/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_45/gamma
�
0batch_normalization_45/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_45/gamma*
_output_shapes
: *
dtype0
�
conv2d_transpose_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_33/bias
�
,conv2d_transpose_33/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_33/bias*
_output_shapes
: *
dtype0
�
conv2d_transpose_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_33/kernel
�
.conv2d_transpose_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_33/kernel*&
_output_shapes
: @*
dtype0
�
&batch_normalization_44/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&batch_normalization_44/moving_variance
�
:batch_normalization_44/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_44/moving_variance*
_output_shapes	
:�*
dtype0
�
"batch_normalization_44/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*3
shared_name$"batch_normalization_44/moving_mean
�
6batch_normalization_44/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_44/moving_mean*
_output_shapes	
:�*
dtype0
�
batch_normalization_44/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*,
shared_namebatch_normalization_44/beta
�
/batch_normalization_44/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_44/beta*
_output_shapes	
:�*
dtype0
�
batch_normalization_44/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*-
shared_namebatch_normalization_44/gamma
�
0batch_normalization_44/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_44/gamma*
_output_shapes	
:�*
dtype0
s
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_22/bias
l
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes	
:�*
dtype0
{
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d�* 
shared_namedense_22/kernel
t
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes
:	d�*
dtype0
q
serve_input_34Placeholder*'
_output_shapes
:���������d*
dtype0*
shape:���������d
�
StatefulPartitionedCallStatefulPartitionedCallserve_input_34dense_22/kerneldense_22/bias&batch_normalization_44/moving_variancebatch_normalization_44/gamma"batch_normalization_44/moving_meanbatch_normalization_44/betaconv2d_transpose_33/kernelconv2d_transpose_33/biasbatch_normalization_45/gammabatch_normalization_45/beta"batch_normalization_45/moving_mean&batch_normalization_45/moving_varianceconv2d_transpose_34/kernelconv2d_transpose_34/biasbatch_normalization_46/gammabatch_normalization_46/beta"batch_normalization_46/moving_mean&batch_normalization_46/moving_varianceconv2d_transpose_35/kernelconv2d_transpose_35/biasbatch_normalization_47/gammabatch_normalization_47/beta"batch_normalization_47/moving_mean&batch_normalization_47/moving_varianceconv2d_55/kernelconv2d_55/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference_signature_wrapper___call___1466700
{
serving_default_input_34Placeholder*'
_output_shapes
:���������d*
dtype0*
shape:���������d
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_34dense_22/kerneldense_22/bias&batch_normalization_44/moving_variancebatch_normalization_44/gamma"batch_normalization_44/moving_meanbatch_normalization_44/betaconv2d_transpose_33/kernelconv2d_transpose_33/biasbatch_normalization_45/gammabatch_normalization_45/beta"batch_normalization_45/moving_mean&batch_normalization_45/moving_varianceconv2d_transpose_34/kernelconv2d_transpose_34/biasbatch_normalization_46/gammabatch_normalization_46/beta"batch_normalization_46/moving_mean&batch_normalization_46/moving_varianceconv2d_transpose_35/kernelconv2d_transpose_35/biasbatch_normalization_47/gammabatch_normalization_47/beta"batch_normalization_47/moving_mean&batch_normalization_47/moving_varianceconv2d_55/kernelconv2d_55/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference_signature_wrapper___call___1466757

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
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
�
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
$25*
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
<
0
1
2
3
4
5
!6
"7*
�
0
1
2
3
4
5
 6
7
8
9
$10
11
12
13
14
15
16
#17
18
19
"20
21
22
23
24
!25*
* 

%trace_0* 
"
	&serve
'serving_default* 
* 
OI
VARIABLE_VALUEdense_22/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_22/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_44/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_44/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"batch_normalization_44/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&batch_normalization_44/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEconv2d_transpose_33/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEconv2d_transpose_33/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_45/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEbatch_normalization_45/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_45/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_45/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_34/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_34/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_46/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_46/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_46/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_46/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_transpose_35/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d_transpose_35/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEbatch_normalization_47/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEbatch_normalization_47/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"batch_normalization_47/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&batch_normalization_47/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUEconv2d_55/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEconv2d_55/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_22/kerneldense_22/biasbatch_normalization_44/gammabatch_normalization_44/beta"batch_normalization_44/moving_mean&batch_normalization_44/moving_varianceconv2d_transpose_33/kernelconv2d_transpose_33/biasbatch_normalization_45/gammabatch_normalization_45/beta"batch_normalization_45/moving_mean&batch_normalization_45/moving_varianceconv2d_transpose_34/kernelconv2d_transpose_34/biasbatch_normalization_46/gammabatch_normalization_46/beta"batch_normalization_46/moving_mean&batch_normalization_46/moving_varianceconv2d_transpose_35/kernelconv2d_transpose_35/biasbatch_normalization_47/gammabatch_normalization_47/beta"batch_normalization_47/moving_mean&batch_normalization_47/moving_varianceconv2d_55/kernelconv2d_55/biasConst*'
Tin 
2*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_1466937
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenamedense_22/kerneldense_22/biasbatch_normalization_44/gammabatch_normalization_44/beta"batch_normalization_44/moving_mean&batch_normalization_44/moving_varianceconv2d_transpose_33/kernelconv2d_transpose_33/biasbatch_normalization_45/gammabatch_normalization_45/beta"batch_normalization_45/moving_mean&batch_normalization_45/moving_varianceconv2d_transpose_34/kernelconv2d_transpose_34/biasbatch_normalization_46/gammabatch_normalization_46/beta"batch_normalization_46/moving_mean&batch_normalization_46/moving_varianceconv2d_transpose_35/kernelconv2d_transpose_35/biasbatch_normalization_47/gammabatch_normalization_47/beta"batch_normalization_47/moving_mean&batch_normalization_47/moving_varianceconv2d_55/kernelconv2d_55/bias*&
Tin
2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_1467024��
��
�
 __inference__traced_save_1466937
file_prefix9
&read_disablecopyonread_dense_22_kernel:	d�5
&read_1_disablecopyonread_dense_22_bias:	�D
5read_2_disablecopyonread_batch_normalization_44_gamma:	�C
4read_3_disablecopyonread_batch_normalization_44_beta:	�J
;read_4_disablecopyonread_batch_normalization_44_moving_mean:	�N
?read_5_disablecopyonread_batch_normalization_44_moving_variance:	�M
3read_6_disablecopyonread_conv2d_transpose_33_kernel: @?
1read_7_disablecopyonread_conv2d_transpose_33_bias: C
5read_8_disablecopyonread_batch_normalization_45_gamma: B
4read_9_disablecopyonread_batch_normalization_45_beta: J
<read_10_disablecopyonread_batch_normalization_45_moving_mean: N
@read_11_disablecopyonread_batch_normalization_45_moving_variance: N
4read_12_disablecopyonread_conv2d_transpose_34_kernel: @
2read_13_disablecopyonread_conv2d_transpose_34_bias:D
6read_14_disablecopyonread_batch_normalization_46_gamma:C
5read_15_disablecopyonread_batch_normalization_46_beta:J
<read_16_disablecopyonread_batch_normalization_46_moving_mean:N
@read_17_disablecopyonread_batch_normalization_46_moving_variance:N
4read_18_disablecopyonread_conv2d_transpose_35_kernel:@
2read_19_disablecopyonread_conv2d_transpose_35_bias:D
6read_20_disablecopyonread_batch_normalization_47_gamma:C
5read_21_disablecopyonread_batch_normalization_47_beta:J
<read_22_disablecopyonread_batch_normalization_47_moving_mean:N
@read_23_disablecopyonread_batch_normalization_47_moving_variance:D
*read_24_disablecopyonread_conv2d_55_kernel:6
(read_25_disablecopyonread_conv2d_55_bias:
savev2_const
identity_53��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_22_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_22_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	d�*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d�b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	d�z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_22_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_22_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_44_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_44_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_44_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_44_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_44_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_44_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_44_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_44_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_6/DisableCopyOnReadDisableCopyOnRead3read_6_disablecopyonread_conv2d_transpose_33_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp3read_6_disablecopyonread_conv2d_transpose_33_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
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
Read_7/DisableCopyOnReadDisableCopyOnRead1read_7_disablecopyonread_conv2d_transpose_33_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp1read_7_disablecopyonread_conv2d_transpose_33_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
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
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_45_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_45_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
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
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_45_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_45_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
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
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_45_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_45_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
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
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_45_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_45_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
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
Read_12/DisableCopyOnReadDisableCopyOnRead4read_12_disablecopyonread_conv2d_transpose_34_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp4read_12_disablecopyonread_conv2d_transpose_34_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*&
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
Read_13/DisableCopyOnReadDisableCopyOnRead2read_13_disablecopyonread_conv2d_transpose_34_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp2read_13_disablecopyonread_conv2d_transpose_34_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
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
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_46_gamma"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_46_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
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
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_46_beta"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_46_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
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
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_46_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_46_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
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
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_46_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_46_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
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
Read_18/DisableCopyOnReadDisableCopyOnRead4read_18_disablecopyonread_conv2d_transpose_35_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp4read_18_disablecopyonread_conv2d_transpose_35_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*&
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
Read_19/DisableCopyOnReadDisableCopyOnRead2read_19_disablecopyonread_conv2d_transpose_35_bias"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp2read_19_disablecopyonread_conv2d_transpose_35_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
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
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_47_gamma"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_47_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
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
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_47_beta"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_47_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
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
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_47_moving_mean"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_47_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
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
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_47_moving_variance"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_47_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
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
:
Read_24/DisableCopyOnReadDisableCopyOnRead*read_24_disablecopyonread_conv2d_55_kernel"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp*read_24_disablecopyonread_conv2d_55_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
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
:}
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_conv2d_55_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_conv2d_55_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
:�	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *)
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_52Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_53IdentityIdentity_52:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_53Identity_53:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_25/ReadVariableOpRead_25/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:.*
(
_user_specified_nameconv2d_55/bias:0,
*
_user_specified_nameconv2d_55/kernel:FB
@
_user_specified_name(&batch_normalization_47/moving_variance:B>
<
_user_specified_name$"batch_normalization_47/moving_mean:;7
5
_user_specified_namebatch_normalization_47/beta:<8
6
_user_specified_namebatch_normalization_47/gamma:84
2
_user_specified_nameconv2d_transpose_35/bias::6
4
_user_specified_nameconv2d_transpose_35/kernel:FB
@
_user_specified_name(&batch_normalization_46/moving_variance:B>
<
_user_specified_name$"batch_normalization_46/moving_mean:;7
5
_user_specified_namebatch_normalization_46/beta:<8
6
_user_specified_namebatch_normalization_46/gamma:84
2
_user_specified_nameconv2d_transpose_34/bias::6
4
_user_specified_nameconv2d_transpose_34/kernel:FB
@
_user_specified_name(&batch_normalization_45/moving_variance:B>
<
_user_specified_name$"batch_normalization_45/moving_mean:;
7
5
_user_specified_namebatch_normalization_45/beta:<	8
6
_user_specified_namebatch_normalization_45/gamma:84
2
_user_specified_nameconv2d_transpose_33/bias::6
4
_user_specified_nameconv2d_transpose_33/kernel:FB
@
_user_specified_name(&batch_normalization_44/moving_variance:B>
<
_user_specified_name$"batch_normalization_44/moving_mean:;7
5
_user_specified_namebatch_normalization_44/beta:<8
6
_user_specified_namebatch_normalization_44/gamma:-)
'
_user_specified_namedense_22/bias:/+
)
_user_specified_namedense_22/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
.__inference_signature_wrapper___call___1466757
input_34
unknown:	d�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�#
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_34unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
 */
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *%
f R
__inference___call___1466642w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������d: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1466753:'#
!
_user_specified_name	1466751:'#
!
_user_specified_name	1466749:'#
!
_user_specified_name	1466747:'#
!
_user_specified_name	1466745:'#
!
_user_specified_name	1466743:'#
!
_user_specified_name	1466741:'#
!
_user_specified_name	1466739:'#
!
_user_specified_name	1466737:'#
!
_user_specified_name	1466735:'#
!
_user_specified_name	1466733:'#
!
_user_specified_name	1466731:'#
!
_user_specified_name	1466729:'#
!
_user_specified_name	1466727:'#
!
_user_specified_name	1466725:'#
!
_user_specified_name	1466723:'
#
!
_user_specified_name	1466721:'	#
!
_user_specified_name	1466719:'#
!
_user_specified_name	1466717:'#
!
_user_specified_name	1466715:'#
!
_user_specified_name	1466713:'#
!
_user_specified_name	1466711:'#
!
_user_specified_name	1466709:'#
!
_user_specified_name	1466707:'#
!
_user_specified_name	1466705:'#
!
_user_specified_name	1466703:Q M
'
_output_shapes
:���������d
"
_user_specified_name
input_34
�
�
.__inference_signature_wrapper___call___1466700
input_34
unknown:	d�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
	unknown_3:	�
	unknown_4:	�#
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
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_34unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
 */
_output_shapes
:���������*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *%
f R
__inference___call___1466642w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������d: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1466696:'#
!
_user_specified_name	1466694:'#
!
_user_specified_name	1466692:'#
!
_user_specified_name	1466690:'#
!
_user_specified_name	1466688:'#
!
_user_specified_name	1466686:'#
!
_user_specified_name	1466684:'#
!
_user_specified_name	1466682:'#
!
_user_specified_name	1466680:'#
!
_user_specified_name	1466678:'#
!
_user_specified_name	1466676:'#
!
_user_specified_name	1466674:'#
!
_user_specified_name	1466672:'#
!
_user_specified_name	1466670:'#
!
_user_specified_name	1466668:'#
!
_user_specified_name	1466666:'
#
!
_user_specified_name	1466664:'	#
!
_user_specified_name	1466662:'#
!
_user_specified_name	1466660:'#
!
_user_specified_name	1466658:'#
!
_user_specified_name	1466656:'#
!
_user_specified_name	1466654:'#
!
_user_specified_name	1466652:'#
!
_user_specified_name	1466650:'#
!
_user_specified_name	1466648:'#
!
_user_specified_name	1466646:Q M
'
_output_shapes
:���������d
"
_user_specified_name
input_34
�~
�
#__inference__traced_restore_1467024
file_prefix3
 assignvariableop_dense_22_kernel:	d�/
 assignvariableop_1_dense_22_bias:	�>
/assignvariableop_2_batch_normalization_44_gamma:	�=
.assignvariableop_3_batch_normalization_44_beta:	�D
5assignvariableop_4_batch_normalization_44_moving_mean:	�H
9assignvariableop_5_batch_normalization_44_moving_variance:	�G
-assignvariableop_6_conv2d_transpose_33_kernel: @9
+assignvariableop_7_conv2d_transpose_33_bias: =
/assignvariableop_8_batch_normalization_45_gamma: <
.assignvariableop_9_batch_normalization_45_beta: D
6assignvariableop_10_batch_normalization_45_moving_mean: H
:assignvariableop_11_batch_normalization_45_moving_variance: H
.assignvariableop_12_conv2d_transpose_34_kernel: :
,assignvariableop_13_conv2d_transpose_34_bias:>
0assignvariableop_14_batch_normalization_46_gamma:=
/assignvariableop_15_batch_normalization_46_beta:D
6assignvariableop_16_batch_normalization_46_moving_mean:H
:assignvariableop_17_batch_normalization_46_moving_variance:H
.assignvariableop_18_conv2d_transpose_35_kernel::
,assignvariableop_19_conv2d_transpose_35_bias:>
0assignvariableop_20_batch_normalization_47_gamma:=
/assignvariableop_21_batch_normalization_47_beta:D
6assignvariableop_22_batch_normalization_47_moving_mean:H
:assignvariableop_23_batch_normalization_47_moving_variance:>
$assignvariableop_24_conv2d_55_kernel:0
"assignvariableop_25_conv2d_55_bias:
identity_27��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_22_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_22_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_44_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_44_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_44_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_44_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp-assignvariableop_6_conv2d_transpose_33_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp+assignvariableop_7_conv2d_transpose_33_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_45_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_45_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_45_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_45_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp.assignvariableop_12_conv2d_transpose_34_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp,assignvariableop_13_conv2d_transpose_34_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_46_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_46_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_46_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_46_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp.assignvariableop_18_conv2d_transpose_35_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp,assignvariableop_19_conv2d_transpose_35_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_47_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_47_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_47_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_47_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_55_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_55_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_27Identity_27:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:.*
(
_user_specified_nameconv2d_55/bias:0,
*
_user_specified_nameconv2d_55/kernel:FB
@
_user_specified_name(&batch_normalization_47/moving_variance:B>
<
_user_specified_name$"batch_normalization_47/moving_mean:;7
5
_user_specified_namebatch_normalization_47/beta:<8
6
_user_specified_namebatch_normalization_47/gamma:84
2
_user_specified_nameconv2d_transpose_35/bias::6
4
_user_specified_nameconv2d_transpose_35/kernel:FB
@
_user_specified_name(&batch_normalization_46/moving_variance:B>
<
_user_specified_name$"batch_normalization_46/moving_mean:;7
5
_user_specified_namebatch_normalization_46/beta:<8
6
_user_specified_namebatch_normalization_46/gamma:84
2
_user_specified_nameconv2d_transpose_34/bias::6
4
_user_specified_nameconv2d_transpose_34/kernel:FB
@
_user_specified_name(&batch_normalization_45/moving_variance:B>
<
_user_specified_name$"batch_normalization_45/moving_mean:;
7
5
_user_specified_namebatch_normalization_45/beta:<	8
6
_user_specified_namebatch_normalization_45/gamma:84
2
_user_specified_nameconv2d_transpose_33/bias::6
4
_user_specified_nameconv2d_transpose_33/kernel:FB
@
_user_specified_name(&batch_normalization_44/moving_variance:B>
<
_user_specified_name$"batch_normalization_44/moving_mean:;7
5
_user_specified_namebatch_normalization_44/beta:<8
6
_user_specified_namebatch_normalization_44/gamma:-)
'
_user_specified_namedense_22/bias:/+
)
_user_specified_namedense_22/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
��
�
__inference___call___1466642
input_34H
5sequential_22_dense_22_matmul_readvariableop_resource:	d�E
6sequential_22_dense_22_biasadd_readvariableop_resource:	�U
Fsequential_22_batch_normalization_44_batchnorm_readvariableop_resource:	�Y
Jsequential_22_batch_normalization_44_batchnorm_mul_readvariableop_resource:	�W
Hsequential_22_batch_normalization_44_batchnorm_readvariableop_1_resource:	�W
Hsequential_22_batch_normalization_44_batchnorm_readvariableop_2_resource:	�d
Jsequential_22_conv2d_transpose_33_conv2d_transpose_readvariableop_resource: @O
Asequential_22_conv2d_transpose_33_biasadd_readvariableop_resource: J
<sequential_22_batch_normalization_45_readvariableop_resource: L
>sequential_22_batch_normalization_45_readvariableop_1_resource: [
Msequential_22_batch_normalization_45_fusedbatchnormv3_readvariableop_resource: ]
Osequential_22_batch_normalization_45_fusedbatchnormv3_readvariableop_1_resource: d
Jsequential_22_conv2d_transpose_34_conv2d_transpose_readvariableop_resource: O
Asequential_22_conv2d_transpose_34_biasadd_readvariableop_resource:J
<sequential_22_batch_normalization_46_readvariableop_resource:L
>sequential_22_batch_normalization_46_readvariableop_1_resource:[
Msequential_22_batch_normalization_46_fusedbatchnormv3_readvariableop_resource:]
Osequential_22_batch_normalization_46_fusedbatchnormv3_readvariableop_1_resource:d
Jsequential_22_conv2d_transpose_35_conv2d_transpose_readvariableop_resource:O
Asequential_22_conv2d_transpose_35_biasadd_readvariableop_resource:J
<sequential_22_batch_normalization_47_readvariableop_resource:L
>sequential_22_batch_normalization_47_readvariableop_1_resource:[
Msequential_22_batch_normalization_47_fusedbatchnormv3_readvariableop_resource:]
Osequential_22_batch_normalization_47_fusedbatchnormv3_readvariableop_1_resource:P
6sequential_22_conv2d_55_conv2d_readvariableop_resource:E
7sequential_22_conv2d_55_biasadd_readvariableop_resource:
identity��=sequential_22/batch_normalization_44/batchnorm/ReadVariableOp�?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_1�?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_2�Asequential_22/batch_normalization_44/batchnorm/mul/ReadVariableOp�Dsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp�Fsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp_1�3sequential_22/batch_normalization_45/ReadVariableOp�5sequential_22/batch_normalization_45/ReadVariableOp_1�Dsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp�Fsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp_1�3sequential_22/batch_normalization_46/ReadVariableOp�5sequential_22/batch_normalization_46/ReadVariableOp_1�Dsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp�Fsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1�3sequential_22/batch_normalization_47/ReadVariableOp�5sequential_22/batch_normalization_47/ReadVariableOp_1�.sequential_22/conv2d_55/BiasAdd/ReadVariableOp�-sequential_22/conv2d_55/Conv2D/ReadVariableOp�8sequential_22/conv2d_transpose_33/BiasAdd/ReadVariableOp�Asequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp�8sequential_22/conv2d_transpose_34/BiasAdd/ReadVariableOp�Asequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp�8sequential_22/conv2d_transpose_35/BiasAdd/ReadVariableOp�Asequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp�-sequential_22/dense_22/BiasAdd/ReadVariableOp�,sequential_22/dense_22/MatMul/ReadVariableOp�
,sequential_22/dense_22/MatMul/ReadVariableOpReadVariableOp5sequential_22_dense_22_matmul_readvariableop_resource*
_output_shapes
:	d�*
dtype0�
sequential_22/dense_22/MatMulMatMulinput_344sequential_22/dense_22/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
-sequential_22/dense_22/BiasAdd/ReadVariableOpReadVariableOp6sequential_22_dense_22_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_22/dense_22/BiasAddBiasAdd'sequential_22/dense_22/MatMul:product:05sequential_22/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=sequential_22/batch_normalization_44/batchnorm/ReadVariableOpReadVariableOpFsequential_22_batch_normalization_44_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4sequential_22/batch_normalization_44/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2sequential_22/batch_normalization_44/batchnorm/addAddV2Esequential_22/batch_normalization_44/batchnorm/ReadVariableOp:value:0=sequential_22/batch_normalization_44/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4sequential_22/batch_normalization_44/batchnorm/RsqrtRsqrt6sequential_22/batch_normalization_44/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Asequential_22/batch_normalization_44/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_22_batch_normalization_44_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2sequential_22/batch_normalization_44/batchnorm/mulMul8sequential_22/batch_normalization_44/batchnorm/Rsqrt:y:0Isequential_22/batch_normalization_44/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4sequential_22/batch_normalization_44/batchnorm/mul_1Mul'sequential_22/dense_22/BiasAdd:output:06sequential_22/batch_normalization_44/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_22_batch_normalization_44_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4sequential_22/batch_normalization_44/batchnorm/mul_2MulGsequential_22/batch_normalization_44/batchnorm/ReadVariableOp_1:value:06sequential_22/batch_normalization_44/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_22_batch_normalization_44_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2sequential_22/batch_normalization_44/batchnorm/subSubGsequential_22/batch_normalization_44/batchnorm/ReadVariableOp_2:value:08sequential_22/batch_normalization_44/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4sequential_22/batch_normalization_44/batchnorm/add_1AddV28sequential_22/batch_normalization_44/batchnorm/mul_1:z:06sequential_22/batch_normalization_44/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
 sequential_22/activation_44/ReluRelu8sequential_22/batch_normalization_44/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
sequential_22/reshape_11/ShapeShape.sequential_22/activation_44/Relu:activations:0*
T0*
_output_shapes
::��v
,sequential_22/reshape_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.sequential_22/reshape_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.sequential_22/reshape_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
&sequential_22/reshape_11/strided_sliceStridedSlice'sequential_22/reshape_11/Shape:output:05sequential_22/reshape_11/strided_slice/stack:output:07sequential_22/reshape_11/strided_slice/stack_1:output:07sequential_22/reshape_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
(sequential_22/reshape_11/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_22/reshape_11/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :j
(sequential_22/reshape_11/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :@�
&sequential_22/reshape_11/Reshape/shapePack/sequential_22/reshape_11/strided_slice:output:01sequential_22/reshape_11/Reshape/shape/1:output:01sequential_22/reshape_11/Reshape/shape/2:output:01sequential_22/reshape_11/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
 sequential_22/reshape_11/ReshapeReshape.sequential_22/activation_44/Relu:activations:0/sequential_22/reshape_11/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
!sequential_22/dropout_55/IdentityIdentity)sequential_22/reshape_11/Reshape:output:0*
T0*/
_output_shapes
:���������@u
$sequential_22/up_sampling2d_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_22/up_sampling2d_22/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_22/up_sampling2d_22/mulMul-sequential_22/up_sampling2d_22/Const:output:0/sequential_22/up_sampling2d_22/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_22/up_sampling2d_22/resize/ResizeNearestNeighborResizeNearestNeighbor*sequential_22/dropout_55/Identity:output:0&sequential_22/up_sampling2d_22/mul:z:0*
T0*/
_output_shapes
:���������@*
half_pixel_centers(�
'sequential_22/conv2d_transpose_33/ShapeShapeLsequential_22/up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::��
5sequential_22/conv2d_transpose_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_22/conv2d_transpose_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_22/conv2d_transpose_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_22/conv2d_transpose_33/strided_sliceStridedSlice0sequential_22/conv2d_transpose_33/Shape:output:0>sequential_22/conv2d_transpose_33/strided_slice/stack:output:0@sequential_22/conv2d_transpose_33/strided_slice/stack_1:output:0@sequential_22/conv2d_transpose_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_22/conv2d_transpose_33/stack/1Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_22/conv2d_transpose_33/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_22/conv2d_transpose_33/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
'sequential_22/conv2d_transpose_33/stackPack8sequential_22/conv2d_transpose_33/strided_slice:output:02sequential_22/conv2d_transpose_33/stack/1:output:02sequential_22/conv2d_transpose_33/stack/2:output:02sequential_22/conv2d_transpose_33/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_22/conv2d_transpose_33/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_22/conv2d_transpose_33/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_22/conv2d_transpose_33/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_22/conv2d_transpose_33/strided_slice_1StridedSlice0sequential_22/conv2d_transpose_33/stack:output:0@sequential_22/conv2d_transpose_33/strided_slice_1/stack:output:0Bsequential_22/conv2d_transpose_33/strided_slice_1/stack_1:output:0Bsequential_22/conv2d_transpose_33/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_22_conv2d_transpose_33_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype0�
2sequential_22/conv2d_transpose_33/conv2d_transposeConv2DBackpropInput0sequential_22/conv2d_transpose_33/stack:output:0Isequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp:value:0Lsequential_22/up_sampling2d_22/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
�
8sequential_22/conv2d_transpose_33/BiasAdd/ReadVariableOpReadVariableOpAsequential_22_conv2d_transpose_33_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
)sequential_22/conv2d_transpose_33/BiasAddBiasAdd;sequential_22/conv2d_transpose_33/conv2d_transpose:output:0@sequential_22/conv2d_transpose_33/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� �
3sequential_22/batch_normalization_45/ReadVariableOpReadVariableOp<sequential_22_batch_normalization_45_readvariableop_resource*
_output_shapes
: *
dtype0�
5sequential_22/batch_normalization_45/ReadVariableOp_1ReadVariableOp>sequential_22_batch_normalization_45_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Dsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_22_batch_normalization_45_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Fsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_22_batch_normalization_45_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
5sequential_22/batch_normalization_45/FusedBatchNormV3FusedBatchNormV32sequential_22/conv2d_transpose_33/BiasAdd:output:0;sequential_22/batch_normalization_45/ReadVariableOp:value:0=sequential_22/batch_normalization_45/ReadVariableOp_1:value:0Lsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:��������� : : : : :*
epsilon%o�:*
is_training( �
 sequential_22/activation_45/ReluRelu9sequential_22/batch_normalization_45/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:��������� u
$sequential_22/up_sampling2d_23/ConstConst*
_output_shapes
:*
dtype0*
valueB"      w
&sequential_22/up_sampling2d_23/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      �
"sequential_22/up_sampling2d_23/mulMul-sequential_22/up_sampling2d_23/Const:output:0/sequential_22/up_sampling2d_23/Const_1:output:0*
T0*
_output_shapes
:�
;sequential_22/up_sampling2d_23/resize/ResizeNearestNeighborResizeNearestNeighbor.sequential_22/activation_45/Relu:activations:0&sequential_22/up_sampling2d_23/mul:z:0*
T0*/
_output_shapes
:��������� *
half_pixel_centers(�
'sequential_22/conv2d_transpose_34/ShapeShapeLsequential_22/up_sampling2d_23/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
::��
5sequential_22/conv2d_transpose_34/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_22/conv2d_transpose_34/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_22/conv2d_transpose_34/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_22/conv2d_transpose_34/strided_sliceStridedSlice0sequential_22/conv2d_transpose_34/Shape:output:0>sequential_22/conv2d_transpose_34/strided_slice/stack:output:0@sequential_22/conv2d_transpose_34/strided_slice/stack_1:output:0@sequential_22/conv2d_transpose_34/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_22/conv2d_transpose_34/stack/1Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_22/conv2d_transpose_34/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_22/conv2d_transpose_34/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_22/conv2d_transpose_34/stackPack8sequential_22/conv2d_transpose_34/strided_slice:output:02sequential_22/conv2d_transpose_34/stack/1:output:02sequential_22/conv2d_transpose_34/stack/2:output:02sequential_22/conv2d_transpose_34/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_22/conv2d_transpose_34/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_22/conv2d_transpose_34/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_22/conv2d_transpose_34/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_22/conv2d_transpose_34/strided_slice_1StridedSlice0sequential_22/conv2d_transpose_34/stack:output:0@sequential_22/conv2d_transpose_34/strided_slice_1/stack:output:0Bsequential_22/conv2d_transpose_34/strided_slice_1/stack_1:output:0Bsequential_22/conv2d_transpose_34/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_22_conv2d_transpose_34_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype0�
2sequential_22/conv2d_transpose_34/conv2d_transposeConv2DBackpropInput0sequential_22/conv2d_transpose_34/stack:output:0Isequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp:value:0Lsequential_22/up_sampling2d_23/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
8sequential_22/conv2d_transpose_34/BiasAdd/ReadVariableOpReadVariableOpAsequential_22_conv2d_transpose_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_22/conv2d_transpose_34/BiasAddBiasAdd;sequential_22/conv2d_transpose_34/conv2d_transpose:output:0@sequential_22/conv2d_transpose_34/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
3sequential_22/batch_normalization_46/ReadVariableOpReadVariableOp<sequential_22_batch_normalization_46_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_22/batch_normalization_46/ReadVariableOp_1ReadVariableOp>sequential_22_batch_normalization_46_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Dsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_22_batch_normalization_46_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Fsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_22_batch_normalization_46_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
5sequential_22/batch_normalization_46/FusedBatchNormV3FusedBatchNormV32sequential_22/conv2d_transpose_34/BiasAdd:output:0;sequential_22/batch_normalization_46/ReadVariableOp:value:0=sequential_22/batch_normalization_46/ReadVariableOp_1:value:0Lsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( �
 sequential_22/activation_46/ReluRelu9sequential_22/batch_normalization_46/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:����������
'sequential_22/conv2d_transpose_35/ShapeShape.sequential_22/activation_46/Relu:activations:0*
T0*
_output_shapes
::��
5sequential_22/conv2d_transpose_35/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7sequential_22/conv2d_transpose_35/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7sequential_22/conv2d_transpose_35/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/sequential_22/conv2d_transpose_35/strided_sliceStridedSlice0sequential_22/conv2d_transpose_35/Shape:output:0>sequential_22/conv2d_transpose_35/strided_slice/stack:output:0@sequential_22/conv2d_transpose_35/strided_slice/stack_1:output:0@sequential_22/conv2d_transpose_35/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
)sequential_22/conv2d_transpose_35/stack/1Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_22/conv2d_transpose_35/stack/2Const*
_output_shapes
: *
dtype0*
value	B :k
)sequential_22/conv2d_transpose_35/stack/3Const*
_output_shapes
: *
dtype0*
value	B :�
'sequential_22/conv2d_transpose_35/stackPack8sequential_22/conv2d_transpose_35/strided_slice:output:02sequential_22/conv2d_transpose_35/stack/1:output:02sequential_22/conv2d_transpose_35/stack/2:output:02sequential_22/conv2d_transpose_35/stack/3:output:0*
N*
T0*
_output_shapes
:�
7sequential_22/conv2d_transpose_35/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9sequential_22/conv2d_transpose_35/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9sequential_22/conv2d_transpose_35/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1sequential_22/conv2d_transpose_35/strided_slice_1StridedSlice0sequential_22/conv2d_transpose_35/stack:output:0@sequential_22/conv2d_transpose_35/strided_slice_1/stack:output:0Bsequential_22/conv2d_transpose_35/strided_slice_1/stack_1:output:0Bsequential_22/conv2d_transpose_35/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Asequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOpReadVariableOpJsequential_22_conv2d_transpose_35_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0�
2sequential_22/conv2d_transpose_35/conv2d_transposeConv2DBackpropInput0sequential_22/conv2d_transpose_35/stack:output:0Isequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp:value:0.sequential_22/activation_46/Relu:activations:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
8sequential_22/conv2d_transpose_35/BiasAdd/ReadVariableOpReadVariableOpAsequential_22_conv2d_transpose_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
)sequential_22/conv2d_transpose_35/BiasAddBiasAdd;sequential_22/conv2d_transpose_35/conv2d_transpose:output:0@sequential_22/conv2d_transpose_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
3sequential_22/batch_normalization_47/ReadVariableOpReadVariableOp<sequential_22_batch_normalization_47_readvariableop_resource*
_output_shapes
:*
dtype0�
5sequential_22/batch_normalization_47/ReadVariableOp_1ReadVariableOp>sequential_22_batch_normalization_47_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Dsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOpReadVariableOpMsequential_22_batch_normalization_47_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0�
Fsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpOsequential_22_batch_normalization_47_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0�
5sequential_22/batch_normalization_47/FusedBatchNormV3FusedBatchNormV32sequential_22/conv2d_transpose_35/BiasAdd:output:0;sequential_22/batch_normalization_47/ReadVariableOp:value:0=sequential_22/batch_normalization_47/ReadVariableOp_1:value:0Lsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp:value:0Nsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������:::::*
epsilon%o�:*
is_training( �
 sequential_22/activation_47/ReluRelu9sequential_22/batch_normalization_47/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:����������
-sequential_22/conv2d_55/Conv2D/ReadVariableOpReadVariableOp6sequential_22_conv2d_55_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0�
sequential_22/conv2d_55/Conv2DConv2D.sequential_22/activation_47/Relu:activations:05sequential_22/conv2d_55/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
�
.sequential_22/conv2d_55/BiasAdd/ReadVariableOpReadVariableOp7sequential_22_conv2d_55_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_22/conv2d_55/BiasAddBiasAdd'sequential_22/conv2d_55/Conv2D:output:06sequential_22/conv2d_55/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:����������
sequential_22/conv2d_55/SigmoidSigmoid(sequential_22/conv2d_55/BiasAdd:output:0*
T0*/
_output_shapes
:���������z
IdentityIdentity#sequential_22/conv2d_55/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:����������
NoOpNoOp>^sequential_22/batch_normalization_44/batchnorm/ReadVariableOp@^sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_1@^sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_2B^sequential_22/batch_normalization_44/batchnorm/mul/ReadVariableOpE^sequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOpG^sequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp_14^sequential_22/batch_normalization_45/ReadVariableOp6^sequential_22/batch_normalization_45/ReadVariableOp_1E^sequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOpG^sequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp_14^sequential_22/batch_normalization_46/ReadVariableOp6^sequential_22/batch_normalization_46/ReadVariableOp_1E^sequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOpG^sequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_14^sequential_22/batch_normalization_47/ReadVariableOp6^sequential_22/batch_normalization_47/ReadVariableOp_1/^sequential_22/conv2d_55/BiasAdd/ReadVariableOp.^sequential_22/conv2d_55/Conv2D/ReadVariableOp9^sequential_22/conv2d_transpose_33/BiasAdd/ReadVariableOpB^sequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp9^sequential_22/conv2d_transpose_34/BiasAdd/ReadVariableOpB^sequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp9^sequential_22/conv2d_transpose_35/BiasAdd/ReadVariableOpB^sequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp.^sequential_22/dense_22/BiasAdd/ReadVariableOp-^sequential_22/dense_22/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:���������d: : : : : : : : : : : : : : : : : : : : : : : : : : 2�
?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_1?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_12�
?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_2?sequential_22/batch_normalization_44/batchnorm/ReadVariableOp_22~
=sequential_22/batch_normalization_44/batchnorm/ReadVariableOp=sequential_22/batch_normalization_44/batchnorm/ReadVariableOp2�
Asequential_22/batch_normalization_44/batchnorm/mul/ReadVariableOpAsequential_22/batch_normalization_44/batchnorm/mul/ReadVariableOp2�
Fsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp_1Fsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOpDsequential_22/batch_normalization_45/FusedBatchNormV3/ReadVariableOp2n
5sequential_22/batch_normalization_45/ReadVariableOp_15sequential_22/batch_normalization_45/ReadVariableOp_12j
3sequential_22/batch_normalization_45/ReadVariableOp3sequential_22/batch_normalization_45/ReadVariableOp2�
Fsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp_1Fsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOpDsequential_22/batch_normalization_46/FusedBatchNormV3/ReadVariableOp2n
5sequential_22/batch_normalization_46/ReadVariableOp_15sequential_22/batch_normalization_46/ReadVariableOp_12j
3sequential_22/batch_normalization_46/ReadVariableOp3sequential_22/batch_normalization_46/ReadVariableOp2�
Fsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_1Fsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp_12�
Dsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOpDsequential_22/batch_normalization_47/FusedBatchNormV3/ReadVariableOp2n
5sequential_22/batch_normalization_47/ReadVariableOp_15sequential_22/batch_normalization_47/ReadVariableOp_12j
3sequential_22/batch_normalization_47/ReadVariableOp3sequential_22/batch_normalization_47/ReadVariableOp2`
.sequential_22/conv2d_55/BiasAdd/ReadVariableOp.sequential_22/conv2d_55/BiasAdd/ReadVariableOp2^
-sequential_22/conv2d_55/Conv2D/ReadVariableOp-sequential_22/conv2d_55/Conv2D/ReadVariableOp2t
8sequential_22/conv2d_transpose_33/BiasAdd/ReadVariableOp8sequential_22/conv2d_transpose_33/BiasAdd/ReadVariableOp2�
Asequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOpAsequential_22/conv2d_transpose_33/conv2d_transpose/ReadVariableOp2t
8sequential_22/conv2d_transpose_34/BiasAdd/ReadVariableOp8sequential_22/conv2d_transpose_34/BiasAdd/ReadVariableOp2�
Asequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOpAsequential_22/conv2d_transpose_34/conv2d_transpose/ReadVariableOp2t
8sequential_22/conv2d_transpose_35/BiasAdd/ReadVariableOp8sequential_22/conv2d_transpose_35/BiasAdd/ReadVariableOp2�
Asequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOpAsequential_22/conv2d_transpose_35/conv2d_transpose/ReadVariableOp2^
-sequential_22/dense_22/BiasAdd/ReadVariableOp-sequential_22/dense_22/BiasAdd/ReadVariableOp2\
,sequential_22/dense_22/MatMul/ReadVariableOp,sequential_22/dense_22/MatMul/ReadVariableOp:($
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
resource:Q M
'
_output_shapes
:���������d
"
_user_specified_name
input_34"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
3
input_34'
serve_input_34:0���������dD
output_08
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
=
input_341
serving_default_input_34:0���������dF
output_0:
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�
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
�
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
$25"
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
X
0
1
2
3
4
5
!6
"7"
trackable_list_wrapper
�
0
1
2
3
4
5
 6
7
8
9
$10
11
12
13
14
15
16
#17
18
19
"20
21
22
23
24
!25"
trackable_list_wrapper
 "
trackable_list_wrapper
�
%trace_02�
__inference___call___1466642�
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
annotations� *'�$
"�
input_34���������dz%trace_0
7
	&serve
'serving_default"
signature_map
 "
trackable_list_wrapper
": 	d�2dense_22/kernel
:�2dense_22/bias
+:)�2batch_normalization_44/gamma
*:(�2batch_normalization_44/beta
3:1� (2"batch_normalization_44/moving_mean
7:5� (2&batch_normalization_44/moving_variance
4:2 @2conv2d_transpose_33/kernel
&:$ 2conv2d_transpose_33/bias
*:( 2batch_normalization_45/gamma
):' 2batch_normalization_45/beta
2:0  (2"batch_normalization_45/moving_mean
6:4  (2&batch_normalization_45/moving_variance
4:2 2conv2d_transpose_34/kernel
&:$2conv2d_transpose_34/bias
*:(2batch_normalization_46/gamma
):'2batch_normalization_46/beta
2:0 (2"batch_normalization_46/moving_mean
6:4 (2&batch_normalization_46/moving_variance
4:22conv2d_transpose_35/kernel
&:$2conv2d_transpose_35/bias
*:(2batch_normalization_47/gamma
):'2batch_normalization_47/beta
2:0 (2"batch_normalization_47/moving_mean
6:4 (2&batch_normalization_47/moving_variance
*:(2conv2d_55/kernel
:2conv2d_55/bias
�B�
__inference___call___1466642input_34"�
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
annotations� *'�$
"�
input_34���������d
�B�
.__inference_signature_wrapper___call___1466700input_34"�
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
.__inference_signature_wrapper___call___1466757input_34"�
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
 �
__inference___call___1466642z !"#$1�.
'�$
"�
input_34���������d
� ")�&
unknown����������
.__inference_signature_wrapper___call___1466700� !"#$=�:
� 
3�0
.
input_34"�
input_34���������d";�8
6
output_0*�'
output_0����������
.__inference_signature_wrapper___call___1466757� !"#$=�:
� 
3�0
.
input_34"�
input_34���������d";�8
6
output_0*�'
output_0���������