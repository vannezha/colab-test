
¹
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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

DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ú
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
2"
Utype:
2"
epsilonfloat%·Ñ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu6
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758Æ¦
|
conv1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1/kernel
u
 conv1/kernel/Read/ReadVariableOpReadVariableOpconv1/kernel*&
_output_shapes
: *
dtype0
t
conv1_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1_bn/gamma
m
"conv1_bn/gamma/Read/ReadVariableOpReadVariableOpconv1_bn/gamma*
_output_shapes
: *
dtype0
r
conv1_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1_bn/beta
k
!conv1_bn/beta/Read/ReadVariableOpReadVariableOpconv1_bn/beta*
_output_shapes
: *
dtype0

conv1_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameconv1_bn/moving_mean
y
(conv1_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv1_bn/moving_mean*
_output_shapes
: *
dtype0

conv1_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv1_bn/moving_variance

,conv1_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv1_bn/moving_variance*
_output_shapes
: *
dtype0

conv_dw_1/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv_dw_1/depthwise_kernel

.conv_dw_1/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_1/depthwise_kernel*&
_output_shapes
: *
dtype0
|
conv_dw_1_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameconv_dw_1_bn/gamma
u
&conv_dw_1_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/gamma*
_output_shapes
: *
dtype0
z
conv_dw_1_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv_dw_1_bn/beta
s
%conv_dw_1_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/beta*
_output_shapes
: *
dtype0

conv_dw_1_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv_dw_1_bn/moving_mean

,conv_dw_1_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/moving_mean*
_output_shapes
: *
dtype0

conv_dw_1_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameconv_dw_1_bn/moving_variance

0conv_dw_1_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_1_bn/moving_variance*
_output_shapes
: *
dtype0

conv_pw_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv_pw_1/kernel
}
$conv_pw_1/kernel/Read/ReadVariableOpReadVariableOpconv_pw_1/kernel*&
_output_shapes
: @*
dtype0
|
conv_pw_1_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameconv_pw_1_bn/gamma
u
&conv_pw_1_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/gamma*
_output_shapes
:@*
dtype0
z
conv_pw_1_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv_pw_1_bn/beta
s
%conv_pw_1_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/beta*
_output_shapes
:@*
dtype0

conv_pw_1_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv_pw_1_bn/moving_mean

,conv_pw_1_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/moving_mean*
_output_shapes
:@*
dtype0

conv_pw_1_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameconv_pw_1_bn/moving_variance

0conv_pw_1_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_1_bn/moving_variance*
_output_shapes
:@*
dtype0

conv_dw_2/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameconv_dw_2/depthwise_kernel

.conv_dw_2/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_2/depthwise_kernel*&
_output_shapes
:@*
dtype0
|
conv_dw_2_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameconv_dw_2_bn/gamma
u
&conv_dw_2_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/gamma*
_output_shapes
:@*
dtype0
z
conv_dw_2_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameconv_dw_2_bn/beta
s
%conv_dw_2_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/beta*
_output_shapes
:@*
dtype0

conv_dw_2_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv_dw_2_bn/moving_mean

,conv_dw_2_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/moving_mean*
_output_shapes
:@*
dtype0

conv_dw_2_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameconv_dw_2_bn/moving_variance

0conv_dw_2_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_2_bn/moving_variance*
_output_shapes
:@*
dtype0

conv_pw_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv_pw_2/kernel
~
$conv_pw_2/kernel/Read/ReadVariableOpReadVariableOpconv_pw_2/kernel*'
_output_shapes
:@*
dtype0
}
conv_pw_2_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_pw_2_bn/gamma
v
&conv_pw_2_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/gamma*
_output_shapes	
:*
dtype0
{
conv_pw_2_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv_pw_2_bn/beta
t
%conv_pw_2_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/beta*
_output_shapes	
:*
dtype0

conv_pw_2_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv_pw_2_bn/moving_mean

,conv_pw_2_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/moving_mean*
_output_shapes	
:*
dtype0

conv_pw_2_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameconv_pw_2_bn/moving_variance

0conv_pw_2_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_2_bn/moving_variance*
_output_shapes	
:*
dtype0

conv_dw_3/depthwise_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameconv_dw_3/depthwise_kernel

.conv_dw_3/depthwise_kernel/Read/ReadVariableOpReadVariableOpconv_dw_3/depthwise_kernel*'
_output_shapes
:*
dtype0
}
conv_dw_3_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_dw_3_bn/gamma
v
&conv_dw_3_bn/gamma/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/gamma*
_output_shapes	
:*
dtype0
{
conv_dw_3_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv_dw_3_bn/beta
t
%conv_dw_3_bn/beta/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/beta*
_output_shapes	
:*
dtype0

conv_dw_3_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv_dw_3_bn/moving_mean

,conv_dw_3_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/moving_mean*
_output_shapes	
:*
dtype0

conv_dw_3_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameconv_dw_3_bn/moving_variance

0conv_dw_3_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_dw_3_bn/moving_variance*
_output_shapes	
:*
dtype0

conv_pw_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv_pw_3/kernel

$conv_pw_3/kernel/Read/ReadVariableOpReadVariableOpconv_pw_3/kernel*(
_output_shapes
:*
dtype0
}
conv_pw_3_bn/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameconv_pw_3_bn/gamma
v
&conv_pw_3_bn/gamma/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/gamma*
_output_shapes	
:*
dtype0
{
conv_pw_3_bn/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameconv_pw_3_bn/beta
t
%conv_pw_3_bn/beta/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/beta*
_output_shapes	
:*
dtype0

conv_pw_3_bn/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv_pw_3_bn/moving_mean

,conv_pw_3_bn/moving_mean/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/moving_mean*
_output_shapes	
:*
dtype0

conv_pw_3_bn/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameconv_pw_3_bn/moving_variance

0conv_pw_3_bn/moving_variance/Read/ReadVariableOpReadVariableOpconv_pw_3_bn/moving_variance*
_output_shapes	
:*
dtype0
|
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À* 
shared_namedense_62/kernel
u
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel* 
_output_shapes
:
À*
dtype0
r
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_62/bias
k
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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

Adam/conv1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/conv1/kernel/m

'Adam/conv1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv1_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv1_bn/gamma/m
{
)Adam/conv1_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/conv1_bn/gamma/m*
_output_shapes
: *
dtype0

Adam/conv1_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1_bn/beta/m
y
(Adam/conv1_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/conv1_bn/beta/m*
_output_shapes
: *
dtype0
¦
!Adam/conv_dw_1/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv_dw_1/depthwise_kernel/m

5Adam/conv_dw_1/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv_dw_1/depthwise_kernel/m*&
_output_shapes
: *
dtype0

Adam/conv_dw_1_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv_dw_1_bn/gamma/m

-Adam/conv_dw_1_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/conv_dw_1_bn/gamma/m*
_output_shapes
: *
dtype0

Adam/conv_dw_1_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv_dw_1_bn/beta/m

,Adam/conv_dw_1_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/conv_dw_1_bn/beta/m*
_output_shapes
: *
dtype0

Adam/conv_pw_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv_pw_1/kernel/m

+Adam/conv_pw_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_1/kernel/m*&
_output_shapes
: @*
dtype0

Adam/conv_pw_1_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/conv_pw_1_bn/gamma/m

-Adam/conv_pw_1_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_1_bn/gamma/m*
_output_shapes
:@*
dtype0

Adam/conv_pw_1_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv_pw_1_bn/beta/m

,Adam/conv_pw_1_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_1_bn/beta/m*
_output_shapes
:@*
dtype0
¦
!Adam/conv_dw_2/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/conv_dw_2/depthwise_kernel/m

5Adam/conv_dw_2/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv_dw_2/depthwise_kernel/m*&
_output_shapes
:@*
dtype0

Adam/conv_dw_2_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/conv_dw_2_bn/gamma/m

-Adam/conv_dw_2_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/conv_dw_2_bn/gamma/m*
_output_shapes
:@*
dtype0

Adam/conv_dw_2_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv_dw_2_bn/beta/m

,Adam/conv_dw_2_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/conv_dw_2_bn/beta/m*
_output_shapes
:@*
dtype0

Adam/conv_pw_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv_pw_2/kernel/m

+Adam/conv_pw_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_2/kernel/m*'
_output_shapes
:@*
dtype0

Adam/conv_pw_2_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_pw_2_bn/gamma/m

-Adam/conv_pw_2_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_2_bn/gamma/m*
_output_shapes	
:*
dtype0

Adam/conv_pw_2_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_pw_2_bn/beta/m

,Adam/conv_pw_2_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_2_bn/beta/m*
_output_shapes	
:*
dtype0
§
!Adam/conv_dw_3/depthwise_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv_dw_3/depthwise_kernel/m
 
5Adam/conv_dw_3/depthwise_kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv_dw_3/depthwise_kernel/m*'
_output_shapes
:*
dtype0

Adam/conv_dw_3_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_dw_3_bn/gamma/m

-Adam/conv_dw_3_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/conv_dw_3_bn/gamma/m*
_output_shapes	
:*
dtype0

Adam/conv_dw_3_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_dw_3_bn/beta/m

,Adam/conv_dw_3_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/conv_dw_3_bn/beta/m*
_output_shapes	
:*
dtype0

Adam/conv_pw_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_pw_3/kernel/m

+Adam/conv_pw_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_3/kernel/m*(
_output_shapes
:*
dtype0

Adam/conv_pw_3_bn/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_pw_3_bn/gamma/m

-Adam/conv_pw_3_bn/gamma/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_3_bn/gamma/m*
_output_shapes	
:*
dtype0

Adam/conv_pw_3_bn/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_pw_3_bn/beta/m

,Adam/conv_pw_3_bn/beta/m/Read/ReadVariableOpReadVariableOpAdam/conv_pw_3_bn/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_62/kernel/m

*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m* 
_output_shapes
:
À*
dtype0

Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/m
y
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes
:*
dtype0

Adam/conv1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/conv1/kernel/v

'Adam/conv1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv1_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv1_bn/gamma/v
{
)Adam/conv1_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/conv1_bn/gamma/v*
_output_shapes
: *
dtype0

Adam/conv1_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1_bn/beta/v
y
(Adam/conv1_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/conv1_bn/beta/v*
_output_shapes
: *
dtype0
¦
!Adam/conv_dw_1/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adam/conv_dw_1/depthwise_kernel/v

5Adam/conv_dw_1/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv_dw_1/depthwise_kernel/v*&
_output_shapes
: *
dtype0

Adam/conv_dw_1_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/conv_dw_1_bn/gamma/v

-Adam/conv_dw_1_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/conv_dw_1_bn/gamma/v*
_output_shapes
: *
dtype0

Adam/conv_dw_1_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv_dw_1_bn/beta/v

,Adam/conv_dw_1_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/conv_dw_1_bn/beta/v*
_output_shapes
: *
dtype0

Adam/conv_pw_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv_pw_1/kernel/v

+Adam/conv_pw_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_1/kernel/v*&
_output_shapes
: @*
dtype0

Adam/conv_pw_1_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/conv_pw_1_bn/gamma/v

-Adam/conv_pw_1_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_1_bn/gamma/v*
_output_shapes
:@*
dtype0

Adam/conv_pw_1_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv_pw_1_bn/beta/v

,Adam/conv_pw_1_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_1_bn/beta/v*
_output_shapes
:@*
dtype0
¦
!Adam/conv_dw_2/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/conv_dw_2/depthwise_kernel/v

5Adam/conv_dw_2/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv_dw_2/depthwise_kernel/v*&
_output_shapes
:@*
dtype0

Adam/conv_dw_2_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/conv_dw_2_bn/gamma/v

-Adam/conv_dw_2_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/conv_dw_2_bn/gamma/v*
_output_shapes
:@*
dtype0

Adam/conv_dw_2_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameAdam/conv_dw_2_bn/beta/v

,Adam/conv_dw_2_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/conv_dw_2_bn/beta/v*
_output_shapes
:@*
dtype0

Adam/conv_pw_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv_pw_2/kernel/v

+Adam/conv_pw_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_2/kernel/v*'
_output_shapes
:@*
dtype0

Adam/conv_pw_2_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_pw_2_bn/gamma/v

-Adam/conv_pw_2_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_2_bn/gamma/v*
_output_shapes	
:*
dtype0

Adam/conv_pw_2_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_pw_2_bn/beta/v

,Adam/conv_pw_2_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_2_bn/beta/v*
_output_shapes	
:*
dtype0
§
!Adam/conv_dw_3/depthwise_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/conv_dw_3/depthwise_kernel/v
 
5Adam/conv_dw_3/depthwise_kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv_dw_3/depthwise_kernel/v*'
_output_shapes
:*
dtype0

Adam/conv_dw_3_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_dw_3_bn/gamma/v

-Adam/conv_dw_3_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/conv_dw_3_bn/gamma/v*
_output_shapes	
:*
dtype0

Adam/conv_dw_3_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_dw_3_bn/beta/v

,Adam/conv_dw_3_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/conv_dw_3_bn/beta/v*
_output_shapes	
:*
dtype0

Adam/conv_pw_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv_pw_3/kernel/v

+Adam/conv_pw_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_3/kernel/v*(
_output_shapes
:*
dtype0

Adam/conv_pw_3_bn/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/conv_pw_3_bn/gamma/v

-Adam/conv_pw_3_bn/gamma/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_3_bn/gamma/v*
_output_shapes	
:*
dtype0

Adam/conv_pw_3_bn/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/conv_pw_3_bn/beta/v

,Adam/conv_pw_3_bn/beta/v/Read/ReadVariableOpReadVariableOpAdam/conv_pw_3_bn/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*'
shared_nameAdam/dense_62/kernel/v

*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v* 
_output_shapes
:
À*
dtype0

Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_62/bias/v
y
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ùá
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*á
valueáBá Büà
ì
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
layer_with_weights-12
layer-20
layer_with_weights-13
layer-21
layer-22
layer-23
layer-24
layer-25
layer_with_weights-14
layer-26
	optimizer

signatures
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature*
'
#&_self_saveable_object_factories* 
Á

'kernel
#(_self_saveable_object_factories
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses*
ú
/axis
	0gamma
1beta
2moving_mean
3moving_variance
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*
³
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses* 
Ë
Bdepthwise_kernel
#C_self_saveable_object_factories
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses*
ú
Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance
#O_self_saveable_object_factories
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses*
³
#V_self_saveable_object_factories
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
Á

]kernel
#^_self_saveable_object_factories
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses*
ú
eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance
#j_self_saveable_object_factories
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
³
#q_self_saveable_object_factories
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses* 
³
#x_self_saveable_object_factories
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses* 
Ò
depthwise_kernel
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	axis

gamma
	beta
moving_mean
moving_variance
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
º
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
É
kernel
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+¡&call_and_return_all_conditional_losses*

	¢axis

£gamma
	¤beta
¥moving_mean
¦moving_variance
$§_self_saveable_object_factories
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses*
º
$®_self_saveable_object_factories
¯	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+´&call_and_return_all_conditional_losses* 
Ó
µdepthwise_kernel
$¶_self_saveable_object_factories
·	variables
¸trainable_variables
¹regularization_losses
º	keras_api
»__call__
+¼&call_and_return_all_conditional_losses*

	½axis

¾gamma
	¿beta
Àmoving_mean
Ámoving_variance
$Â_self_saveable_object_factories
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses*
º
$É_self_saveable_object_factories
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses* 
É
Ðkernel
$Ñ_self_saveable_object_factories
Ò	variables
Ótrainable_variables
Ôregularization_losses
Õ	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses*

	Øaxis

Ùgamma
	Úbeta
Ûmoving_mean
Ümoving_variance
$Ý_self_saveable_object_factories
Þ	variables
ßtrainable_variables
àregularization_losses
á	keras_api
â__call__
+ã&call_and_return_all_conditional_losses*
º
$ä_self_saveable_object_factories
å	variables
ætrainable_variables
çregularization_losses
è	keras_api
é__call__
+ê&call_and_return_all_conditional_losses* 
º
$ë_self_saveable_object_factories
ì	variables
ítrainable_variables
îregularization_losses
ï	keras_api
ð__call__
+ñ&call_and_return_all_conditional_losses* 
º
$ò_self_saveable_object_factories
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses* 
Ò
$ù_self_saveable_object_factories
ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ_random_generator
ÿ__call__
+&call_and_return_all_conditional_losses* 
Ô
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¯
	iter
beta_1
beta_2

decay
learning_rate'm¢0m£1m¤Bm¥Km¦Lm§]m¨fm©gmªm«	m¬	m­	m®	£m¯	¤m°	µm±	¾m²	¿m³	Ðm´	Ùmµ	Úm¶	m·	m¸'v¹0vº1v»Bv¼Kv½Lv¾]v¿fvÀgvÁvÂ	vÃ	vÄ	vÅ	£vÆ	¤vÇ	µvÈ	¾vÉ	¿vÊ	ÐvË	ÙvÌ	ÚvÍ	vÎ	vÏ*

serving_default* 
* 
·
'0
01
12
23
34
B5
K6
L7
M8
N9
]10
f11
g12
h13
i14
15
16
17
18
19
20
£21
¤22
¥23
¦24
µ25
¾26
¿27
À28
Á29
Ð30
Ù31
Ú32
Û33
Ü34
35
36*
¿
'0
01
12
B3
K4
L5
]6
f7
g8
9
10
11
12
£13
¤14
µ15
¾16
¿17
Ð18
Ù19
Ú20
21
22*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*
* 
* 
* 
* 
\V
VARIABLE_VALUEconv1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

'0*

'0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*
* 
* 
* 
]W
VARIABLE_VALUEconv1_bn/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1_bn/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEconv1_bn/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEconv1_bn/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
00
11
22
33*

00
11*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 
* 
* 
tn
VARIABLE_VALUEconv_dw_1/depthwise_kernel@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

B0*

B0*
* 

¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*
* 
* 
* 
a[
VARIABLE_VALUEconv_dw_1_bn/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEconv_dw_1_bn/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEconv_dw_1_bn/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEconv_dw_1_bn/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
K0
L1
M2
N3*

K0
L1*
* 

©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv_pw_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

]0*

]0*
* 

³non_trainable_variables
´layers
µmetrics
 ¶layer_regularization_losses
·layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*
* 
* 
* 
a[
VARIABLE_VALUEconv_pw_1_bn/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEconv_pw_1_bn/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEconv_pw_1_bn/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEconv_pw_1_bn/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
f0
g1
h2
i3*

f0
g1*
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses* 
* 
* 
tn
VARIABLE_VALUEconv_dw_2/depthwise_kernel@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

0*
* 

Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
a[
VARIABLE_VALUEconv_dw_2_bn/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEconv_dw_2_bn/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEconv_dw_2_bn/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEconv_dw_2_bn/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

Ìnon_trainable_variables
Ílayers
Îmetrics
 Ïlayer_regularization_losses
Ðlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEconv_pw_2/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

0*

0*
* 

Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses*
* 
* 
* 
a[
VARIABLE_VALUEconv_pw_2_bn/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEconv_pw_2_bn/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEconv_pw_2_bn/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUEconv_pw_2_bn/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
£0
¤1
¥2
¦3*

£0
¤1*
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
¯	variables
°trainable_variables
±regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses* 
* 
* 
uo
VARIABLE_VALUEconv_dw_3/depthwise_kernelAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

µ0*

µ0*
* 

ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
·	variables
¸trainable_variables
¹regularization_losses
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses*
* 
* 
* 
b\
VARIABLE_VALUEconv_dw_3_bn/gamma6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEconv_dw_3_bn/beta5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEconv_dw_3_bn/moving_mean<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEconv_dw_3_bn/moving_variance@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
¾0
¿1
À2
Á3*

¾0
¿1*
* 

ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv_pw_3/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ð0*

Ð0*
* 

ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
Ò	variables
Ótrainable_variables
Ôregularization_losses
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses*
* 
* 
* 
b\
VARIABLE_VALUEconv_pw_3_bn/gamma6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEconv_pw_3_bn/beta5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUEconv_pw_3_bn/moving_mean<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEconv_pw_3_bn/moving_variance@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
Ù0
Ú1
Û2
Ü3*

Ù0
Ú1*
* 

ùnon_trainable_variables
úlayers
ûmetrics
 ülayer_regularization_losses
ýlayer_metrics
Þ	variables
ßtrainable_variables
àregularization_losses
â__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 

þnon_trainable_variables
ÿlayers
metrics
 layer_regularization_losses
layer_metrics
å	variables
ætrainable_variables
çregularization_losses
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ì	variables
ítrainable_variables
îregularization_losses
ð__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ó	variables
ôtrainable_variables
õregularization_losses
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
ÿ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
`Z
VARIABLE_VALUEdense_62/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_62/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
r
20
31
M2
N3
h4
i5
6
7
¥8
¦9
À10
Á11
Û12
Ü13*
Ò
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26*

0
1*
* 
* 
* 
* 
* 
* 
* 

20
31*
* 
* 
* 
* 
* 
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

h0
i1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

¥0
¦1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

À0
Á1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

Û0
Ü1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
 	variables
¡	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

 	variables*
y
VARIABLE_VALUEAdam/conv1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1_bn/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1_bn/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv_dw_1/depthwise_kernel/m\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_dw_1_bn/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_dw_1_bn/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_pw_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_pw_1_bn/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_pw_1_bn/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv_dw_2/depthwise_kernel/m\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_dw_2_bn/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_dw_2_bn/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_pw_2/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_pw_2_bn/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_pw_2_bn/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv_dw_3/depthwise_kernel/m]layer_with_weights-10/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv_dw_3_bn/gamma/mRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_dw_3_bn/beta/mQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_pw_3/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv_pw_3_bn/gamma/mRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_pw_3_bn/beta/mQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_62/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_62/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv1_bn/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv1_bn/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv_dw_1/depthwise_kernel/v\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_dw_1_bn/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_dw_1_bn/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_pw_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_pw_1_bn/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_pw_1_bn/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv_dw_2/depthwise_kernel/v\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_dw_2_bn/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_dw_2_bn/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_pw_2/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_pw_2_bn/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv_pw_2_bn/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/conv_dw_3/depthwise_kernel/v]layer_with_weights-10/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv_dw_3_bn/gamma/vRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_dw_3_bn/beta/vQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv_pw_3/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/conv_pw_3_bn/gamma/vRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/conv_pw_3_bn/beta/vQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_62/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_62/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¯
serving_default_input_21Placeholder*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*6
shape-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Á	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_21conv1/kernelconv1_bn/gammaconv1_bn/betaconv1_bn/moving_meanconv1_bn/moving_varianceconv_dw_1/depthwise_kernelconv_dw_1_bn/gammaconv_dw_1_bn/betaconv_dw_1_bn/moving_meanconv_dw_1_bn/moving_varianceconv_pw_1/kernelconv_pw_1_bn/gammaconv_pw_1_bn/betaconv_pw_1_bn/moving_meanconv_pw_1_bn/moving_varianceconv_dw_2/depthwise_kernelconv_dw_2_bn/gammaconv_dw_2_bn/betaconv_dw_2_bn/moving_meanconv_dw_2_bn/moving_varianceconv_pw_2/kernelconv_pw_2_bn/gammaconv_pw_2_bn/betaconv_pw_2_bn/moving_meanconv_pw_2_bn/moving_varianceconv_dw_3/depthwise_kernelconv_dw_3_bn/gammaconv_dw_3_bn/betaconv_dw_3_bn/moving_meanconv_dw_3_bn/moving_varianceconv_pw_3/kernelconv_pw_3_bn/gammaconv_pw_3_bn/betaconv_pw_3_bn/moving_meanconv_pw_3_bn/moving_variancedense_62/kerneldense_62/bias*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*G
_read_only_resource_inputs)
'%	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_962434
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename conv1/kernel/Read/ReadVariableOp"conv1_bn/gamma/Read/ReadVariableOp!conv1_bn/beta/Read/ReadVariableOp(conv1_bn/moving_mean/Read/ReadVariableOp,conv1_bn/moving_variance/Read/ReadVariableOp.conv_dw_1/depthwise_kernel/Read/ReadVariableOp&conv_dw_1_bn/gamma/Read/ReadVariableOp%conv_dw_1_bn/beta/Read/ReadVariableOp,conv_dw_1_bn/moving_mean/Read/ReadVariableOp0conv_dw_1_bn/moving_variance/Read/ReadVariableOp$conv_pw_1/kernel/Read/ReadVariableOp&conv_pw_1_bn/gamma/Read/ReadVariableOp%conv_pw_1_bn/beta/Read/ReadVariableOp,conv_pw_1_bn/moving_mean/Read/ReadVariableOp0conv_pw_1_bn/moving_variance/Read/ReadVariableOp.conv_dw_2/depthwise_kernel/Read/ReadVariableOp&conv_dw_2_bn/gamma/Read/ReadVariableOp%conv_dw_2_bn/beta/Read/ReadVariableOp,conv_dw_2_bn/moving_mean/Read/ReadVariableOp0conv_dw_2_bn/moving_variance/Read/ReadVariableOp$conv_pw_2/kernel/Read/ReadVariableOp&conv_pw_2_bn/gamma/Read/ReadVariableOp%conv_pw_2_bn/beta/Read/ReadVariableOp,conv_pw_2_bn/moving_mean/Read/ReadVariableOp0conv_pw_2_bn/moving_variance/Read/ReadVariableOp.conv_dw_3/depthwise_kernel/Read/ReadVariableOp&conv_dw_3_bn/gamma/Read/ReadVariableOp%conv_dw_3_bn/beta/Read/ReadVariableOp,conv_dw_3_bn/moving_mean/Read/ReadVariableOp0conv_dw_3_bn/moving_variance/Read/ReadVariableOp$conv_pw_3/kernel/Read/ReadVariableOp&conv_pw_3_bn/gamma/Read/ReadVariableOp%conv_pw_3_bn/beta/Read/ReadVariableOp,conv_pw_3_bn/moving_mean/Read/ReadVariableOp0conv_pw_3_bn/moving_variance/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/conv1/kernel/m/Read/ReadVariableOp)Adam/conv1_bn/gamma/m/Read/ReadVariableOp(Adam/conv1_bn/beta/m/Read/ReadVariableOp5Adam/conv_dw_1/depthwise_kernel/m/Read/ReadVariableOp-Adam/conv_dw_1_bn/gamma/m/Read/ReadVariableOp,Adam/conv_dw_1_bn/beta/m/Read/ReadVariableOp+Adam/conv_pw_1/kernel/m/Read/ReadVariableOp-Adam/conv_pw_1_bn/gamma/m/Read/ReadVariableOp,Adam/conv_pw_1_bn/beta/m/Read/ReadVariableOp5Adam/conv_dw_2/depthwise_kernel/m/Read/ReadVariableOp-Adam/conv_dw_2_bn/gamma/m/Read/ReadVariableOp,Adam/conv_dw_2_bn/beta/m/Read/ReadVariableOp+Adam/conv_pw_2/kernel/m/Read/ReadVariableOp-Adam/conv_pw_2_bn/gamma/m/Read/ReadVariableOp,Adam/conv_pw_2_bn/beta/m/Read/ReadVariableOp5Adam/conv_dw_3/depthwise_kernel/m/Read/ReadVariableOp-Adam/conv_dw_3_bn/gamma/m/Read/ReadVariableOp,Adam/conv_dw_3_bn/beta/m/Read/ReadVariableOp+Adam/conv_pw_3/kernel/m/Read/ReadVariableOp-Adam/conv_pw_3_bn/gamma/m/Read/ReadVariableOp,Adam/conv_pw_3_bn/beta/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp'Adam/conv1/kernel/v/Read/ReadVariableOp)Adam/conv1_bn/gamma/v/Read/ReadVariableOp(Adam/conv1_bn/beta/v/Read/ReadVariableOp5Adam/conv_dw_1/depthwise_kernel/v/Read/ReadVariableOp-Adam/conv_dw_1_bn/gamma/v/Read/ReadVariableOp,Adam/conv_dw_1_bn/beta/v/Read/ReadVariableOp+Adam/conv_pw_1/kernel/v/Read/ReadVariableOp-Adam/conv_pw_1_bn/gamma/v/Read/ReadVariableOp,Adam/conv_pw_1_bn/beta/v/Read/ReadVariableOp5Adam/conv_dw_2/depthwise_kernel/v/Read/ReadVariableOp-Adam/conv_dw_2_bn/gamma/v/Read/ReadVariableOp,Adam/conv_dw_2_bn/beta/v/Read/ReadVariableOp+Adam/conv_pw_2/kernel/v/Read/ReadVariableOp-Adam/conv_pw_2_bn/gamma/v/Read/ReadVariableOp,Adam/conv_pw_2_bn/beta/v/Read/ReadVariableOp5Adam/conv_dw_3/depthwise_kernel/v/Read/ReadVariableOp-Adam/conv_dw_3_bn/gamma/v/Read/ReadVariableOp,Adam/conv_dw_3_bn/beta/v/Read/ReadVariableOp+Adam/conv_pw_3/kernel/v/Read/ReadVariableOp-Adam/conv_pw_3_bn/gamma/v/Read/ReadVariableOp,Adam/conv_pw_3_bn/beta/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOpConst*i
Tinb
`2^	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *(
f#R!
__inference__traced_save_963428
ß
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1/kernelconv1_bn/gammaconv1_bn/betaconv1_bn/moving_meanconv1_bn/moving_varianceconv_dw_1/depthwise_kernelconv_dw_1_bn/gammaconv_dw_1_bn/betaconv_dw_1_bn/moving_meanconv_dw_1_bn/moving_varianceconv_pw_1/kernelconv_pw_1_bn/gammaconv_pw_1_bn/betaconv_pw_1_bn/moving_meanconv_pw_1_bn/moving_varianceconv_dw_2/depthwise_kernelconv_dw_2_bn/gammaconv_dw_2_bn/betaconv_dw_2_bn/moving_meanconv_dw_2_bn/moving_varianceconv_pw_2/kernelconv_pw_2_bn/gammaconv_pw_2_bn/betaconv_pw_2_bn/moving_meanconv_pw_2_bn/moving_varianceconv_dw_3/depthwise_kernelconv_dw_3_bn/gammaconv_dw_3_bn/betaconv_dw_3_bn/moving_meanconv_dw_3_bn/moving_varianceconv_pw_3/kernelconv_pw_3_bn/gammaconv_pw_3_bn/betaconv_pw_3_bn/moving_meanconv_pw_3_bn/moving_variancedense_62/kerneldense_62/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1/kernel/mAdam/conv1_bn/gamma/mAdam/conv1_bn/beta/m!Adam/conv_dw_1/depthwise_kernel/mAdam/conv_dw_1_bn/gamma/mAdam/conv_dw_1_bn/beta/mAdam/conv_pw_1/kernel/mAdam/conv_pw_1_bn/gamma/mAdam/conv_pw_1_bn/beta/m!Adam/conv_dw_2/depthwise_kernel/mAdam/conv_dw_2_bn/gamma/mAdam/conv_dw_2_bn/beta/mAdam/conv_pw_2/kernel/mAdam/conv_pw_2_bn/gamma/mAdam/conv_pw_2_bn/beta/m!Adam/conv_dw_3/depthwise_kernel/mAdam/conv_dw_3_bn/gamma/mAdam/conv_dw_3_bn/beta/mAdam/conv_pw_3/kernel/mAdam/conv_pw_3_bn/gamma/mAdam/conv_pw_3_bn/beta/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/conv1/kernel/vAdam/conv1_bn/gamma/vAdam/conv1_bn/beta/v!Adam/conv_dw_1/depthwise_kernel/vAdam/conv_dw_1_bn/gamma/vAdam/conv_dw_1_bn/beta/vAdam/conv_pw_1/kernel/vAdam/conv_pw_1_bn/gamma/vAdam/conv_pw_1_bn/beta/v!Adam/conv_dw_2/depthwise_kernel/vAdam/conv_dw_2_bn/gamma/vAdam/conv_dw_2_bn/beta/vAdam/conv_pw_2/kernel/vAdam/conv_pw_2_bn/gamma/vAdam/conv_pw_2_bn/beta/v!Adam/conv_dw_3/depthwise_kernel/vAdam/conv_dw_3_bn/gamma/vAdam/conv_dw_3_bn/beta/vAdam/conv_pw_3/kernel/vAdam/conv_pw_3_bn/gamma/vAdam/conv_pw_3_bn/beta/vAdam/dense_62/kernel/vAdam/dense_62/bias/v*h
Tina
_2]*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_restore_963714Ä
ï	
½
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_962895

inputs<
!depthwise_readvariableop_resource:
identity¢depthwise/ReadVariableOp
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*'
_output_shapes
:*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Á
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
|
IdentityIdentitydepthwise:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

	
)__inference_model_21_layer_call_fn_961176
input_21!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@%

unknown_19:@

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	%

unknown_24:

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:
À

unknown_35:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_35*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*G
_read_only_resource_inputs)
'%	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_21_layer_call_and_return_conditional_losses_961099o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_21
	
È
-__inference_conv_dw_1_bn_layer_call_fn_962562

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960504
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


*__inference_conv_pw_1_layer_call_fn_962615

inputs!
unknown: @
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_960918
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ó

H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_962851

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê
þ
$__inference_signature_wrapper_962434
input_21!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@%

unknown_19:@

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	%

unknown_24:

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:
À

unknown_35:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_35*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*G
_read_only_resource_inputs)
'%	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8 **
f%R#
!__inference__wrapped_model_960387o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_21
þ
d
+__inference_dropout_45_layer_call_fn_963092

inputs
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_961206q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

b
F__inference_reshape_18_layer_call_and_return_conditional_losses_961064

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :ÀR
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:j
ReshapeReshapeinputsReshape/shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ^
IdentityIdentityReshape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_962666

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ø
Ä
)__inference_conv1_bn_layer_call_fn_962474

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv1_bn_layer_call_and_return_conditional_losses_960440
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

K
/__inference_conv_pw_2_relu_layer_call_fn_962874

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_960993{
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

	
)__inference_model_21_layer_call_fn_961660
input_21!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@%

unknown_19:@

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	%

unknown_24:

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:
À

unknown_35:
identity¢StatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinput_21unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_35*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*9
_read_only_resource_inputs
 !$%*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_21_layer_call_and_return_conditional_losses_961504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_21
é	
¼
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_962536

inputs;
!depthwise_readvariableop_resource: 
identity¢depthwise/ReadVariableOp
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      À
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
{
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ a
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ó

H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960678

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
G
+__inference_flatten_36_layer_call_fn_963076

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_36_layer_call_and_return_conditional_losses_961072b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs


&__inference_conv1_layer_call_fn_962441

inputs!
unknown: 
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_960862
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
·
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_962598

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¿

D__inference_conv1_bn_layer_call_and_return_conditional_losses_960409

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
á
d
F__inference_dropout_45_layer_call_and_return_conditional_losses_961079

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

K
/__inference_conv_pw_1_relu_layer_call_fn_962689

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_960936z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
f
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_961022

inputs
identityc
Relu6Relu6inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
IdentityIdentityRelu6:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

K
/__inference_conv_dw_2_relu_layer_call_fn_962788

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_960966z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ë

)__inference_dense_62_layer_call_fn_963118

inputs
unknown:
À
	unknown_0:
identity¢StatefulPartitionedCallÜ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_961092o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
	
Ì
-__inference_conv_pw_3_bn_layer_call_fn_962994

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960806
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó

H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_962939

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×®
ë
D__inference_model_21_layer_call_and_return_conditional_losses_962189

inputs>
$conv1_conv2d_readvariableop_resource: .
 conv1_bn_readvariableop_resource: 0
"conv1_bn_readvariableop_1_resource: ?
1conv1_bn_fusedbatchnormv3_readvariableop_resource: A
3conv1_bn_fusedbatchnormv3_readvariableop_1_resource: E
+conv_dw_1_depthwise_readvariableop_resource: 2
$conv_dw_1_bn_readvariableop_resource: 4
&conv_dw_1_bn_readvariableop_1_resource: C
5conv_dw_1_bn_fusedbatchnormv3_readvariableop_resource: E
7conv_dw_1_bn_fusedbatchnormv3_readvariableop_1_resource: B
(conv_pw_1_conv2d_readvariableop_resource: @2
$conv_pw_1_bn_readvariableop_resource:@4
&conv_pw_1_bn_readvariableop_1_resource:@C
5conv_pw_1_bn_fusedbatchnormv3_readvariableop_resource:@E
7conv_pw_1_bn_fusedbatchnormv3_readvariableop_1_resource:@E
+conv_dw_2_depthwise_readvariableop_resource:@2
$conv_dw_2_bn_readvariableop_resource:@4
&conv_dw_2_bn_readvariableop_1_resource:@C
5conv_dw_2_bn_fusedbatchnormv3_readvariableop_resource:@E
7conv_dw_2_bn_fusedbatchnormv3_readvariableop_1_resource:@C
(conv_pw_2_conv2d_readvariableop_resource:@3
$conv_pw_2_bn_readvariableop_resource:	5
&conv_pw_2_bn_readvariableop_1_resource:	D
5conv_pw_2_bn_fusedbatchnormv3_readvariableop_resource:	F
7conv_pw_2_bn_fusedbatchnormv3_readvariableop_1_resource:	F
+conv_dw_3_depthwise_readvariableop_resource:3
$conv_dw_3_bn_readvariableop_resource:	5
&conv_dw_3_bn_readvariableop_1_resource:	D
5conv_dw_3_bn_fusedbatchnormv3_readvariableop_resource:	F
7conv_dw_3_bn_fusedbatchnormv3_readvariableop_1_resource:	D
(conv_pw_3_conv2d_readvariableop_resource:3
$conv_pw_3_bn_readvariableop_resource:	5
&conv_pw_3_bn_readvariableop_1_resource:	D
5conv_pw_3_bn_fusedbatchnormv3_readvariableop_resource:	F
7conv_pw_3_bn_fusedbatchnormv3_readvariableop_1_resource:	;
'dense_62_matmul_readvariableop_resource:
À6
(dense_62_biasadd_readvariableop_resource:
identity¢conv1/Conv2D/ReadVariableOp¢(conv1_bn/FusedBatchNormV3/ReadVariableOp¢*conv1_bn/FusedBatchNormV3/ReadVariableOp_1¢conv1_bn/ReadVariableOp¢conv1_bn/ReadVariableOp_1¢"conv_dw_1/depthwise/ReadVariableOp¢,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp¢.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_dw_1_bn/ReadVariableOp¢conv_dw_1_bn/ReadVariableOp_1¢"conv_dw_2/depthwise/ReadVariableOp¢,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp¢.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_dw_2_bn/ReadVariableOp¢conv_dw_2_bn/ReadVariableOp_1¢"conv_dw_3/depthwise/ReadVariableOp¢,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp¢.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_dw_3_bn/ReadVariableOp¢conv_dw_3_bn/ReadVariableOp_1¢conv_pw_1/Conv2D/ReadVariableOp¢,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp¢.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_pw_1_bn/ReadVariableOp¢conv_pw_1_bn/ReadVariableOp_1¢conv_pw_2/Conv2D/ReadVariableOp¢,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp¢.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_pw_2_bn/ReadVariableOp¢conv_pw_2_bn/ReadVariableOp_1¢conv_pw_3/Conv2D/ReadVariableOp¢,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp¢.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_pw_3_bn/ReadVariableOp¢conv_pw_3_bn/ReadVariableOp_1¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0·
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
t
conv1_bn/ReadVariableOpReadVariableOp conv1_bn_readvariableop_resource*
_output_shapes
: *
dtype0x
conv1_bn/ReadVariableOp_1ReadVariableOp"conv1_bn_readvariableop_1_resource*
_output_shapes
: *
dtype0
(conv1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp1conv1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
*conv1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp3conv1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0
conv1_bn/FusedBatchNormV3FusedBatchNormV3conv1/Conv2D:output:0conv1_bn/ReadVariableOp:value:0!conv1_bn/ReadVariableOp_1:value:00conv1_bn/FusedBatchNormV3/ReadVariableOp:value:02conv1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( 
conv1_relu/Relu6Relu6conv1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"conv_dw_1/depthwise/ReadVariableOpReadVariableOp+conv_dw_1_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0r
conv_dw_1/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             r
!conv_dw_1/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ì
conv_dw_1/depthwiseDepthwiseConv2dNativeconv1_relu/Relu6:activations:0*conv_dw_1/depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
|
conv_dw_1_bn/ReadVariableOpReadVariableOp$conv_dw_1_bn_readvariableop_resource*
_output_shapes
: *
dtype0
conv_dw_1_bn/ReadVariableOp_1ReadVariableOp&conv_dw_1_bn_readvariableop_1_resource*
_output_shapes
: *
dtype0
,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_dw_1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¢
.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_dw_1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0
conv_dw_1_bn/FusedBatchNormV3FusedBatchNormV3conv_dw_1/depthwise:output:0#conv_dw_1_bn/ReadVariableOp:value:0%conv_dw_1_bn/ReadVariableOp_1:value:04conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( 
conv_dw_1_relu/Relu6Relu6!conv_dw_1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
conv_pw_1/Conv2D/ReadVariableOpReadVariableOp(conv_pw_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Û
conv_pw_1/Conv2DConv2D"conv_dw_1_relu/Relu6:activations:0'conv_pw_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
|
conv_pw_1_bn/ReadVariableOpReadVariableOp$conv_pw_1_bn_readvariableop_resource*
_output_shapes
:@*
dtype0
conv_pw_1_bn/ReadVariableOp_1ReadVariableOp&conv_pw_1_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype0
,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_pw_1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¢
.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_pw_1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0
conv_pw_1_bn/FusedBatchNormV3FusedBatchNormV3conv_pw_1/Conv2D:output:0#conv_pw_1_bn/ReadVariableOp:value:0%conv_pw_1_bn/ReadVariableOp_1:value:04conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
conv_pw_1_relu/Relu6Relu6!conv_pw_1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
conv_pad_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               §
conv_pad_2/PadPad"conv_pw_1_relu/Relu6:activations:0 conv_pad_2/Pad/paddings:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"conv_dw_2/depthwise/ReadVariableOpReadVariableOp+conv_dw_2_depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0r
conv_dw_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      r
!conv_dw_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      æ
conv_dw_2/depthwiseDepthwiseConv2dNativeconv_pad_2/Pad:output:0*conv_dw_2/depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
|
conv_dw_2_bn/ReadVariableOpReadVariableOp$conv_dw_2_bn_readvariableop_resource*
_output_shapes
:@*
dtype0
conv_dw_2_bn/ReadVariableOp_1ReadVariableOp&conv_dw_2_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype0
,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_dw_2_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¢
.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_dw_2_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0
conv_dw_2_bn/FusedBatchNormV3FusedBatchNormV3conv_dw_2/depthwise:output:0#conv_dw_2_bn/ReadVariableOp:value:0%conv_dw_2_bn/ReadVariableOp_1:value:04conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
conv_dw_2_relu/Relu6Relu6!conv_dw_2_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
conv_pw_2/Conv2D/ReadVariableOpReadVariableOp(conv_pw_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ü
conv_pw_2/Conv2DConv2D"conv_dw_2_relu/Relu6:activations:0'conv_pw_2/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
}
conv_pw_2_bn/ReadVariableOpReadVariableOp$conv_pw_2_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
conv_pw_2_bn/ReadVariableOp_1ReadVariableOp&conv_pw_2_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0
,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_pw_2_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0£
.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_pw_2_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0¡
conv_pw_2_bn/FusedBatchNormV3FusedBatchNormV3conv_pw_2/Conv2D:output:0#conv_pw_2_bn/ReadVariableOp:value:0%conv_pw_2_bn/ReadVariableOp_1:value:04conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
conv_pw_2_relu/Relu6Relu6!conv_pw_2_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"conv_dw_3/depthwise/ReadVariableOpReadVariableOp+conv_dw_3_depthwise_readvariableop_resource*'
_output_shapes
:*
dtype0r
conv_dw_3/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            r
!conv_dw_3/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ñ
conv_dw_3/depthwiseDepthwiseConv2dNative"conv_pw_2_relu/Relu6:activations:0*conv_dw_3/depthwise/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
}
conv_dw_3_bn/ReadVariableOpReadVariableOp$conv_dw_3_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
conv_dw_3_bn/ReadVariableOp_1ReadVariableOp&conv_dw_3_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0
,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_dw_3_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0£
.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_dw_3_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0¤
conv_dw_3_bn/FusedBatchNormV3FusedBatchNormV3conv_dw_3/depthwise:output:0#conv_dw_3_bn/ReadVariableOp:value:0%conv_dw_3_bn/ReadVariableOp_1:value:04conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
conv_dw_3_relu/Relu6Relu6!conv_dw_3_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
conv_pw_3/Conv2D/ReadVariableOpReadVariableOp(conv_pw_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
conv_pw_3/Conv2DConv2D"conv_dw_3_relu/Relu6:activations:0'conv_pw_3/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
}
conv_pw_3_bn/ReadVariableOpReadVariableOp$conv_pw_3_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
conv_pw_3_bn/ReadVariableOp_1ReadVariableOp&conv_pw_3_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0
,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_pw_3_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0£
.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_pw_3_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0¡
conv_pw_3_bn/FusedBatchNormV3FusedBatchNormV3conv_pw_3/Conv2D:output:0#conv_pw_3_bn/ReadVariableOp:value:0%conv_pw_3_bn/ReadVariableOp_1:value:04conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
conv_pw_3_relu/Relu6Relu6!conv_pw_3_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb
reshape_18/ShapeShape"conv_pw_3_relu/Relu6:activations:0*
T0*
_output_shapes
:h
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :À]
reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :»
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0#reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_18/ReshapeReshape"conv_pw_3_relu/Relu6:activations:0!reshape_18/Reshape/shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀa
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_36/ReshapeReshapereshape_18/Reshape:output:0flatten_36/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_45/IdentityIdentityflatten_36/Reshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_62/MatMulMatMuldropout_45/Identity:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_62/SoftmaxSoftmaxdense_62/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_62/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp^conv1/Conv2D/ReadVariableOp)^conv1_bn/FusedBatchNormV3/ReadVariableOp+^conv1_bn/FusedBatchNormV3/ReadVariableOp_1^conv1_bn/ReadVariableOp^conv1_bn/ReadVariableOp_1#^conv_dw_1/depthwise/ReadVariableOp-^conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp/^conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1^conv_dw_1_bn/ReadVariableOp^conv_dw_1_bn/ReadVariableOp_1#^conv_dw_2/depthwise/ReadVariableOp-^conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp/^conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1^conv_dw_2_bn/ReadVariableOp^conv_dw_2_bn/ReadVariableOp_1#^conv_dw_3/depthwise/ReadVariableOp-^conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp/^conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1^conv_dw_3_bn/ReadVariableOp^conv_dw_3_bn/ReadVariableOp_1 ^conv_pw_1/Conv2D/ReadVariableOp-^conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp/^conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1^conv_pw_1_bn/ReadVariableOp^conv_pw_1_bn/ReadVariableOp_1 ^conv_pw_2/Conv2D/ReadVariableOp-^conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp/^conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1^conv_pw_2_bn/ReadVariableOp^conv_pw_2_bn/ReadVariableOp_1 ^conv_pw_3/Conv2D/ReadVariableOp-^conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp/^conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1^conv_pw_3_bn/ReadVariableOp^conv_pw_3_bn/ReadVariableOp_1 ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp2T
(conv1_bn/FusedBatchNormV3/ReadVariableOp(conv1_bn/FusedBatchNormV3/ReadVariableOp2X
*conv1_bn/FusedBatchNormV3/ReadVariableOp_1*conv1_bn/FusedBatchNormV3/ReadVariableOp_122
conv1_bn/ReadVariableOpconv1_bn/ReadVariableOp26
conv1_bn/ReadVariableOp_1conv1_bn/ReadVariableOp_12H
"conv_dw_1/depthwise/ReadVariableOp"conv_dw_1/depthwise/ReadVariableOp2\
,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_dw_1_bn/ReadVariableOpconv_dw_1_bn/ReadVariableOp2>
conv_dw_1_bn/ReadVariableOp_1conv_dw_1_bn/ReadVariableOp_12H
"conv_dw_2/depthwise/ReadVariableOp"conv_dw_2/depthwise/ReadVariableOp2\
,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_dw_2_bn/ReadVariableOpconv_dw_2_bn/ReadVariableOp2>
conv_dw_2_bn/ReadVariableOp_1conv_dw_2_bn/ReadVariableOp_12H
"conv_dw_3/depthwise/ReadVariableOp"conv_dw_3/depthwise/ReadVariableOp2\
,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_dw_3_bn/ReadVariableOpconv_dw_3_bn/ReadVariableOp2>
conv_dw_3_bn/ReadVariableOp_1conv_dw_3_bn/ReadVariableOp_12B
conv_pw_1/Conv2D/ReadVariableOpconv_pw_1/Conv2D/ReadVariableOp2\
,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_pw_1_bn/ReadVariableOpconv_pw_1_bn/ReadVariableOp2>
conv_pw_1_bn/ReadVariableOp_1conv_pw_1_bn/ReadVariableOp_12B
conv_pw_2/Conv2D/ReadVariableOpconv_pw_2/Conv2D/ReadVariableOp2\
,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_pw_2_bn/ReadVariableOpconv_pw_2_bn/ReadVariableOp2>
conv_pw_2_bn/ReadVariableOp_1conv_pw_2_bn/ReadVariableOp_12B
conv_pw_3/Conv2D/ReadVariableOpconv_pw_3/Conv2D/ReadVariableOp2\
,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_pw_3_bn/ReadVariableOpconv_pw_3_bn/ReadVariableOp2>
conv_pw_3_bn/ReadVariableOp_1conv_pw_3_bn/ReadVariableOp_12B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
f
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_960936

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ó

H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_963025

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
È
-__inference_conv_dw_2_bn_layer_call_fn_962747

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960645
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Õ²
ú'
__inference__traced_save_963428
file_prefix+
'savev2_conv1_kernel_read_readvariableop-
)savev2_conv1_bn_gamma_read_readvariableop,
(savev2_conv1_bn_beta_read_readvariableop3
/savev2_conv1_bn_moving_mean_read_readvariableop7
3savev2_conv1_bn_moving_variance_read_readvariableop9
5savev2_conv_dw_1_depthwise_kernel_read_readvariableop1
-savev2_conv_dw_1_bn_gamma_read_readvariableop0
,savev2_conv_dw_1_bn_beta_read_readvariableop7
3savev2_conv_dw_1_bn_moving_mean_read_readvariableop;
7savev2_conv_dw_1_bn_moving_variance_read_readvariableop/
+savev2_conv_pw_1_kernel_read_readvariableop1
-savev2_conv_pw_1_bn_gamma_read_readvariableop0
,savev2_conv_pw_1_bn_beta_read_readvariableop7
3savev2_conv_pw_1_bn_moving_mean_read_readvariableop;
7savev2_conv_pw_1_bn_moving_variance_read_readvariableop9
5savev2_conv_dw_2_depthwise_kernel_read_readvariableop1
-savev2_conv_dw_2_bn_gamma_read_readvariableop0
,savev2_conv_dw_2_bn_beta_read_readvariableop7
3savev2_conv_dw_2_bn_moving_mean_read_readvariableop;
7savev2_conv_dw_2_bn_moving_variance_read_readvariableop/
+savev2_conv_pw_2_kernel_read_readvariableop1
-savev2_conv_pw_2_bn_gamma_read_readvariableop0
,savev2_conv_pw_2_bn_beta_read_readvariableop7
3savev2_conv_pw_2_bn_moving_mean_read_readvariableop;
7savev2_conv_pw_2_bn_moving_variance_read_readvariableop9
5savev2_conv_dw_3_depthwise_kernel_read_readvariableop1
-savev2_conv_dw_3_bn_gamma_read_readvariableop0
,savev2_conv_dw_3_bn_beta_read_readvariableop7
3savev2_conv_dw_3_bn_moving_mean_read_readvariableop;
7savev2_conv_dw_3_bn_moving_variance_read_readvariableop/
+savev2_conv_pw_3_kernel_read_readvariableop1
-savev2_conv_pw_3_bn_gamma_read_readvariableop0
,savev2_conv_pw_3_bn_beta_read_readvariableop7
3savev2_conv_pw_3_bn_moving_mean_read_readvariableop;
7savev2_conv_pw_3_bn_moving_variance_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_conv1_kernel_m_read_readvariableop4
0savev2_adam_conv1_bn_gamma_m_read_readvariableop3
/savev2_adam_conv1_bn_beta_m_read_readvariableop@
<savev2_adam_conv_dw_1_depthwise_kernel_m_read_readvariableop8
4savev2_adam_conv_dw_1_bn_gamma_m_read_readvariableop7
3savev2_adam_conv_dw_1_bn_beta_m_read_readvariableop6
2savev2_adam_conv_pw_1_kernel_m_read_readvariableop8
4savev2_adam_conv_pw_1_bn_gamma_m_read_readvariableop7
3savev2_adam_conv_pw_1_bn_beta_m_read_readvariableop@
<savev2_adam_conv_dw_2_depthwise_kernel_m_read_readvariableop8
4savev2_adam_conv_dw_2_bn_gamma_m_read_readvariableop7
3savev2_adam_conv_dw_2_bn_beta_m_read_readvariableop6
2savev2_adam_conv_pw_2_kernel_m_read_readvariableop8
4savev2_adam_conv_pw_2_bn_gamma_m_read_readvariableop7
3savev2_adam_conv_pw_2_bn_beta_m_read_readvariableop@
<savev2_adam_conv_dw_3_depthwise_kernel_m_read_readvariableop8
4savev2_adam_conv_dw_3_bn_gamma_m_read_readvariableop7
3savev2_adam_conv_dw_3_bn_beta_m_read_readvariableop6
2savev2_adam_conv_pw_3_kernel_m_read_readvariableop8
4savev2_adam_conv_pw_3_bn_gamma_m_read_readvariableop7
3savev2_adam_conv_pw_3_bn_beta_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop2
.savev2_adam_conv1_kernel_v_read_readvariableop4
0savev2_adam_conv1_bn_gamma_v_read_readvariableop3
/savev2_adam_conv1_bn_beta_v_read_readvariableop@
<savev2_adam_conv_dw_1_depthwise_kernel_v_read_readvariableop8
4savev2_adam_conv_dw_1_bn_gamma_v_read_readvariableop7
3savev2_adam_conv_dw_1_bn_beta_v_read_readvariableop6
2savev2_adam_conv_pw_1_kernel_v_read_readvariableop8
4savev2_adam_conv_pw_1_bn_gamma_v_read_readvariableop7
3savev2_adam_conv_pw_1_bn_beta_v_read_readvariableop@
<savev2_adam_conv_dw_2_depthwise_kernel_v_read_readvariableop8
4savev2_adam_conv_dw_2_bn_gamma_v_read_readvariableop7
3savev2_adam_conv_dw_2_bn_beta_v_read_readvariableop6
2savev2_adam_conv_pw_2_kernel_v_read_readvariableop8
4savev2_adam_conv_pw_2_bn_gamma_v_read_readvariableop7
3savev2_adam_conv_pw_2_bn_beta_v_read_readvariableop@
<savev2_adam_conv_dw_3_depthwise_kernel_v_read_readvariableop8
4savev2_adam_conv_dw_3_bn_gamma_v_read_readvariableop7
3savev2_adam_conv_dw_3_bn_beta_v_read_readvariableop6
2savev2_adam_conv_pw_3_kernel_v_read_readvariableop8
4savev2_adam_conv_pw_3_bn_gamma_v_read_readvariableop7
3savev2_adam_conv_pw_3_bn_beta_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 4
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*³3
value©3B¦3]B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-10/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-10/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHª
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*Ï
valueÅBÂ]B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ª&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv1_kernel_read_readvariableop)savev2_conv1_bn_gamma_read_readvariableop(savev2_conv1_bn_beta_read_readvariableop/savev2_conv1_bn_moving_mean_read_readvariableop3savev2_conv1_bn_moving_variance_read_readvariableop5savev2_conv_dw_1_depthwise_kernel_read_readvariableop-savev2_conv_dw_1_bn_gamma_read_readvariableop,savev2_conv_dw_1_bn_beta_read_readvariableop3savev2_conv_dw_1_bn_moving_mean_read_readvariableop7savev2_conv_dw_1_bn_moving_variance_read_readvariableop+savev2_conv_pw_1_kernel_read_readvariableop-savev2_conv_pw_1_bn_gamma_read_readvariableop,savev2_conv_pw_1_bn_beta_read_readvariableop3savev2_conv_pw_1_bn_moving_mean_read_readvariableop7savev2_conv_pw_1_bn_moving_variance_read_readvariableop5savev2_conv_dw_2_depthwise_kernel_read_readvariableop-savev2_conv_dw_2_bn_gamma_read_readvariableop,savev2_conv_dw_2_bn_beta_read_readvariableop3savev2_conv_dw_2_bn_moving_mean_read_readvariableop7savev2_conv_dw_2_bn_moving_variance_read_readvariableop+savev2_conv_pw_2_kernel_read_readvariableop-savev2_conv_pw_2_bn_gamma_read_readvariableop,savev2_conv_pw_2_bn_beta_read_readvariableop3savev2_conv_pw_2_bn_moving_mean_read_readvariableop7savev2_conv_pw_2_bn_moving_variance_read_readvariableop5savev2_conv_dw_3_depthwise_kernel_read_readvariableop-savev2_conv_dw_3_bn_gamma_read_readvariableop,savev2_conv_dw_3_bn_beta_read_readvariableop3savev2_conv_dw_3_bn_moving_mean_read_readvariableop7savev2_conv_dw_3_bn_moving_variance_read_readvariableop+savev2_conv_pw_3_kernel_read_readvariableop-savev2_conv_pw_3_bn_gamma_read_readvariableop,savev2_conv_pw_3_bn_beta_read_readvariableop3savev2_conv_pw_3_bn_moving_mean_read_readvariableop7savev2_conv_pw_3_bn_moving_variance_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_conv1_kernel_m_read_readvariableop0savev2_adam_conv1_bn_gamma_m_read_readvariableop/savev2_adam_conv1_bn_beta_m_read_readvariableop<savev2_adam_conv_dw_1_depthwise_kernel_m_read_readvariableop4savev2_adam_conv_dw_1_bn_gamma_m_read_readvariableop3savev2_adam_conv_dw_1_bn_beta_m_read_readvariableop2savev2_adam_conv_pw_1_kernel_m_read_readvariableop4savev2_adam_conv_pw_1_bn_gamma_m_read_readvariableop3savev2_adam_conv_pw_1_bn_beta_m_read_readvariableop<savev2_adam_conv_dw_2_depthwise_kernel_m_read_readvariableop4savev2_adam_conv_dw_2_bn_gamma_m_read_readvariableop3savev2_adam_conv_dw_2_bn_beta_m_read_readvariableop2savev2_adam_conv_pw_2_kernel_m_read_readvariableop4savev2_adam_conv_pw_2_bn_gamma_m_read_readvariableop3savev2_adam_conv_pw_2_bn_beta_m_read_readvariableop<savev2_adam_conv_dw_3_depthwise_kernel_m_read_readvariableop4savev2_adam_conv_dw_3_bn_gamma_m_read_readvariableop3savev2_adam_conv_dw_3_bn_beta_m_read_readvariableop2savev2_adam_conv_pw_3_kernel_m_read_readvariableop4savev2_adam_conv_pw_3_bn_gamma_m_read_readvariableop3savev2_adam_conv_pw_3_bn_beta_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop.savev2_adam_conv1_kernel_v_read_readvariableop0savev2_adam_conv1_bn_gamma_v_read_readvariableop/savev2_adam_conv1_bn_beta_v_read_readvariableop<savev2_adam_conv_dw_1_depthwise_kernel_v_read_readvariableop4savev2_adam_conv_dw_1_bn_gamma_v_read_readvariableop3savev2_adam_conv_dw_1_bn_beta_v_read_readvariableop2savev2_adam_conv_pw_1_kernel_v_read_readvariableop4savev2_adam_conv_pw_1_bn_gamma_v_read_readvariableop3savev2_adam_conv_pw_1_bn_beta_v_read_readvariableop<savev2_adam_conv_dw_2_depthwise_kernel_v_read_readvariableop4savev2_adam_conv_dw_2_bn_gamma_v_read_readvariableop3savev2_adam_conv_dw_2_bn_beta_v_read_readvariableop2savev2_adam_conv_pw_2_kernel_v_read_readvariableop4savev2_adam_conv_pw_2_bn_gamma_v_read_readvariableop3savev2_adam_conv_pw_2_bn_beta_v_read_readvariableop<savev2_adam_conv_dw_3_depthwise_kernel_v_read_readvariableop4savev2_adam_conv_dw_3_bn_gamma_v_read_readvariableop3savev2_adam_conv_dw_3_bn_beta_v_read_readvariableop2savev2_adam_conv_pw_3_kernel_v_read_readvariableop4savev2_adam_conv_pw_3_bn_gamma_v_read_readvariableop3savev2_adam_conv_pw_3_bn_beta_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *k
dtypesa
_2]	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Ï
_input_shapes½
º: : : : : : : : : : : : @:@:@:@:@:@:@:@:@:@:@:::::::::::::::
À:: : : : : : : : : : : : : : : : @:@:@:@:@:@:@:::::::::
À:: : : : : : : @:@:@:@:@:@:@:::::::::
À:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::-)
'
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::! 

_output_shapes	
::!!

_output_shapes	
::!"

_output_shapes	
::!#

_output_shapes	
::&$"
 
_output_shapes
:
À: %

_output_shapes
::&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :,/(
&
_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: :,2(
&
_output_shapes
: : 3

_output_shapes
: : 4

_output_shapes
: :,5(
&
_output_shapes
: @: 6

_output_shapes
:@: 7

_output_shapes
:@:,8(
&
_output_shapes
:@: 9

_output_shapes
:@: :

_output_shapes
:@:-;)
'
_output_shapes
:@:!<

_output_shapes	
::!=

_output_shapes	
::->)
'
_output_shapes
::!?

_output_shapes	
::!@

_output_shapes	
::.A*
(
_output_shapes
::!B

_output_shapes	
::!C

_output_shapes	
::&D"
 
_output_shapes
:
À: E

_output_shapes
::,F(
&
_output_shapes
: : G

_output_shapes
: : H

_output_shapes
: :,I(
&
_output_shapes
: : J

_output_shapes
: : K

_output_shapes
: :,L(
&
_output_shapes
: @: M

_output_shapes
:@: N

_output_shapes
:@:,O(
&
_output_shapes
:@: P

_output_shapes
:@: Q

_output_shapes
:@:-R)
'
_output_shapes
:@:!S

_output_shapes	
::!T

_output_shapes	
::-U)
'
_output_shapes
::!V

_output_shapes	
::!W

_output_shapes	
::.X*
(
_output_shapes
::!Y

_output_shapes	
::!Z

_output_shapes	
::&["
 
_output_shapes
:
À: \

_output_shapes
::]

_output_shapes
: 
½
f
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_962879

inputs
identityc
Relu6Relu6inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
IdentityIdentityRelu6:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_962580

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ï
¸
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_962981

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
y
IdentityIdentityConv2D:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬
G
+__inference_dropout_45_layer_call_fn_963087

inputs
identity¶
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_961079b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
ï	
½
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_961004

inputs<
!depthwise_readvariableop_resource:
identity¢depthwise/ReadVariableOp
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*'
_output_shapes
:*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Á
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
|
IdentityIdentitydepthwise:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿa
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
·
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960504

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
É
ä"
!__inference__wrapped_model_960387
input_21G
-model_21_conv1_conv2d_readvariableop_resource: 7
)model_21_conv1_bn_readvariableop_resource: 9
+model_21_conv1_bn_readvariableop_1_resource: H
:model_21_conv1_bn_fusedbatchnormv3_readvariableop_resource: J
<model_21_conv1_bn_fusedbatchnormv3_readvariableop_1_resource: N
4model_21_conv_dw_1_depthwise_readvariableop_resource: ;
-model_21_conv_dw_1_bn_readvariableop_resource: =
/model_21_conv_dw_1_bn_readvariableop_1_resource: L
>model_21_conv_dw_1_bn_fusedbatchnormv3_readvariableop_resource: N
@model_21_conv_dw_1_bn_fusedbatchnormv3_readvariableop_1_resource: K
1model_21_conv_pw_1_conv2d_readvariableop_resource: @;
-model_21_conv_pw_1_bn_readvariableop_resource:@=
/model_21_conv_pw_1_bn_readvariableop_1_resource:@L
>model_21_conv_pw_1_bn_fusedbatchnormv3_readvariableop_resource:@N
@model_21_conv_pw_1_bn_fusedbatchnormv3_readvariableop_1_resource:@N
4model_21_conv_dw_2_depthwise_readvariableop_resource:@;
-model_21_conv_dw_2_bn_readvariableop_resource:@=
/model_21_conv_dw_2_bn_readvariableop_1_resource:@L
>model_21_conv_dw_2_bn_fusedbatchnormv3_readvariableop_resource:@N
@model_21_conv_dw_2_bn_fusedbatchnormv3_readvariableop_1_resource:@L
1model_21_conv_pw_2_conv2d_readvariableop_resource:@<
-model_21_conv_pw_2_bn_readvariableop_resource:	>
/model_21_conv_pw_2_bn_readvariableop_1_resource:	M
>model_21_conv_pw_2_bn_fusedbatchnormv3_readvariableop_resource:	O
@model_21_conv_pw_2_bn_fusedbatchnormv3_readvariableop_1_resource:	O
4model_21_conv_dw_3_depthwise_readvariableop_resource:<
-model_21_conv_dw_3_bn_readvariableop_resource:	>
/model_21_conv_dw_3_bn_readvariableop_1_resource:	M
>model_21_conv_dw_3_bn_fusedbatchnormv3_readvariableop_resource:	O
@model_21_conv_dw_3_bn_fusedbatchnormv3_readvariableop_1_resource:	M
1model_21_conv_pw_3_conv2d_readvariableop_resource:<
-model_21_conv_pw_3_bn_readvariableop_resource:	>
/model_21_conv_pw_3_bn_readvariableop_1_resource:	M
>model_21_conv_pw_3_bn_fusedbatchnormv3_readvariableop_resource:	O
@model_21_conv_pw_3_bn_fusedbatchnormv3_readvariableop_1_resource:	D
0model_21_dense_62_matmul_readvariableop_resource:
À?
1model_21_dense_62_biasadd_readvariableop_resource:
identity¢$model_21/conv1/Conv2D/ReadVariableOp¢1model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp¢3model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp_1¢ model_21/conv1_bn/ReadVariableOp¢"model_21/conv1_bn/ReadVariableOp_1¢+model_21/conv_dw_1/depthwise/ReadVariableOp¢5model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp¢7model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1¢$model_21/conv_dw_1_bn/ReadVariableOp¢&model_21/conv_dw_1_bn/ReadVariableOp_1¢+model_21/conv_dw_2/depthwise/ReadVariableOp¢5model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp¢7model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1¢$model_21/conv_dw_2_bn/ReadVariableOp¢&model_21/conv_dw_2_bn/ReadVariableOp_1¢+model_21/conv_dw_3/depthwise/ReadVariableOp¢5model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp¢7model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1¢$model_21/conv_dw_3_bn/ReadVariableOp¢&model_21/conv_dw_3_bn/ReadVariableOp_1¢(model_21/conv_pw_1/Conv2D/ReadVariableOp¢5model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp¢7model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1¢$model_21/conv_pw_1_bn/ReadVariableOp¢&model_21/conv_pw_1_bn/ReadVariableOp_1¢(model_21/conv_pw_2/Conv2D/ReadVariableOp¢5model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp¢7model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1¢$model_21/conv_pw_2_bn/ReadVariableOp¢&model_21/conv_pw_2_bn/ReadVariableOp_1¢(model_21/conv_pw_3/Conv2D/ReadVariableOp¢5model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp¢7model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1¢$model_21/conv_pw_3_bn/ReadVariableOp¢&model_21/conv_pw_3_bn/ReadVariableOp_1¢(model_21/dense_62/BiasAdd/ReadVariableOp¢'model_21/dense_62/MatMul/ReadVariableOp
$model_21/conv1/Conv2D/ReadVariableOpReadVariableOp-model_21_conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ë
model_21/conv1/Conv2DConv2Dinput_21,model_21/conv1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

 model_21/conv1_bn/ReadVariableOpReadVariableOp)model_21_conv1_bn_readvariableop_resource*
_output_shapes
: *
dtype0
"model_21/conv1_bn/ReadVariableOp_1ReadVariableOp+model_21_conv1_bn_readvariableop_1_resource*
_output_shapes
: *
dtype0¨
1model_21/conv1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp:model_21_conv1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¬
3model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp<model_21_conv1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0º
"model_21/conv1_bn/FusedBatchNormV3FusedBatchNormV3model_21/conv1/Conv2D:output:0(model_21/conv1_bn/ReadVariableOp:value:0*model_21/conv1_bn/ReadVariableOp_1:value:09model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp:value:0;model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( 
model_21/conv1_relu/Relu6Relu6&model_21/conv1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ¨
+model_21/conv_dw_1/depthwise/ReadVariableOpReadVariableOp4model_21_conv_dw_1_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0{
"model_21/conv_dw_1/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             {
*model_21/conv_dw_1/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
model_21/conv_dw_1/depthwiseDepthwiseConv2dNative'model_21/conv1_relu/Relu6:activations:03model_21/conv_dw_1/depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides

$model_21/conv_dw_1_bn/ReadVariableOpReadVariableOp-model_21_conv_dw_1_bn_readvariableop_resource*
_output_shapes
: *
dtype0
&model_21/conv_dw_1_bn/ReadVariableOp_1ReadVariableOp/model_21_conv_dw_1_bn_readvariableop_1_resource*
_output_shapes
: *
dtype0°
5model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp>model_21_conv_dw_1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0´
7model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@model_21_conv_dw_1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Õ
&model_21/conv_dw_1_bn/FusedBatchNormV3FusedBatchNormV3%model_21/conv_dw_1/depthwise:output:0,model_21/conv_dw_1_bn/ReadVariableOp:value:0.model_21/conv_dw_1_bn/ReadVariableOp_1:value:0=model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp:value:0?model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( 
model_21/conv_dw_1_relu/Relu6Relu6*model_21/conv_dw_1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ¢
(model_21/conv_pw_1/Conv2D/ReadVariableOpReadVariableOp1model_21_conv_pw_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ö
model_21/conv_pw_1/Conv2DConv2D+model_21/conv_dw_1_relu/Relu6:activations:00model_21/conv_pw_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

$model_21/conv_pw_1_bn/ReadVariableOpReadVariableOp-model_21_conv_pw_1_bn_readvariableop_resource*
_output_shapes
:@*
dtype0
&model_21/conv_pw_1_bn/ReadVariableOp_1ReadVariableOp/model_21_conv_pw_1_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype0°
5model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp>model_21_conv_pw_1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0´
7model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@model_21_conv_pw_1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ò
&model_21/conv_pw_1_bn/FusedBatchNormV3FusedBatchNormV3"model_21/conv_pw_1/Conv2D:output:0,model_21/conv_pw_1_bn/ReadVariableOp:value:0.model_21/conv_pw_1_bn/ReadVariableOp_1:value:0=model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp:value:0?model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
model_21/conv_pw_1_relu/Relu6Relu6*model_21/conv_pw_1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 model_21/conv_pad_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               Â
model_21/conv_pad_2/PadPad+model_21/conv_pw_1_relu/Relu6:activations:0)model_21/conv_pad_2/Pad/paddings:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¨
+model_21/conv_dw_2/depthwise/ReadVariableOpReadVariableOp4model_21_conv_dw_2_depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0{
"model_21/conv_dw_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      {
*model_21/conv_dw_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
model_21/conv_dw_2/depthwiseDepthwiseConv2dNative model_21/conv_pad_2/Pad:output:03model_21/conv_dw_2/depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides

$model_21/conv_dw_2_bn/ReadVariableOpReadVariableOp-model_21_conv_dw_2_bn_readvariableop_resource*
_output_shapes
:@*
dtype0
&model_21/conv_dw_2_bn/ReadVariableOp_1ReadVariableOp/model_21_conv_dw_2_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype0°
5model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp>model_21_conv_dw_2_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0´
7model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@model_21_conv_dw_2_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Õ
&model_21/conv_dw_2_bn/FusedBatchNormV3FusedBatchNormV3%model_21/conv_dw_2/depthwise:output:0,model_21/conv_dw_2_bn/ReadVariableOp:value:0.model_21/conv_dw_2_bn/ReadVariableOp_1:value:0=model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp:value:0?model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( 
model_21/conv_dw_2_relu/Relu6Relu6*model_21/conv_dw_2_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@£
(model_21/conv_pw_2/Conv2D/ReadVariableOpReadVariableOp1model_21_conv_pw_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0÷
model_21/conv_pw_2/Conv2DConv2D+model_21/conv_dw_2_relu/Relu6:activations:00model_21/conv_pw_2/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

$model_21/conv_pw_2_bn/ReadVariableOpReadVariableOp-model_21_conv_pw_2_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
&model_21/conv_pw_2_bn/ReadVariableOp_1ReadVariableOp/model_21_conv_pw_2_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0±
5model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp>model_21_conv_pw_2_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0µ
7model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@model_21_conv_pw_2_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0×
&model_21/conv_pw_2_bn/FusedBatchNormV3FusedBatchNormV3"model_21/conv_pw_2/Conv2D:output:0,model_21/conv_pw_2_bn/ReadVariableOp:value:0.model_21/conv_pw_2_bn/ReadVariableOp_1:value:0=model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp:value:0?model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
model_21/conv_pw_2_relu/Relu6Relu6*model_21/conv_pw_2_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
+model_21/conv_dw_3/depthwise/ReadVariableOpReadVariableOp4model_21_conv_dw_3_depthwise_readvariableop_resource*'
_output_shapes
:*
dtype0{
"model_21/conv_dw_3/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            {
*model_21/conv_dw_3/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
model_21/conv_dw_3/depthwiseDepthwiseConv2dNative+model_21/conv_pw_2_relu/Relu6:activations:03model_21/conv_dw_3/depthwise/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

$model_21/conv_dw_3_bn/ReadVariableOpReadVariableOp-model_21_conv_dw_3_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
&model_21/conv_dw_3_bn/ReadVariableOp_1ReadVariableOp/model_21_conv_dw_3_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0±
5model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp>model_21_conv_dw_3_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0µ
7model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@model_21_conv_dw_3_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ú
&model_21/conv_dw_3_bn/FusedBatchNormV3FusedBatchNormV3%model_21/conv_dw_3/depthwise:output:0,model_21/conv_dw_3_bn/ReadVariableOp:value:0.model_21/conv_dw_3_bn/ReadVariableOp_1:value:0=model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp:value:0?model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
model_21/conv_dw_3_relu/Relu6Relu6*model_21/conv_dw_3_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¤
(model_21/conv_pw_3/Conv2D/ReadVariableOpReadVariableOp1model_21_conv_pw_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0÷
model_21/conv_pw_3/Conv2DConv2D+model_21/conv_dw_3_relu/Relu6:activations:00model_21/conv_pw_3/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

$model_21/conv_pw_3_bn/ReadVariableOpReadVariableOp-model_21_conv_pw_3_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
&model_21/conv_pw_3_bn/ReadVariableOp_1ReadVariableOp/model_21_conv_pw_3_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0±
5model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp>model_21_conv_pw_3_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0µ
7model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@model_21_conv_pw_3_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0×
&model_21/conv_pw_3_bn/FusedBatchNormV3FusedBatchNormV3"model_21/conv_pw_3/Conv2D:output:0,model_21/conv_pw_3_bn/ReadVariableOp:value:0.model_21/conv_pw_3_bn/ReadVariableOp_1:value:0=model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp:value:0?model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 
model_21/conv_pw_3_relu/Relu6Relu6*model_21/conv_pw_3_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
model_21/reshape_18/ShapeShape+model_21/conv_pw_3_relu/Relu6:activations:0*
T0*
_output_shapes
:q
'model_21/reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)model_21/reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)model_21/reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!model_21/reshape_18/strided_sliceStridedSlice"model_21/reshape_18/Shape:output:00model_21/reshape_18/strided_slice/stack:output:02model_21/reshape_18/strided_slice/stack_1:output:02model_21/reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_21/reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :Àf
#model_21/reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :ß
!model_21/reshape_18/Reshape/shapePack*model_21/reshape_18/strided_slice:output:0,model_21/reshape_18/Reshape/shape/1:output:0,model_21/reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:·
model_21/reshape_18/ReshapeReshape+model_21/conv_pw_3_relu/Relu6:activations:0*model_21/reshape_18/Reshape/shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
model_21/flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¤
model_21/flatten_36/ReshapeReshape$model_21/reshape_18/Reshape:output:0"model_21/flatten_36/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
model_21/dropout_45/IdentityIdentity$model_21/flatten_36/Reshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
'model_21/dense_62/MatMul/ReadVariableOpReadVariableOp0model_21_dense_62_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0¬
model_21/dense_62/MatMulMatMul%model_21/dropout_45/Identity:output:0/model_21/dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(model_21/dense_62/BiasAdd/ReadVariableOpReadVariableOp1model_21_dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
model_21/dense_62/BiasAddBiasAdd"model_21/dense_62/MatMul:product:00model_21/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
model_21/dense_62/SoftmaxSoftmax"model_21/dense_62/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
IdentityIdentity#model_21/dense_62/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp%^model_21/conv1/Conv2D/ReadVariableOp2^model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp4^model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp_1!^model_21/conv1_bn/ReadVariableOp#^model_21/conv1_bn/ReadVariableOp_1,^model_21/conv_dw_1/depthwise/ReadVariableOp6^model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp8^model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1%^model_21/conv_dw_1_bn/ReadVariableOp'^model_21/conv_dw_1_bn/ReadVariableOp_1,^model_21/conv_dw_2/depthwise/ReadVariableOp6^model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp8^model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1%^model_21/conv_dw_2_bn/ReadVariableOp'^model_21/conv_dw_2_bn/ReadVariableOp_1,^model_21/conv_dw_3/depthwise/ReadVariableOp6^model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp8^model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1%^model_21/conv_dw_3_bn/ReadVariableOp'^model_21/conv_dw_3_bn/ReadVariableOp_1)^model_21/conv_pw_1/Conv2D/ReadVariableOp6^model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp8^model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1%^model_21/conv_pw_1_bn/ReadVariableOp'^model_21/conv_pw_1_bn/ReadVariableOp_1)^model_21/conv_pw_2/Conv2D/ReadVariableOp6^model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp8^model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1%^model_21/conv_pw_2_bn/ReadVariableOp'^model_21/conv_pw_2_bn/ReadVariableOp_1)^model_21/conv_pw_3/Conv2D/ReadVariableOp6^model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp8^model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1%^model_21/conv_pw_3_bn/ReadVariableOp'^model_21/conv_pw_3_bn/ReadVariableOp_1)^model_21/dense_62/BiasAdd/ReadVariableOp(^model_21/dense_62/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model_21/conv1/Conv2D/ReadVariableOp$model_21/conv1/Conv2D/ReadVariableOp2f
1model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp1model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp2j
3model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp_13model_21/conv1_bn/FusedBatchNormV3/ReadVariableOp_12D
 model_21/conv1_bn/ReadVariableOp model_21/conv1_bn/ReadVariableOp2H
"model_21/conv1_bn/ReadVariableOp_1"model_21/conv1_bn/ReadVariableOp_12Z
+model_21/conv_dw_1/depthwise/ReadVariableOp+model_21/conv_dw_1/depthwise/ReadVariableOp2n
5model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp5model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp2r
7model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_17model_21/conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_12L
$model_21/conv_dw_1_bn/ReadVariableOp$model_21/conv_dw_1_bn/ReadVariableOp2P
&model_21/conv_dw_1_bn/ReadVariableOp_1&model_21/conv_dw_1_bn/ReadVariableOp_12Z
+model_21/conv_dw_2/depthwise/ReadVariableOp+model_21/conv_dw_2/depthwise/ReadVariableOp2n
5model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp5model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp2r
7model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_17model_21/conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_12L
$model_21/conv_dw_2_bn/ReadVariableOp$model_21/conv_dw_2_bn/ReadVariableOp2P
&model_21/conv_dw_2_bn/ReadVariableOp_1&model_21/conv_dw_2_bn/ReadVariableOp_12Z
+model_21/conv_dw_3/depthwise/ReadVariableOp+model_21/conv_dw_3/depthwise/ReadVariableOp2n
5model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp5model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp2r
7model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_17model_21/conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_12L
$model_21/conv_dw_3_bn/ReadVariableOp$model_21/conv_dw_3_bn/ReadVariableOp2P
&model_21/conv_dw_3_bn/ReadVariableOp_1&model_21/conv_dw_3_bn/ReadVariableOp_12T
(model_21/conv_pw_1/Conv2D/ReadVariableOp(model_21/conv_pw_1/Conv2D/ReadVariableOp2n
5model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp5model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp2r
7model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_17model_21/conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_12L
$model_21/conv_pw_1_bn/ReadVariableOp$model_21/conv_pw_1_bn/ReadVariableOp2P
&model_21/conv_pw_1_bn/ReadVariableOp_1&model_21/conv_pw_1_bn/ReadVariableOp_12T
(model_21/conv_pw_2/Conv2D/ReadVariableOp(model_21/conv_pw_2/Conv2D/ReadVariableOp2n
5model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp5model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp2r
7model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_17model_21/conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_12L
$model_21/conv_pw_2_bn/ReadVariableOp$model_21/conv_pw_2_bn/ReadVariableOp2P
&model_21/conv_pw_2_bn/ReadVariableOp_1&model_21/conv_pw_2_bn/ReadVariableOp_12T
(model_21/conv_pw_3/Conv2D/ReadVariableOp(model_21/conv_pw_3/Conv2D/ReadVariableOp2n
5model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp5model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp2r
7model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_17model_21/conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_12L
$model_21/conv_pw_3_bn/ReadVariableOp$model_21/conv_pw_3_bn/ReadVariableOp2P
&model_21/conv_pw_3_bn/ReadVariableOp_1&model_21/conv_pw_3_bn/ReadVariableOp_12T
(model_21/dense_62/BiasAdd/ReadVariableOp(model_21/dense_62/BiasAdd/ReadVariableOp2R
'model_21/dense_62/MatMul/ReadVariableOp'model_21/dense_62/MatMul/ReadVariableOp:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_21
Ñ
·
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960645

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹
f
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_962694

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ
É;
"__inference__traced_restore_963714
file_prefix7
assignvariableop_conv1_kernel: /
!assignvariableop_1_conv1_bn_gamma: .
 assignvariableop_2_conv1_bn_beta: 5
'assignvariableop_3_conv1_bn_moving_mean: 9
+assignvariableop_4_conv1_bn_moving_variance: G
-assignvariableop_5_conv_dw_1_depthwise_kernel: 3
%assignvariableop_6_conv_dw_1_bn_gamma: 2
$assignvariableop_7_conv_dw_1_bn_beta: 9
+assignvariableop_8_conv_dw_1_bn_moving_mean: =
/assignvariableop_9_conv_dw_1_bn_moving_variance: >
$assignvariableop_10_conv_pw_1_kernel: @4
&assignvariableop_11_conv_pw_1_bn_gamma:@3
%assignvariableop_12_conv_pw_1_bn_beta:@:
,assignvariableop_13_conv_pw_1_bn_moving_mean:@>
0assignvariableop_14_conv_pw_1_bn_moving_variance:@H
.assignvariableop_15_conv_dw_2_depthwise_kernel:@4
&assignvariableop_16_conv_dw_2_bn_gamma:@3
%assignvariableop_17_conv_dw_2_bn_beta:@:
,assignvariableop_18_conv_dw_2_bn_moving_mean:@>
0assignvariableop_19_conv_dw_2_bn_moving_variance:@?
$assignvariableop_20_conv_pw_2_kernel:@5
&assignvariableop_21_conv_pw_2_bn_gamma:	4
%assignvariableop_22_conv_pw_2_bn_beta:	;
,assignvariableop_23_conv_pw_2_bn_moving_mean:	?
0assignvariableop_24_conv_pw_2_bn_moving_variance:	I
.assignvariableop_25_conv_dw_3_depthwise_kernel:5
&assignvariableop_26_conv_dw_3_bn_gamma:	4
%assignvariableop_27_conv_dw_3_bn_beta:	;
,assignvariableop_28_conv_dw_3_bn_moving_mean:	?
0assignvariableop_29_conv_dw_3_bn_moving_variance:	@
$assignvariableop_30_conv_pw_3_kernel:5
&assignvariableop_31_conv_pw_3_bn_gamma:	4
%assignvariableop_32_conv_pw_3_bn_beta:	;
,assignvariableop_33_conv_pw_3_bn_moving_mean:	?
0assignvariableop_34_conv_pw_3_bn_moving_variance:	7
#assignvariableop_35_dense_62_kernel:
À/
!assignvariableop_36_dense_62_bias:'
assignvariableop_37_adam_iter:	 )
assignvariableop_38_adam_beta_1: )
assignvariableop_39_adam_beta_2: (
assignvariableop_40_adam_decay: 0
&assignvariableop_41_adam_learning_rate: #
assignvariableop_42_total: #
assignvariableop_43_count: %
assignvariableop_44_total_1: %
assignvariableop_45_count_1: A
'assignvariableop_46_adam_conv1_kernel_m: 7
)assignvariableop_47_adam_conv1_bn_gamma_m: 6
(assignvariableop_48_adam_conv1_bn_beta_m: O
5assignvariableop_49_adam_conv_dw_1_depthwise_kernel_m: ;
-assignvariableop_50_adam_conv_dw_1_bn_gamma_m: :
,assignvariableop_51_adam_conv_dw_1_bn_beta_m: E
+assignvariableop_52_adam_conv_pw_1_kernel_m: @;
-assignvariableop_53_adam_conv_pw_1_bn_gamma_m:@:
,assignvariableop_54_adam_conv_pw_1_bn_beta_m:@O
5assignvariableop_55_adam_conv_dw_2_depthwise_kernel_m:@;
-assignvariableop_56_adam_conv_dw_2_bn_gamma_m:@:
,assignvariableop_57_adam_conv_dw_2_bn_beta_m:@F
+assignvariableop_58_adam_conv_pw_2_kernel_m:@<
-assignvariableop_59_adam_conv_pw_2_bn_gamma_m:	;
,assignvariableop_60_adam_conv_pw_2_bn_beta_m:	P
5assignvariableop_61_adam_conv_dw_3_depthwise_kernel_m:<
-assignvariableop_62_adam_conv_dw_3_bn_gamma_m:	;
,assignvariableop_63_adam_conv_dw_3_bn_beta_m:	G
+assignvariableop_64_adam_conv_pw_3_kernel_m:<
-assignvariableop_65_adam_conv_pw_3_bn_gamma_m:	;
,assignvariableop_66_adam_conv_pw_3_bn_beta_m:	>
*assignvariableop_67_adam_dense_62_kernel_m:
À6
(assignvariableop_68_adam_dense_62_bias_m:A
'assignvariableop_69_adam_conv1_kernel_v: 7
)assignvariableop_70_adam_conv1_bn_gamma_v: 6
(assignvariableop_71_adam_conv1_bn_beta_v: O
5assignvariableop_72_adam_conv_dw_1_depthwise_kernel_v: ;
-assignvariableop_73_adam_conv_dw_1_bn_gamma_v: :
,assignvariableop_74_adam_conv_dw_1_bn_beta_v: E
+assignvariableop_75_adam_conv_pw_1_kernel_v: @;
-assignvariableop_76_adam_conv_pw_1_bn_gamma_v:@:
,assignvariableop_77_adam_conv_pw_1_bn_beta_v:@O
5assignvariableop_78_adam_conv_dw_2_depthwise_kernel_v:@;
-assignvariableop_79_adam_conv_dw_2_bn_gamma_v:@:
,assignvariableop_80_adam_conv_dw_2_bn_beta_v:@F
+assignvariableop_81_adam_conv_pw_2_kernel_v:@<
-assignvariableop_82_adam_conv_pw_2_bn_gamma_v:	;
,assignvariableop_83_adam_conv_pw_2_bn_beta_v:	P
5assignvariableop_84_adam_conv_dw_3_depthwise_kernel_v:<
-assignvariableop_85_adam_conv_dw_3_bn_gamma_v:	;
,assignvariableop_86_adam_conv_dw_3_bn_beta_v:	G
+assignvariableop_87_adam_conv_pw_3_kernel_v:<
-assignvariableop_88_adam_conv_pw_3_bn_gamma_v:	;
,assignvariableop_89_adam_conv_pw_3_bn_beta_v:	>
*assignvariableop_90_adam_dense_62_kernel_v:
À6
(assignvariableop_91_adam_dense_62_bias_v:
identity_93¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_914
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*³3
value©3B¦3]B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-2/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-6/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEBAlayer_with_weights-10/depthwise_kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-11/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-11/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-11/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-13/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/beta/.ATTRIBUTES/VARIABLE_VALUEB<layer_with_weights-13/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-13/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-10/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-2/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB\layer_with_weights-6/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB]layer_with_weights-10/depthwise_kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-11/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-13/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH­
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:]*
dtype0*Ï
valueÅBÂ]B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ò
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes÷
ô:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*k
dtypesa
_2]	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1_bn_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp assignvariableop_2_conv1_bn_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp'assignvariableop_3_conv1_bn_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp+assignvariableop_4_conv1_bn_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp-assignvariableop_5_conv_dw_1_depthwise_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_conv_dw_1_bn_gammaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp$assignvariableop_7_conv_dw_1_bn_betaIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp+assignvariableop_8_conv_dw_1_bn_moving_meanIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp/assignvariableop_9_conv_dw_1_bn_moving_varianceIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv_pw_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp&assignvariableop_11_conv_pw_1_bn_gammaIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp%assignvariableop_12_conv_pw_1_bn_betaIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp,assignvariableop_13_conv_pw_1_bn_moving_meanIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_14AssignVariableOp0assignvariableop_14_conv_pw_1_bn_moving_varianceIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp.assignvariableop_15_conv_dw_2_depthwise_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp&assignvariableop_16_conv_dw_2_bn_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp%assignvariableop_17_conv_dw_2_bn_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp,assignvariableop_18_conv_dw_2_bn_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_19AssignVariableOp0assignvariableop_19_conv_dw_2_bn_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp$assignvariableop_20_conv_pw_2_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp&assignvariableop_21_conv_pw_2_bn_gammaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp%assignvariableop_22_conv_pw_2_bn_betaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp,assignvariableop_23_conv_pw_2_bn_moving_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_24AssignVariableOp0assignvariableop_24_conv_pw_2_bn_moving_varianceIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp.assignvariableop_25_conv_dw_3_depthwise_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp&assignvariableop_26_conv_dw_3_bn_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp%assignvariableop_27_conv_dw_3_bn_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp,assignvariableop_28_conv_dw_3_bn_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_29AssignVariableOp0assignvariableop_29_conv_dw_3_bn_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp$assignvariableop_30_conv_pw_3_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp&assignvariableop_31_conv_pw_3_bn_gammaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp%assignvariableop_32_conv_pw_3_bn_betaIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp,assignvariableop_33_conv_pw_3_bn_moving_meanIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_34AssignVariableOp0assignvariableop_34_conv_pw_3_bn_moving_varianceIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp#assignvariableop_35_dense_62_kernelIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp!assignvariableop_36_dense_62_biasIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_iterIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_beta_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_beta_2Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_decayIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp&assignvariableop_41_adam_learning_rateIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOpassignvariableop_42_totalIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOpassignvariableop_43_countIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOpassignvariableop_44_total_1Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOpassignvariableop_45_count_1Identity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp'assignvariableop_46_adam_conv1_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_conv1_bn_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_conv1_bn_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_49AssignVariableOp5assignvariableop_49_adam_conv_dw_1_depthwise_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp-assignvariableop_50_adam_conv_dw_1_bn_gamma_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_conv_dw_1_bn_beta_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv_pw_1_kernel_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp-assignvariableop_53_adam_conv_pw_1_bn_gamma_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp,assignvariableop_54_adam_conv_pw_1_bn_beta_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_55AssignVariableOp5assignvariableop_55_adam_conv_dw_2_depthwise_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp-assignvariableop_56_adam_conv_dw_2_bn_gamma_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp,assignvariableop_57_adam_conv_dw_2_bn_beta_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp+assignvariableop_58_adam_conv_pw_2_kernel_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOp-assignvariableop_59_adam_conv_pw_2_bn_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOp,assignvariableop_60_adam_conv_pw_2_bn_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_61AssignVariableOp5assignvariableop_61_adam_conv_dw_3_depthwise_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp-assignvariableop_62_adam_conv_dw_3_bn_gamma_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp,assignvariableop_63_adam_conv_dw_3_bn_beta_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_conv_pw_3_kernel_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp-assignvariableop_65_adam_conv_pw_3_bn_gamma_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp,assignvariableop_66_adam_conv_pw_3_bn_beta_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_62_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_62_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp'assignvariableop_69_adam_conv1_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_conv1_bn_gamma_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp(assignvariableop_71_adam_conv1_bn_beta_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_72AssignVariableOp5assignvariableop_72_adam_conv_dw_1_depthwise_kernel_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_73AssignVariableOp-assignvariableop_73_adam_conv_dw_1_bn_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp,assignvariableop_74_adam_conv_dw_1_bn_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp+assignvariableop_75_adam_conv_pw_1_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp-assignvariableop_76_adam_conv_pw_1_bn_gamma_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_conv_pw_1_bn_beta_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_conv_dw_2_depthwise_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp-assignvariableop_79_adam_conv_dw_2_bn_gamma_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp,assignvariableop_80_adam_conv_dw_2_bn_beta_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp+assignvariableop_81_adam_conv_pw_2_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp-assignvariableop_82_adam_conv_pw_2_bn_gamma_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_83AssignVariableOp,assignvariableop_83_adam_conv_pw_2_bn_beta_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_84AssignVariableOp5assignvariableop_84_adam_conv_dw_3_depthwise_kernel_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_85AssignVariableOp-assignvariableop_85_adam_conv_dw_3_bn_gamma_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp,assignvariableop_86_adam_conv_dw_3_bn_beta_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_87AssignVariableOp+assignvariableop_87_adam_conv_pw_3_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_88AssignVariableOp-assignvariableop_88_adam_conv_pw_3_bn_gamma_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_89AssignVariableOp,assignvariableop_89_adam_conv_pw_3_bn_beta_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_90AssignVariableOp*assignvariableop_90_adam_dense_62_kernel_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_91AssignVariableOp(assignvariableop_91_adam_dense_62_bias_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ·
Identity_92Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_93IdentityIdentity_92:output:0^NoOp_1*
T0*
_output_shapes
: ¤
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91*"
_acd_function_control_output(*
_output_shapes
 "#
identity_93Identity_93:output:0*Ï
_input_shapes½
º: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
_user_specified_namefile_prefix
Í
³
D__inference_conv1_bn_layer_call_and_return_conditional_losses_960440

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
á
»
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960837

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
·
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_962807

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
y
IdentityIdentityConv2D:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¨

÷
D__inference_dense_62_layer_call_and_return_conditional_losses_961092

inputs2
matmul_readvariableop_resource:
À-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
Ó

H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960806

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
»
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_962869

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
b
F__inference_conv1_relu_layer_call_and_return_conditional_losses_960880

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


*__inference_conv_dw_3_layer_call_fn_962886

inputs"
unknown:
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_961004
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
¸
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_961031

inputs:
conv2d_readvariableop_resource:
identity¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
y
IdentityIdentityConv2D:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
f
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_960993

inputs
identityc
Relu6Relu6inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
IdentityIdentityRelu6:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
v
Õ
D__inference_model_21_layer_call_and_return_conditional_losses_961764
input_21&
conv1_961663: 
conv1_bn_961666: 
conv1_bn_961668: 
conv1_bn_961670: 
conv1_bn_961672: *
conv_dw_1_961676: !
conv_dw_1_bn_961679: !
conv_dw_1_bn_961681: !
conv_dw_1_bn_961683: !
conv_dw_1_bn_961685: *
conv_pw_1_961689: @!
conv_pw_1_bn_961692:@!
conv_pw_1_bn_961694:@!
conv_pw_1_bn_961696:@!
conv_pw_1_bn_961698:@*
conv_dw_2_961703:@!
conv_dw_2_bn_961706:@!
conv_dw_2_bn_961708:@!
conv_dw_2_bn_961710:@!
conv_dw_2_bn_961712:@+
conv_pw_2_961716:@"
conv_pw_2_bn_961719:	"
conv_pw_2_bn_961721:	"
conv_pw_2_bn_961723:	"
conv_pw_2_bn_961725:	+
conv_dw_3_961729:"
conv_dw_3_bn_961732:	"
conv_dw_3_bn_961734:	"
conv_dw_3_bn_961736:	"
conv_dw_3_bn_961738:	,
conv_pw_3_961742:"
conv_pw_3_bn_961745:	"
conv_pw_3_bn_961747:	"
conv_pw_3_bn_961749:	"
conv_pw_3_bn_961751:	#
dense_62_961758:
À
dense_62_961760:
identity¢conv1/StatefulPartitionedCall¢ conv1_bn/StatefulPartitionedCall¢!conv_dw_1/StatefulPartitionedCall¢$conv_dw_1_bn/StatefulPartitionedCall¢!conv_dw_2/StatefulPartitionedCall¢$conv_dw_2_bn/StatefulPartitionedCall¢!conv_dw_3/StatefulPartitionedCall¢$conv_dw_3_bn/StatefulPartitionedCall¢!conv_pw_1/StatefulPartitionedCall¢$conv_pw_1_bn/StatefulPartitionedCall¢!conv_pw_2/StatefulPartitionedCall¢$conv_pw_2_bn/StatefulPartitionedCall¢!conv_pw_3/StatefulPartitionedCall¢$conv_pw_3_bn/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCalló
conv1/StatefulPartitionedCallStatefulPartitionedCallinput_21conv1_961663*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_960862Ó
 conv1_bn/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0conv1_bn_961666conv1_bn_961668conv1_bn_961670conv1_bn_961672*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv1_bn_layer_call_and_return_conditional_losses_960409ü
conv1_relu/PartitionedCallPartitionedCall)conv1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv1_relu_layer_call_and_return_conditional_losses_960880
!conv_dw_1/StatefulPartitionedCallStatefulPartitionedCall#conv1_relu/PartitionedCall:output:0conv_dw_1_961676*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_960891ï
$conv_dw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_1/StatefulPartitionedCall:output:0conv_dw_1_bn_961679conv_dw_1_bn_961681conv_dw_1_bn_961683conv_dw_1_bn_961685*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960473
conv_dw_1_relu/PartitionedCallPartitionedCall-conv_dw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_960909
!conv_pw_1/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_1_relu/PartitionedCall:output:0conv_pw_1_961689*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_960918ï
$conv_pw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_1/StatefulPartitionedCall:output:0conv_pw_1_bn_961692conv_pw_1_bn_961694conv_pw_1_bn_961696conv_pw_1_bn_961698*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960537
conv_pw_1_relu/PartitionedCallPartitionedCall-conv_pw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_960936ú
conv_pad_2/PartitionedCallPartitionedCall'conv_pw_1_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_960589
!conv_dw_2/StatefulPartitionedCallStatefulPartitionedCall#conv_pad_2/PartitionedCall:output:0conv_dw_2_961703*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_960948ï
$conv_dw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_2/StatefulPartitionedCall:output:0conv_dw_2_bn_961706conv_dw_2_bn_961708conv_dw_2_bn_961710conv_dw_2_bn_961712*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960614
conv_dw_2_relu/PartitionedCallPartitionedCall-conv_dw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_960966
!conv_pw_2/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_2_relu/PartitionedCall:output:0conv_pw_2_961716*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_960975ð
$conv_pw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_2/StatefulPartitionedCall:output:0conv_pw_2_bn_961719conv_pw_2_bn_961721conv_pw_2_bn_961723conv_pw_2_bn_961725*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960678
conv_pw_2_relu/PartitionedCallPartitionedCall-conv_pw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_960993
!conv_dw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_pw_2_relu/PartitionedCall:output:0conv_dw_3_961729*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_961004ð
$conv_dw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_3/StatefulPartitionedCall:output:0conv_dw_3_bn_961732conv_dw_3_bn_961734conv_dw_3_bn_961736conv_dw_3_bn_961738*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960742
conv_dw_3_relu/PartitionedCallPartitionedCall-conv_dw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_961022
!conv_pw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_3_relu/PartitionedCall:output:0conv_pw_3_961742*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_961031ð
$conv_pw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_3/StatefulPartitionedCall:output:0conv_pw_3_bn_961745conv_pw_3_bn_961747conv_pw_3_bn_961749conv_pw_3_bn_961751*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960806
conv_pw_3_relu/PartitionedCallPartitionedCall-conv_pw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_961049æ
reshape_18/PartitionedCallPartitionedCall'conv_pw_3_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_18_layer_call_and_return_conditional_losses_961064Þ
flatten_36/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_36_layer_call_and_return_conditional_losses_961072Þ
dropout_45/PartitionedCallPartitionedCall#flatten_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_961079
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#dropout_45/PartitionedCall:output:0dense_62_961758dense_62_961760*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_961092x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp^conv1/StatefulPartitionedCall!^conv1_bn/StatefulPartitionedCall"^conv_dw_1/StatefulPartitionedCall%^conv_dw_1_bn/StatefulPartitionedCall"^conv_dw_2/StatefulPartitionedCall%^conv_dw_2_bn/StatefulPartitionedCall"^conv_dw_3/StatefulPartitionedCall%^conv_dw_3_bn/StatefulPartitionedCall"^conv_pw_1/StatefulPartitionedCall%^conv_pw_1_bn/StatefulPartitionedCall"^conv_pw_2/StatefulPartitionedCall%^conv_pw_2_bn/StatefulPartitionedCall"^conv_pw_3/StatefulPartitionedCall%^conv_pw_3_bn/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2D
 conv1_bn/StatefulPartitionedCall conv1_bn/StatefulPartitionedCall2F
!conv_dw_1/StatefulPartitionedCall!conv_dw_1/StatefulPartitionedCall2L
$conv_dw_1_bn/StatefulPartitionedCall$conv_dw_1_bn/StatefulPartitionedCall2F
!conv_dw_2/StatefulPartitionedCall!conv_dw_2/StatefulPartitionedCall2L
$conv_dw_2_bn/StatefulPartitionedCall$conv_dw_2_bn/StatefulPartitionedCall2F
!conv_dw_3/StatefulPartitionedCall!conv_dw_3/StatefulPartitionedCall2L
$conv_dw_3_bn/StatefulPartitionedCall$conv_dw_3_bn/StatefulPartitionedCall2F
!conv_pw_1/StatefulPartitionedCall!conv_pw_1/StatefulPartitionedCall2L
$conv_pw_1_bn/StatefulPartitionedCall$conv_pw_1_bn/StatefulPartitionedCall2F
!conv_pw_2/StatefulPartitionedCall!conv_pw_2/StatefulPartitionedCall2L
$conv_pw_2_bn/StatefulPartitionedCall$conv_pw_2_bn/StatefulPartitionedCall2F
!conv_pw_3/StatefulPartitionedCall!conv_pw_3/StatefulPartitionedCall2L
$conv_pw_3_bn/StatefulPartitionedCall$conv_pw_3_bn/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_21
¹
f
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_962793

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


*__inference_conv_pw_3_layer_call_fn_962974

inputs#
unknown:
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_961031
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©w
ø
D__inference_model_21_layer_call_and_return_conditional_losses_961504

inputs&
conv1_961403: 
conv1_bn_961406: 
conv1_bn_961408: 
conv1_bn_961410: 
conv1_bn_961412: *
conv_dw_1_961416: !
conv_dw_1_bn_961419: !
conv_dw_1_bn_961421: !
conv_dw_1_bn_961423: !
conv_dw_1_bn_961425: *
conv_pw_1_961429: @!
conv_pw_1_bn_961432:@!
conv_pw_1_bn_961434:@!
conv_pw_1_bn_961436:@!
conv_pw_1_bn_961438:@*
conv_dw_2_961443:@!
conv_dw_2_bn_961446:@!
conv_dw_2_bn_961448:@!
conv_dw_2_bn_961450:@!
conv_dw_2_bn_961452:@+
conv_pw_2_961456:@"
conv_pw_2_bn_961459:	"
conv_pw_2_bn_961461:	"
conv_pw_2_bn_961463:	"
conv_pw_2_bn_961465:	+
conv_dw_3_961469:"
conv_dw_3_bn_961472:	"
conv_dw_3_bn_961474:	"
conv_dw_3_bn_961476:	"
conv_dw_3_bn_961478:	,
conv_pw_3_961482:"
conv_pw_3_bn_961485:	"
conv_pw_3_bn_961487:	"
conv_pw_3_bn_961489:	"
conv_pw_3_bn_961491:	#
dense_62_961498:
À
dense_62_961500:
identity¢conv1/StatefulPartitionedCall¢ conv1_bn/StatefulPartitionedCall¢!conv_dw_1/StatefulPartitionedCall¢$conv_dw_1_bn/StatefulPartitionedCall¢!conv_dw_2/StatefulPartitionedCall¢$conv_dw_2_bn/StatefulPartitionedCall¢!conv_dw_3/StatefulPartitionedCall¢$conv_dw_3_bn/StatefulPartitionedCall¢!conv_pw_1/StatefulPartitionedCall¢$conv_pw_1_bn/StatefulPartitionedCall¢!conv_pw_2/StatefulPartitionedCall¢$conv_pw_2_bn/StatefulPartitionedCall¢!conv_pw_3/StatefulPartitionedCall¢$conv_pw_3_bn/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢"dropout_45/StatefulPartitionedCallñ
conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_961403*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_960862Ñ
 conv1_bn/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0conv1_bn_961406conv1_bn_961408conv1_bn_961410conv1_bn_961412*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv1_bn_layer_call_and_return_conditional_losses_960440ü
conv1_relu/PartitionedCallPartitionedCall)conv1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv1_relu_layer_call_and_return_conditional_losses_960880
!conv_dw_1/StatefulPartitionedCallStatefulPartitionedCall#conv1_relu/PartitionedCall:output:0conv_dw_1_961416*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_960891í
$conv_dw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_1/StatefulPartitionedCall:output:0conv_dw_1_bn_961419conv_dw_1_bn_961421conv_dw_1_bn_961423conv_dw_1_bn_961425*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960504
conv_dw_1_relu/PartitionedCallPartitionedCall-conv_dw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_960909
!conv_pw_1/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_1_relu/PartitionedCall:output:0conv_pw_1_961429*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_960918í
$conv_pw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_1/StatefulPartitionedCall:output:0conv_pw_1_bn_961432conv_pw_1_bn_961434conv_pw_1_bn_961436conv_pw_1_bn_961438*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960568
conv_pw_1_relu/PartitionedCallPartitionedCall-conv_pw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_960936ú
conv_pad_2/PartitionedCallPartitionedCall'conv_pw_1_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_960589
!conv_dw_2/StatefulPartitionedCallStatefulPartitionedCall#conv_pad_2/PartitionedCall:output:0conv_dw_2_961443*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_960948í
$conv_dw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_2/StatefulPartitionedCall:output:0conv_dw_2_bn_961446conv_dw_2_bn_961448conv_dw_2_bn_961450conv_dw_2_bn_961452*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960645
conv_dw_2_relu/PartitionedCallPartitionedCall-conv_dw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_960966
!conv_pw_2/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_2_relu/PartitionedCall:output:0conv_pw_2_961456*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_960975î
$conv_pw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_2/StatefulPartitionedCall:output:0conv_pw_2_bn_961459conv_pw_2_bn_961461conv_pw_2_bn_961463conv_pw_2_bn_961465*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960709
conv_pw_2_relu/PartitionedCallPartitionedCall-conv_pw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_960993
!conv_dw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_pw_2_relu/PartitionedCall:output:0conv_dw_3_961469*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_961004î
$conv_dw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_3/StatefulPartitionedCall:output:0conv_dw_3_bn_961472conv_dw_3_bn_961474conv_dw_3_bn_961476conv_dw_3_bn_961478*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960773
conv_dw_3_relu/PartitionedCallPartitionedCall-conv_dw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_961022
!conv_pw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_3_relu/PartitionedCall:output:0conv_pw_3_961482*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_961031î
$conv_pw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_3/StatefulPartitionedCall:output:0conv_pw_3_bn_961485conv_pw_3_bn_961487conv_pw_3_bn_961489conv_pw_3_bn_961491*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960837
conv_pw_3_relu/PartitionedCallPartitionedCall-conv_pw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_961049æ
reshape_18/PartitionedCallPartitionedCall'conv_pw_3_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_18_layer_call_and_return_conditional_losses_961064Þ
flatten_36/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_36_layer_call_and_return_conditional_losses_961072î
"dropout_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_961206
 dense_62/StatefulPartitionedCallStatefulPartitionedCall+dropout_45/StatefulPartitionedCall:output:0dense_62_961498dense_62_961500*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_961092x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv1/StatefulPartitionedCall!^conv1_bn/StatefulPartitionedCall"^conv_dw_1/StatefulPartitionedCall%^conv_dw_1_bn/StatefulPartitionedCall"^conv_dw_2/StatefulPartitionedCall%^conv_dw_2_bn/StatefulPartitionedCall"^conv_dw_3/StatefulPartitionedCall%^conv_dw_3_bn/StatefulPartitionedCall"^conv_pw_1/StatefulPartitionedCall%^conv_pw_1_bn/StatefulPartitionedCall"^conv_pw_2/StatefulPartitionedCall%^conv_pw_2_bn/StatefulPartitionedCall"^conv_pw_3/StatefulPartitionedCall%^conv_pw_3_bn/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall#^dropout_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2D
 conv1_bn/StatefulPartitionedCall conv1_bn/StatefulPartitionedCall2F
!conv_dw_1/StatefulPartitionedCall!conv_dw_1/StatefulPartitionedCall2L
$conv_dw_1_bn/StatefulPartitionedCall$conv_dw_1_bn/StatefulPartitionedCall2F
!conv_dw_2/StatefulPartitionedCall!conv_dw_2/StatefulPartitionedCall2L
$conv_dw_2_bn/StatefulPartitionedCall$conv_dw_2_bn/StatefulPartitionedCall2F
!conv_dw_3/StatefulPartitionedCall!conv_dw_3/StatefulPartitionedCall2L
$conv_dw_3_bn/StatefulPartitionedCall$conv_dw_3_bn/StatefulPartitionedCall2F
!conv_pw_1/StatefulPartitionedCall!conv_pw_1/StatefulPartitionedCall2L
$conv_pw_1_bn/StatefulPartitionedCall$conv_pw_1_bn/StatefulPartitionedCall2F
!conv_pw_2/StatefulPartitionedCall!conv_pw_2/StatefulPartitionedCall2L
$conv_pw_2_bn/StatefulPartitionedCall$conv_pw_2_bn/StatefulPartitionedCall2F
!conv_pw_3/StatefulPartitionedCall!conv_pw_3/StatefulPartitionedCall2L
$conv_pw_3_bn/StatefulPartitionedCall$conv_pw_3_bn/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2H
"dropout_45/StatefulPartitionedCall"dropout_45/StatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
·
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_960975

inputs9
conv2d_readvariableop_resource:@
identity¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0¬
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
y
IdentityIdentityConv2D:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç
¶
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_962622

inputs8
conv2d_readvariableop_resource: @
identity¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ä
b
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_962705

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é	
¼
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_960891

inputs;
!depthwise_readvariableop_resource: 
identity¢depthwise/ReadVariableOp
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      À
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
{
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ a
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs


e
F__inference_dropout_45_layer_call_and_return_conditional_losses_963109

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
Þ
!
D__inference_model_21_layer_call_and_return_conditional_losses_962353

inputs>
$conv1_conv2d_readvariableop_resource: .
 conv1_bn_readvariableop_resource: 0
"conv1_bn_readvariableop_1_resource: ?
1conv1_bn_fusedbatchnormv3_readvariableop_resource: A
3conv1_bn_fusedbatchnormv3_readvariableop_1_resource: E
+conv_dw_1_depthwise_readvariableop_resource: 2
$conv_dw_1_bn_readvariableop_resource: 4
&conv_dw_1_bn_readvariableop_1_resource: C
5conv_dw_1_bn_fusedbatchnormv3_readvariableop_resource: E
7conv_dw_1_bn_fusedbatchnormv3_readvariableop_1_resource: B
(conv_pw_1_conv2d_readvariableop_resource: @2
$conv_pw_1_bn_readvariableop_resource:@4
&conv_pw_1_bn_readvariableop_1_resource:@C
5conv_pw_1_bn_fusedbatchnormv3_readvariableop_resource:@E
7conv_pw_1_bn_fusedbatchnormv3_readvariableop_1_resource:@E
+conv_dw_2_depthwise_readvariableop_resource:@2
$conv_dw_2_bn_readvariableop_resource:@4
&conv_dw_2_bn_readvariableop_1_resource:@C
5conv_dw_2_bn_fusedbatchnormv3_readvariableop_resource:@E
7conv_dw_2_bn_fusedbatchnormv3_readvariableop_1_resource:@C
(conv_pw_2_conv2d_readvariableop_resource:@3
$conv_pw_2_bn_readvariableop_resource:	5
&conv_pw_2_bn_readvariableop_1_resource:	D
5conv_pw_2_bn_fusedbatchnormv3_readvariableop_resource:	F
7conv_pw_2_bn_fusedbatchnormv3_readvariableop_1_resource:	F
+conv_dw_3_depthwise_readvariableop_resource:3
$conv_dw_3_bn_readvariableop_resource:	5
&conv_dw_3_bn_readvariableop_1_resource:	D
5conv_dw_3_bn_fusedbatchnormv3_readvariableop_resource:	F
7conv_dw_3_bn_fusedbatchnormv3_readvariableop_1_resource:	D
(conv_pw_3_conv2d_readvariableop_resource:3
$conv_pw_3_bn_readvariableop_resource:	5
&conv_pw_3_bn_readvariableop_1_resource:	D
5conv_pw_3_bn_fusedbatchnormv3_readvariableop_resource:	F
7conv_pw_3_bn_fusedbatchnormv3_readvariableop_1_resource:	;
'dense_62_matmul_readvariableop_resource:
À6
(dense_62_biasadd_readvariableop_resource:
identity¢conv1/Conv2D/ReadVariableOp¢conv1_bn/AssignNewValue¢conv1_bn/AssignNewValue_1¢(conv1_bn/FusedBatchNormV3/ReadVariableOp¢*conv1_bn/FusedBatchNormV3/ReadVariableOp_1¢conv1_bn/ReadVariableOp¢conv1_bn/ReadVariableOp_1¢"conv_dw_1/depthwise/ReadVariableOp¢conv_dw_1_bn/AssignNewValue¢conv_dw_1_bn/AssignNewValue_1¢,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp¢.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_dw_1_bn/ReadVariableOp¢conv_dw_1_bn/ReadVariableOp_1¢"conv_dw_2/depthwise/ReadVariableOp¢conv_dw_2_bn/AssignNewValue¢conv_dw_2_bn/AssignNewValue_1¢,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp¢.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_dw_2_bn/ReadVariableOp¢conv_dw_2_bn/ReadVariableOp_1¢"conv_dw_3/depthwise/ReadVariableOp¢conv_dw_3_bn/AssignNewValue¢conv_dw_3_bn/AssignNewValue_1¢,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp¢.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_dw_3_bn/ReadVariableOp¢conv_dw_3_bn/ReadVariableOp_1¢conv_pw_1/Conv2D/ReadVariableOp¢conv_pw_1_bn/AssignNewValue¢conv_pw_1_bn/AssignNewValue_1¢,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp¢.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_pw_1_bn/ReadVariableOp¢conv_pw_1_bn/ReadVariableOp_1¢conv_pw_2/Conv2D/ReadVariableOp¢conv_pw_2_bn/AssignNewValue¢conv_pw_2_bn/AssignNewValue_1¢,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp¢.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_pw_2_bn/ReadVariableOp¢conv_pw_2_bn/ReadVariableOp_1¢conv_pw_3/Conv2D/ReadVariableOp¢conv_pw_3_bn/AssignNewValue¢conv_pw_3_bn/AssignNewValue_1¢,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp¢.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1¢conv_pw_3_bn/ReadVariableOp¢conv_pw_3_bn/ReadVariableOp_1¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp
conv1/Conv2D/ReadVariableOpReadVariableOp$conv1_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0·
conv1/Conv2DConv2Dinputs#conv1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
t
conv1_bn/ReadVariableOpReadVariableOp conv1_bn_readvariableop_resource*
_output_shapes
: *
dtype0x
conv1_bn/ReadVariableOp_1ReadVariableOp"conv1_bn_readvariableop_1_resource*
_output_shapes
: *
dtype0
(conv1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp1conv1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
*conv1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp3conv1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0
conv1_bn/FusedBatchNormV3FusedBatchNormV3conv1/Conv2D:output:0conv1_bn/ReadVariableOp:value:0!conv1_bn/ReadVariableOp_1:value:00conv1_bn/FusedBatchNormV3/ReadVariableOp:value:02conv1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<Ô
conv1_bn/AssignNewValueAssignVariableOp1conv1_bn_fusedbatchnormv3_readvariableop_resource&conv1_bn/FusedBatchNormV3:batch_mean:0)^conv1_bn/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0Þ
conv1_bn/AssignNewValue_1AssignVariableOp3conv1_bn_fusedbatchnormv3_readvariableop_1_resource*conv1_bn/FusedBatchNormV3:batch_variance:0+^conv1_bn/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv1_relu/Relu6Relu6conv1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
"conv_dw_1/depthwise/ReadVariableOpReadVariableOp+conv_dw_1_depthwise_readvariableop_resource*&
_output_shapes
: *
dtype0r
conv_dw_1/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"             r
!conv_dw_1/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ì
conv_dw_1/depthwiseDepthwiseConv2dNativeconv1_relu/Relu6:activations:0*conv_dw_1/depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
|
conv_dw_1_bn/ReadVariableOpReadVariableOp$conv_dw_1_bn_readvariableop_resource*
_output_shapes
: *
dtype0
conv_dw_1_bn/ReadVariableOp_1ReadVariableOp&conv_dw_1_bn_readvariableop_1_resource*
_output_shapes
: *
dtype0
,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_dw_1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0¢
.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_dw_1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0­
conv_dw_1_bn/FusedBatchNormV3FusedBatchNormV3conv_dw_1/depthwise:output:0#conv_dw_1_bn/ReadVariableOp:value:0%conv_dw_1_bn/ReadVariableOp_1:value:04conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<ä
conv_dw_1_bn/AssignNewValueAssignVariableOp5conv_dw_1_bn_fusedbatchnormv3_readvariableop_resource*conv_dw_1_bn/FusedBatchNormV3:batch_mean:0-^conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0î
conv_dw_1_bn/AssignNewValue_1AssignVariableOp7conv_dw_1_bn_fusedbatchnormv3_readvariableop_1_resource.conv_dw_1_bn/FusedBatchNormV3:batch_variance:0/^conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv_dw_1_relu/Relu6Relu6!conv_dw_1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
conv_pw_1/Conv2D/ReadVariableOpReadVariableOp(conv_pw_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Û
conv_pw_1/Conv2DConv2D"conv_dw_1_relu/Relu6:activations:0'conv_pw_1/Conv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
|
conv_pw_1_bn/ReadVariableOpReadVariableOp$conv_pw_1_bn_readvariableop_resource*
_output_shapes
:@*
dtype0
conv_pw_1_bn/ReadVariableOp_1ReadVariableOp&conv_pw_1_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype0
,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_pw_1_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¢
.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_pw_1_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ª
conv_pw_1_bn/FusedBatchNormV3FusedBatchNormV3conv_pw_1/Conv2D:output:0#conv_pw_1_bn/ReadVariableOp:value:0%conv_pw_1_bn/ReadVariableOp_1:value:04conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<ä
conv_pw_1_bn/AssignNewValueAssignVariableOp5conv_pw_1_bn_fusedbatchnormv3_readvariableop_resource*conv_pw_1_bn/FusedBatchNormV3:batch_mean:0-^conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0î
conv_pw_1_bn/AssignNewValue_1AssignVariableOp7conv_pw_1_bn_fusedbatchnormv3_readvariableop_1_resource.conv_pw_1_bn/FusedBatchNormV3:batch_variance:0/^conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv_pw_1_relu/Relu6Relu6!conv_pw_1_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
conv_pad_2/Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               §
conv_pad_2/PadPad"conv_pw_1_relu/Relu6:activations:0 conv_pad_2/Pad/paddings:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"conv_dw_2/depthwise/ReadVariableOpReadVariableOp+conv_dw_2_depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0r
conv_dw_2/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      r
!conv_dw_2/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      æ
conv_dw_2/depthwiseDepthwiseConv2dNativeconv_pad_2/Pad:output:0*conv_dw_2/depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
|
conv_dw_2_bn/ReadVariableOpReadVariableOp$conv_dw_2_bn_readvariableop_resource*
_output_shapes
:@*
dtype0
conv_dw_2_bn/ReadVariableOp_1ReadVariableOp&conv_dw_2_bn_readvariableop_1_resource*
_output_shapes
:@*
dtype0
,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_dw_2_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0¢
.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_dw_2_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0­
conv_dw_2_bn/FusedBatchNormV3FusedBatchNormV3conv_dw_2/depthwise:output:0#conv_dw_2_bn/ReadVariableOp:value:0%conv_dw_2_bn/ReadVariableOp_1:value:04conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<ä
conv_dw_2_bn/AssignNewValueAssignVariableOp5conv_dw_2_bn_fusedbatchnormv3_readvariableop_resource*conv_dw_2_bn/FusedBatchNormV3:batch_mean:0-^conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0î
conv_dw_2_bn/AssignNewValue_1AssignVariableOp7conv_dw_2_bn_fusedbatchnormv3_readvariableop_1_resource.conv_dw_2_bn/FusedBatchNormV3:batch_variance:0/^conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv_dw_2_relu/Relu6Relu6!conv_dw_2_bn/FusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
conv_pw_2/Conv2D/ReadVariableOpReadVariableOp(conv_pw_2_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ü
conv_pw_2/Conv2DConv2D"conv_dw_2_relu/Relu6:activations:0'conv_pw_2/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
}
conv_pw_2_bn/ReadVariableOpReadVariableOp$conv_pw_2_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
conv_pw_2_bn/ReadVariableOp_1ReadVariableOp&conv_pw_2_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0
,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_pw_2_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0£
.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_pw_2_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0¯
conv_pw_2_bn/FusedBatchNormV3FusedBatchNormV3conv_pw_2/Conv2D:output:0#conv_pw_2_bn/ReadVariableOp:value:0%conv_pw_2_bn/ReadVariableOp_1:value:04conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<ä
conv_pw_2_bn/AssignNewValueAssignVariableOp5conv_pw_2_bn_fusedbatchnormv3_readvariableop_resource*conv_pw_2_bn/FusedBatchNormV3:batch_mean:0-^conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0î
conv_pw_2_bn/AssignNewValue_1AssignVariableOp7conv_pw_2_bn_fusedbatchnormv3_readvariableop_1_resource.conv_pw_2_bn/FusedBatchNormV3:batch_variance:0/^conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv_pw_2_relu/Relu6Relu6!conv_pw_2_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"conv_dw_3/depthwise/ReadVariableOpReadVariableOp+conv_dw_3_depthwise_readvariableop_resource*'
_output_shapes
:*
dtype0r
conv_dw_3/depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            r
!conv_dw_3/depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      ñ
conv_dw_3/depthwiseDepthwiseConv2dNative"conv_pw_2_relu/Relu6:activations:0*conv_dw_3/depthwise/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
}
conv_dw_3_bn/ReadVariableOpReadVariableOp$conv_dw_3_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
conv_dw_3_bn/ReadVariableOp_1ReadVariableOp&conv_dw_3_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0
,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_dw_3_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0£
.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_dw_3_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0²
conv_dw_3_bn/FusedBatchNormV3FusedBatchNormV3conv_dw_3/depthwise:output:0#conv_dw_3_bn/ReadVariableOp:value:0%conv_dw_3_bn/ReadVariableOp_1:value:04conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<ä
conv_dw_3_bn/AssignNewValueAssignVariableOp5conv_dw_3_bn_fusedbatchnormv3_readvariableop_resource*conv_dw_3_bn/FusedBatchNormV3:batch_mean:0-^conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0î
conv_dw_3_bn/AssignNewValue_1AssignVariableOp7conv_dw_3_bn_fusedbatchnormv3_readvariableop_1_resource.conv_dw_3_bn/FusedBatchNormV3:batch_variance:0/^conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv_dw_3_relu/Relu6Relu6!conv_dw_3_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
conv_pw_3/Conv2D/ReadVariableOpReadVariableOp(conv_pw_3_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ü
conv_pw_3/Conv2DConv2D"conv_dw_3_relu/Relu6:activations:0'conv_pw_3/Conv2D/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
}
conv_pw_3_bn/ReadVariableOpReadVariableOp$conv_pw_3_bn_readvariableop_resource*
_output_shapes	
:*
dtype0
conv_pw_3_bn/ReadVariableOp_1ReadVariableOp&conv_pw_3_bn_readvariableop_1_resource*
_output_shapes	
:*
dtype0
,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOpReadVariableOp5conv_pw_3_bn_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0£
.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp7conv_pw_3_bn_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0¯
conv_pw_3_bn/FusedBatchNormV3FusedBatchNormV3conv_pw_3/Conv2D:output:0#conv_pw_3_bn/ReadVariableOp:value:0%conv_pw_3_bn/ReadVariableOp_1:value:04conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp:value:06conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<ä
conv_pw_3_bn/AssignNewValueAssignVariableOp5conv_pw_3_bn_fusedbatchnormv3_readvariableop_resource*conv_pw_3_bn/FusedBatchNormV3:batch_mean:0-^conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0î
conv_pw_3_bn/AssignNewValue_1AssignVariableOp7conv_pw_3_bn_fusedbatchnormv3_readvariableop_1_resource.conv_pw_3_bn/FusedBatchNormV3:batch_variance:0/^conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0
conv_pw_3_relu/Relu6Relu6!conv_pw_3_bn/FusedBatchNormV3:y:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿb
reshape_18/ShapeShape"conv_pw_3_relu/Relu6:activations:0*
T0*
_output_shapes
:h
reshape_18/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_18/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_18/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_18/strided_sliceStridedSlicereshape_18/Shape:output:0'reshape_18/strided_slice/stack:output:0)reshape_18/strided_slice/stack_1:output:0)reshape_18/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_18/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :À]
reshape_18/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :»
reshape_18/Reshape/shapePack!reshape_18/strided_slice:output:0#reshape_18/Reshape/shape/1:output:0#reshape_18/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_18/ReshapeReshape"conv_pw_3_relu/Relu6:activations:0!reshape_18/Reshape/shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀa
flatten_36/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_36/ReshapeReshapereshape_18/Reshape:output:0flatten_36/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
dropout_45/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_45/dropout/MulMulflatten_36/Reshape:output:0!dropout_45/dropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
dropout_45/dropout/ShapeShapeflatten_36/Reshape:output:0*
T0*
_output_shapes
:¤
/dropout_45/dropout/random_uniform/RandomUniformRandomUniform!dropout_45/dropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0f
!dropout_45/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?É
dropout_45/dropout/GreaterEqualGreaterEqual8dropout_45/dropout/random_uniform/RandomUniform:output:0*dropout_45/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dropout_45/dropout/CastCast#dropout_45/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dropout_45/dropout/Mul_1Muldropout_45/dropout/Mul:z:0dropout_45/dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0
dense_62/MatMulMatMuldropout_45/dropout/Mul_1:z:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_62/SoftmaxSoftmaxdense_62/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_62/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿè
NoOpNoOp^conv1/Conv2D/ReadVariableOp^conv1_bn/AssignNewValue^conv1_bn/AssignNewValue_1)^conv1_bn/FusedBatchNormV3/ReadVariableOp+^conv1_bn/FusedBatchNormV3/ReadVariableOp_1^conv1_bn/ReadVariableOp^conv1_bn/ReadVariableOp_1#^conv_dw_1/depthwise/ReadVariableOp^conv_dw_1_bn/AssignNewValue^conv_dw_1_bn/AssignNewValue_1-^conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp/^conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1^conv_dw_1_bn/ReadVariableOp^conv_dw_1_bn/ReadVariableOp_1#^conv_dw_2/depthwise/ReadVariableOp^conv_dw_2_bn/AssignNewValue^conv_dw_2_bn/AssignNewValue_1-^conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp/^conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1^conv_dw_2_bn/ReadVariableOp^conv_dw_2_bn/ReadVariableOp_1#^conv_dw_3/depthwise/ReadVariableOp^conv_dw_3_bn/AssignNewValue^conv_dw_3_bn/AssignNewValue_1-^conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp/^conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1^conv_dw_3_bn/ReadVariableOp^conv_dw_3_bn/ReadVariableOp_1 ^conv_pw_1/Conv2D/ReadVariableOp^conv_pw_1_bn/AssignNewValue^conv_pw_1_bn/AssignNewValue_1-^conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp/^conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1^conv_pw_1_bn/ReadVariableOp^conv_pw_1_bn/ReadVariableOp_1 ^conv_pw_2/Conv2D/ReadVariableOp^conv_pw_2_bn/AssignNewValue^conv_pw_2_bn/AssignNewValue_1-^conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp/^conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1^conv_pw_2_bn/ReadVariableOp^conv_pw_2_bn/ReadVariableOp_1 ^conv_pw_3/Conv2D/ReadVariableOp^conv_pw_3_bn/AssignNewValue^conv_pw_3_bn/AssignNewValue_1-^conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp/^conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1^conv_pw_3_bn/ReadVariableOp^conv_pw_3_bn/ReadVariableOp_1 ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2:
conv1/Conv2D/ReadVariableOpconv1/Conv2D/ReadVariableOp22
conv1_bn/AssignNewValueconv1_bn/AssignNewValue26
conv1_bn/AssignNewValue_1conv1_bn/AssignNewValue_12T
(conv1_bn/FusedBatchNormV3/ReadVariableOp(conv1_bn/FusedBatchNormV3/ReadVariableOp2X
*conv1_bn/FusedBatchNormV3/ReadVariableOp_1*conv1_bn/FusedBatchNormV3/ReadVariableOp_122
conv1_bn/ReadVariableOpconv1_bn/ReadVariableOp26
conv1_bn/ReadVariableOp_1conv1_bn/ReadVariableOp_12H
"conv_dw_1/depthwise/ReadVariableOp"conv_dw_1/depthwise/ReadVariableOp2:
conv_dw_1_bn/AssignNewValueconv_dw_1_bn/AssignNewValue2>
conv_dw_1_bn/AssignNewValue_1conv_dw_1_bn/AssignNewValue_12\
,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp,conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_1.conv_dw_1_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_dw_1_bn/ReadVariableOpconv_dw_1_bn/ReadVariableOp2>
conv_dw_1_bn/ReadVariableOp_1conv_dw_1_bn/ReadVariableOp_12H
"conv_dw_2/depthwise/ReadVariableOp"conv_dw_2/depthwise/ReadVariableOp2:
conv_dw_2_bn/AssignNewValueconv_dw_2_bn/AssignNewValue2>
conv_dw_2_bn/AssignNewValue_1conv_dw_2_bn/AssignNewValue_12\
,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp,conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_1.conv_dw_2_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_dw_2_bn/ReadVariableOpconv_dw_2_bn/ReadVariableOp2>
conv_dw_2_bn/ReadVariableOp_1conv_dw_2_bn/ReadVariableOp_12H
"conv_dw_3/depthwise/ReadVariableOp"conv_dw_3/depthwise/ReadVariableOp2:
conv_dw_3_bn/AssignNewValueconv_dw_3_bn/AssignNewValue2>
conv_dw_3_bn/AssignNewValue_1conv_dw_3_bn/AssignNewValue_12\
,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp,conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_1.conv_dw_3_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_dw_3_bn/ReadVariableOpconv_dw_3_bn/ReadVariableOp2>
conv_dw_3_bn/ReadVariableOp_1conv_dw_3_bn/ReadVariableOp_12B
conv_pw_1/Conv2D/ReadVariableOpconv_pw_1/Conv2D/ReadVariableOp2:
conv_pw_1_bn/AssignNewValueconv_pw_1_bn/AssignNewValue2>
conv_pw_1_bn/AssignNewValue_1conv_pw_1_bn/AssignNewValue_12\
,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp,conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_1.conv_pw_1_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_pw_1_bn/ReadVariableOpconv_pw_1_bn/ReadVariableOp2>
conv_pw_1_bn/ReadVariableOp_1conv_pw_1_bn/ReadVariableOp_12B
conv_pw_2/Conv2D/ReadVariableOpconv_pw_2/Conv2D/ReadVariableOp2:
conv_pw_2_bn/AssignNewValueconv_pw_2_bn/AssignNewValue2>
conv_pw_2_bn/AssignNewValue_1conv_pw_2_bn/AssignNewValue_12\
,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp,conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_1.conv_pw_2_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_pw_2_bn/ReadVariableOpconv_pw_2_bn/ReadVariableOp2>
conv_pw_2_bn/ReadVariableOp_1conv_pw_2_bn/ReadVariableOp_12B
conv_pw_3/Conv2D/ReadVariableOpconv_pw_3/Conv2D/ReadVariableOp2:
conv_pw_3_bn/AssignNewValueconv_pw_3_bn/AssignNewValue2>
conv_pw_3_bn/AssignNewValue_1conv_pw_3_bn/AssignNewValue_12\
,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp,conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp2`
.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_1.conv_pw_3_bn/FusedBatchNormV3/ReadVariableOp_12:
conv_pw_3_bn/ReadVariableOpconv_pw_3_bn/ReadVariableOp2>
conv_pw_3_bn/ReadVariableOp_1conv_pw_3_bn/ReadVariableOp_12B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960537

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
v
Ó
D__inference_model_21_layer_call_and_return_conditional_losses_961099

inputs&
conv1_960863: 
conv1_bn_960866: 
conv1_bn_960868: 
conv1_bn_960870: 
conv1_bn_960872: *
conv_dw_1_960892: !
conv_dw_1_bn_960895: !
conv_dw_1_bn_960897: !
conv_dw_1_bn_960899: !
conv_dw_1_bn_960901: *
conv_pw_1_960919: @!
conv_pw_1_bn_960922:@!
conv_pw_1_bn_960924:@!
conv_pw_1_bn_960926:@!
conv_pw_1_bn_960928:@*
conv_dw_2_960949:@!
conv_dw_2_bn_960952:@!
conv_dw_2_bn_960954:@!
conv_dw_2_bn_960956:@!
conv_dw_2_bn_960958:@+
conv_pw_2_960976:@"
conv_pw_2_bn_960979:	"
conv_pw_2_bn_960981:	"
conv_pw_2_bn_960983:	"
conv_pw_2_bn_960985:	+
conv_dw_3_961005:"
conv_dw_3_bn_961008:	"
conv_dw_3_bn_961010:	"
conv_dw_3_bn_961012:	"
conv_dw_3_bn_961014:	,
conv_pw_3_961032:"
conv_pw_3_bn_961035:	"
conv_pw_3_bn_961037:	"
conv_pw_3_bn_961039:	"
conv_pw_3_bn_961041:	#
dense_62_961093:
À
dense_62_961095:
identity¢conv1/StatefulPartitionedCall¢ conv1_bn/StatefulPartitionedCall¢!conv_dw_1/StatefulPartitionedCall¢$conv_dw_1_bn/StatefulPartitionedCall¢!conv_dw_2/StatefulPartitionedCall¢$conv_dw_2_bn/StatefulPartitionedCall¢!conv_dw_3/StatefulPartitionedCall¢$conv_dw_3_bn/StatefulPartitionedCall¢!conv_pw_1/StatefulPartitionedCall¢$conv_pw_1_bn/StatefulPartitionedCall¢!conv_pw_2/StatefulPartitionedCall¢$conv_pw_2_bn/StatefulPartitionedCall¢!conv_pw_3/StatefulPartitionedCall¢$conv_pw_3_bn/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCallñ
conv1/StatefulPartitionedCallStatefulPartitionedCallinputsconv1_960863*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_960862Ó
 conv1_bn/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0conv1_bn_960866conv1_bn_960868conv1_bn_960870conv1_bn_960872*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv1_bn_layer_call_and_return_conditional_losses_960409ü
conv1_relu/PartitionedCallPartitionedCall)conv1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv1_relu_layer_call_and_return_conditional_losses_960880
!conv_dw_1/StatefulPartitionedCallStatefulPartitionedCall#conv1_relu/PartitionedCall:output:0conv_dw_1_960892*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_960891ï
$conv_dw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_1/StatefulPartitionedCall:output:0conv_dw_1_bn_960895conv_dw_1_bn_960897conv_dw_1_bn_960899conv_dw_1_bn_960901*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960473
conv_dw_1_relu/PartitionedCallPartitionedCall-conv_dw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_960909
!conv_pw_1/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_1_relu/PartitionedCall:output:0conv_pw_1_960919*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_960918ï
$conv_pw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_1/StatefulPartitionedCall:output:0conv_pw_1_bn_960922conv_pw_1_bn_960924conv_pw_1_bn_960926conv_pw_1_bn_960928*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960537
conv_pw_1_relu/PartitionedCallPartitionedCall-conv_pw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_960936ú
conv_pad_2/PartitionedCallPartitionedCall'conv_pw_1_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_960589
!conv_dw_2/StatefulPartitionedCallStatefulPartitionedCall#conv_pad_2/PartitionedCall:output:0conv_dw_2_960949*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_960948ï
$conv_dw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_2/StatefulPartitionedCall:output:0conv_dw_2_bn_960952conv_dw_2_bn_960954conv_dw_2_bn_960956conv_dw_2_bn_960958*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960614
conv_dw_2_relu/PartitionedCallPartitionedCall-conv_dw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_960966
!conv_pw_2/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_2_relu/PartitionedCall:output:0conv_pw_2_960976*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_960975ð
$conv_pw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_2/StatefulPartitionedCall:output:0conv_pw_2_bn_960979conv_pw_2_bn_960981conv_pw_2_bn_960983conv_pw_2_bn_960985*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960678
conv_pw_2_relu/PartitionedCallPartitionedCall-conv_pw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_960993
!conv_dw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_pw_2_relu/PartitionedCall:output:0conv_dw_3_961005*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_961004ð
$conv_dw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_3/StatefulPartitionedCall:output:0conv_dw_3_bn_961008conv_dw_3_bn_961010conv_dw_3_bn_961012conv_dw_3_bn_961014*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960742
conv_dw_3_relu/PartitionedCallPartitionedCall-conv_dw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_961022
!conv_pw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_3_relu/PartitionedCall:output:0conv_pw_3_961032*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_961031ð
$conv_pw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_3/StatefulPartitionedCall:output:0conv_pw_3_bn_961035conv_pw_3_bn_961037conv_pw_3_bn_961039conv_pw_3_bn_961041*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960806
conv_pw_3_relu/PartitionedCallPartitionedCall-conv_pw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_961049æ
reshape_18/PartitionedCallPartitionedCall'conv_pw_3_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_18_layer_call_and_return_conditional_losses_961064Þ
flatten_36/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_36_layer_call_and_return_conditional_losses_961072Þ
dropout_45/PartitionedCallPartitionedCall#flatten_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_961079
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#dropout_45/PartitionedCall:output:0dense_62_961093dense_62_961095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_961092x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp^conv1/StatefulPartitionedCall!^conv1_bn/StatefulPartitionedCall"^conv_dw_1/StatefulPartitionedCall%^conv_dw_1_bn/StatefulPartitionedCall"^conv_dw_2/StatefulPartitionedCall%^conv_dw_2_bn/StatefulPartitionedCall"^conv_dw_3/StatefulPartitionedCall%^conv_dw_3_bn/StatefulPartitionedCall"^conv_pw_1/StatefulPartitionedCall%^conv_pw_1_bn/StatefulPartitionedCall"^conv_pw_2/StatefulPartitionedCall%^conv_pw_2_bn/StatefulPartitionedCall"^conv_pw_3/StatefulPartitionedCall%^conv_pw_3_bn/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2D
 conv1_bn/StatefulPartitionedCall conv1_bn/StatefulPartitionedCall2F
!conv_dw_1/StatefulPartitionedCall!conv_dw_1/StatefulPartitionedCall2L
$conv_dw_1_bn/StatefulPartitionedCall$conv_dw_1_bn/StatefulPartitionedCall2F
!conv_dw_2/StatefulPartitionedCall!conv_dw_2/StatefulPartitionedCall2L
$conv_dw_2_bn/StatefulPartitionedCall$conv_dw_2_bn/StatefulPartitionedCall2F
!conv_dw_3/StatefulPartitionedCall!conv_dw_3/StatefulPartitionedCall2L
$conv_dw_3_bn/StatefulPartitionedCall$conv_dw_3_bn/StatefulPartitionedCall2F
!conv_pw_1/StatefulPartitionedCall!conv_pw_1/StatefulPartitionedCall2L
$conv_pw_1_bn/StatefulPartitionedCall$conv_pw_1_bn/StatefulPartitionedCall2F
!conv_pw_2/StatefulPartitionedCall!conv_pw_2/StatefulPartitionedCall2L
$conv_pw_2_bn/StatefulPartitionedCall$conv_pw_2_bn/StatefulPartitionedCall2F
!conv_pw_3/StatefulPartitionedCall!conv_pw_3/StatefulPartitionedCall2L
$conv_pw_3_bn/StatefulPartitionedCall$conv_pw_3_bn/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯w
ú
D__inference_model_21_layer_call_and_return_conditional_losses_961868
input_21&
conv1_961767: 
conv1_bn_961770: 
conv1_bn_961772: 
conv1_bn_961774: 
conv1_bn_961776: *
conv_dw_1_961780: !
conv_dw_1_bn_961783: !
conv_dw_1_bn_961785: !
conv_dw_1_bn_961787: !
conv_dw_1_bn_961789: *
conv_pw_1_961793: @!
conv_pw_1_bn_961796:@!
conv_pw_1_bn_961798:@!
conv_pw_1_bn_961800:@!
conv_pw_1_bn_961802:@*
conv_dw_2_961807:@!
conv_dw_2_bn_961810:@!
conv_dw_2_bn_961812:@!
conv_dw_2_bn_961814:@!
conv_dw_2_bn_961816:@+
conv_pw_2_961820:@"
conv_pw_2_bn_961823:	"
conv_pw_2_bn_961825:	"
conv_pw_2_bn_961827:	"
conv_pw_2_bn_961829:	+
conv_dw_3_961833:"
conv_dw_3_bn_961836:	"
conv_dw_3_bn_961838:	"
conv_dw_3_bn_961840:	"
conv_dw_3_bn_961842:	,
conv_pw_3_961846:"
conv_pw_3_bn_961849:	"
conv_pw_3_bn_961851:	"
conv_pw_3_bn_961853:	"
conv_pw_3_bn_961855:	#
dense_62_961862:
À
dense_62_961864:
identity¢conv1/StatefulPartitionedCall¢ conv1_bn/StatefulPartitionedCall¢!conv_dw_1/StatefulPartitionedCall¢$conv_dw_1_bn/StatefulPartitionedCall¢!conv_dw_2/StatefulPartitionedCall¢$conv_dw_2_bn/StatefulPartitionedCall¢!conv_dw_3/StatefulPartitionedCall¢$conv_dw_3_bn/StatefulPartitionedCall¢!conv_pw_1/StatefulPartitionedCall¢$conv_pw_1_bn/StatefulPartitionedCall¢!conv_pw_2/StatefulPartitionedCall¢$conv_pw_2_bn/StatefulPartitionedCall¢!conv_pw_3/StatefulPartitionedCall¢$conv_pw_3_bn/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢"dropout_45/StatefulPartitionedCalló
conv1/StatefulPartitionedCallStatefulPartitionedCallinput_21conv1_961767*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *J
fERC
A__inference_conv1_layer_call_and_return_conditional_losses_960862Ñ
 conv1_bn/StatefulPartitionedCallStatefulPartitionedCall&conv1/StatefulPartitionedCall:output:0conv1_bn_961770conv1_bn_961772conv1_bn_961774conv1_bn_961776*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv1_bn_layer_call_and_return_conditional_losses_960440ü
conv1_relu/PartitionedCallPartitionedCall)conv1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv1_relu_layer_call_and_return_conditional_losses_960880
!conv_dw_1/StatefulPartitionedCallStatefulPartitionedCall#conv1_relu/PartitionedCall:output:0conv_dw_1_961780*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_960891í
$conv_dw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_1/StatefulPartitionedCall:output:0conv_dw_1_bn_961783conv_dw_1_bn_961785conv_dw_1_bn_961787conv_dw_1_bn_961789*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960504
conv_dw_1_relu/PartitionedCallPartitionedCall-conv_dw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_960909
!conv_pw_1/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_1_relu/PartitionedCall:output:0conv_pw_1_961793*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_960918í
$conv_pw_1_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_1/StatefulPartitionedCall:output:0conv_pw_1_bn_961796conv_pw_1_bn_961798conv_pw_1_bn_961800conv_pw_1_bn_961802*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960568
conv_pw_1_relu/PartitionedCallPartitionedCall-conv_pw_1_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_960936ú
conv_pad_2/PartitionedCallPartitionedCall'conv_pw_1_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_960589
!conv_dw_2/StatefulPartitionedCallStatefulPartitionedCall#conv_pad_2/PartitionedCall:output:0conv_dw_2_961807*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_960948í
$conv_dw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_2/StatefulPartitionedCall:output:0conv_dw_2_bn_961810conv_dw_2_bn_961812conv_dw_2_bn_961814conv_dw_2_bn_961816*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960645
conv_dw_2_relu/PartitionedCallPartitionedCall-conv_dw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_960966
!conv_pw_2/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_2_relu/PartitionedCall:output:0conv_pw_2_961820*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_960975î
$conv_pw_2_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_2/StatefulPartitionedCall:output:0conv_pw_2_bn_961823conv_pw_2_bn_961825conv_pw_2_bn_961827conv_pw_2_bn_961829*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960709
conv_pw_2_relu/PartitionedCallPartitionedCall-conv_pw_2_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_960993
!conv_dw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_pw_2_relu/PartitionedCall:output:0conv_dw_3_961833*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_961004î
$conv_dw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_dw_3/StatefulPartitionedCall:output:0conv_dw_3_bn_961836conv_dw_3_bn_961838conv_dw_3_bn_961840conv_dw_3_bn_961842*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960773
conv_dw_3_relu/PartitionedCallPartitionedCall-conv_dw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_961022
!conv_pw_3/StatefulPartitionedCallStatefulPartitionedCall'conv_dw_3_relu/PartitionedCall:output:0conv_pw_3_961846*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_961031î
$conv_pw_3_bn/StatefulPartitionedCallStatefulPartitionedCall*conv_pw_3/StatefulPartitionedCall:output:0conv_pw_3_bn_961849conv_pw_3_bn_961851conv_pw_3_bn_961853conv_pw_3_bn_961855*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960837
conv_pw_3_relu/PartitionedCallPartitionedCall-conv_pw_3_bn/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_961049æ
reshape_18/PartitionedCallPartitionedCall'conv_pw_3_relu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_18_layer_call_and_return_conditional_losses_961064Þ
flatten_36/PartitionedCallPartitionedCall#reshape_18/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_flatten_36_layer_call_and_return_conditional_losses_961072î
"dropout_45/StatefulPartitionedCallStatefulPartitionedCall#flatten_36/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dropout_45_layer_call_and_return_conditional_losses_961206
 dense_62/StatefulPartitionedCallStatefulPartitionedCall+dropout_45/StatefulPartitionedCall:output:0dense_62_961862dense_62_961864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_961092x
IdentityIdentity)dense_62/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv1/StatefulPartitionedCall!^conv1_bn/StatefulPartitionedCall"^conv_dw_1/StatefulPartitionedCall%^conv_dw_1_bn/StatefulPartitionedCall"^conv_dw_2/StatefulPartitionedCall%^conv_dw_2_bn/StatefulPartitionedCall"^conv_dw_3/StatefulPartitionedCall%^conv_dw_3_bn/StatefulPartitionedCall"^conv_pw_1/StatefulPartitionedCall%^conv_pw_1_bn/StatefulPartitionedCall"^conv_pw_2/StatefulPartitionedCall%^conv_pw_2_bn/StatefulPartitionedCall"^conv_pw_3/StatefulPartitionedCall%^conv_pw_3_bn/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall#^dropout_45/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
conv1/StatefulPartitionedCallconv1/StatefulPartitionedCall2D
 conv1_bn/StatefulPartitionedCall conv1_bn/StatefulPartitionedCall2F
!conv_dw_1/StatefulPartitionedCall!conv_dw_1/StatefulPartitionedCall2L
$conv_dw_1_bn/StatefulPartitionedCall$conv_dw_1_bn/StatefulPartitionedCall2F
!conv_dw_2/StatefulPartitionedCall!conv_dw_2/StatefulPartitionedCall2L
$conv_dw_2_bn/StatefulPartitionedCall$conv_dw_2_bn/StatefulPartitionedCall2F
!conv_dw_3/StatefulPartitionedCall!conv_dw_3/StatefulPartitionedCall2L
$conv_dw_3_bn/StatefulPartitionedCall$conv_dw_3_bn/StatefulPartitionedCall2F
!conv_pw_1/StatefulPartitionedCall!conv_pw_1/StatefulPartitionedCall2L
$conv_pw_1_bn/StatefulPartitionedCall$conv_pw_1_bn/StatefulPartitionedCall2F
!conv_pw_2/StatefulPartitionedCall!conv_pw_2/StatefulPartitionedCall2L
$conv_pw_2_bn/StatefulPartitionedCall$conv_pw_2_bn/StatefulPartitionedCall2F
!conv_pw_3/StatefulPartitionedCall!conv_pw_3/StatefulPartitionedCall2L
$conv_pw_3_bn/StatefulPartitionedCall$conv_pw_3_bn/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2H
"dropout_45/StatefulPartitionedCall"dropout_45/StatefulPartitionedCall:k g
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
input_21
	
Ì
-__inference_conv_pw_2_bn_layer_call_fn_962833

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960709
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ
G
+__inference_reshape_18_layer_call_fn_963058

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_reshape_18_layer_call_and_return_conditional_losses_961064f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
³
D__inference_conv1_bn_layer_call_and_return_conditional_losses_962510

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¨

÷
D__inference_dense_62_layer_call_and_return_conditional_losses_963129

inputs2
matmul_readvariableop_resource:
À-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
À*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
	
È
-__inference_conv_pw_1_bn_layer_call_fn_962648

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960568
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
	
È
-__inference_conv_dw_2_bn_layer_call_fn_962734

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960614
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
·
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_962684

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
á
»
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_963043

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
¼
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_962721

inputs;
!depthwise_readvariableop_resource:@
identity¢depthwise/ReadVariableOp
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Á
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
{
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@a
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

	
)__inference_model_21_layer_call_fn_961953

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@%

unknown_19:@

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	%

unknown_24:

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:
À

unknown_35:
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_35*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*G
_read_only_resource_inputs)
'%	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_21_layer_call_and_return_conditional_losses_961099o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

K
/__inference_conv_dw_1_relu_layer_call_fn_962603

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_960909z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ç
¶
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_960918

inputs8
conv2d_readvariableop_resource: @
identity¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ã

H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_960614

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


*__inference_conv_dw_1_layer_call_fn_962527

inputs!
unknown: 
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_960891
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
á
»
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_962957

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
Ä
)__inference_conv1_bn_layer_call_fn_962461

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_conv1_bn_layer_call_and_return_conditional_losses_960409
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

G
+__inference_conv1_relu_layer_call_fn_962515

inputs
identityÎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv1_relu_layer_call_and_return_conditional_losses_960880z
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
þ
	
)__inference_model_21_layer_call_fn_962032

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: #
	unknown_4: 
	unknown_5: 
	unknown_6: 
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@$

unknown_14:@

unknown_15:@

unknown_16:@

unknown_17:@

unknown_18:@%

unknown_19:@

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	%

unknown_24:

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	&

unknown_29:

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:	

unknown_34:
À

unknown_35:
identity¢StatefulPartitionedCall¯
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_35*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*9
_read_only_resource_inputs
 !$%*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_21_layer_call_and_return_conditional_losses_961504o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesy
w:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ
b
F__inference_conv1_relu_layer_call_and_return_conditional_losses_962520

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ó

H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960742

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Í
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
b
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_960589

inputs
identity}
Pad/paddingsConst*
_output_shapes

:*
dtype0*9
value0B."                               ~
PadPadinputsPad/paddings:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
IdentityIdentityPad:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
b
F__inference_flatten_36_layer_call_and_return_conditional_losses_961072

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

K
/__inference_conv_dw_3_relu_layer_call_fn_962962

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_961022{
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
È
-__inference_conv_pw_1_bn_layer_call_fn_962635

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960537
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
	
Ì
-__inference_conv_pw_3_bn_layer_call_fn_963007

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_960837
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ì
-__inference_conv_pw_2_bn_layer_call_fn_962820

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960678
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


*__inference_conv_pw_2_layer_call_fn_962800

inputs"
unknown:@
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_960975
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ã
²
A__inference_conv1_layer_call_and_return_conditional_losses_962448

inputs8
conv2d_readvariableop_resource: 
identity¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_962765

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@°
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
½
f
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_963053

inputs
identityc
Relu6Relu6inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
IdentityIdentityRelu6:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
b
F__inference_flatten_36_layer_call_and_return_conditional_losses_963082

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:U Q
-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
	
Ì
-__inference_conv_dw_3_bn_layer_call_fn_962908

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960742
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
»
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960773

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
f
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_961049

inputs
identityc
Relu6Relu6inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
IdentityIdentityRelu6:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
È
-__inference_conv_dw_1_bn_layer_call_fn_962549

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960473
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
á
d
F__inference_dropout_45_layer_call_and_return_conditional_losses_963097

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
á
»
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_960709

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Û
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
f
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_962608

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
Ñ
·
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_962783

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

K
/__inference_conv_pw_3_relu_layer_call_fn_963048

inputs
identityÓ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_961049{
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
¼
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_960948

inputs;
!depthwise_readvariableop_resource:@
identity¢depthwise/ReadVariableOp
depthwise/ReadVariableOpReadVariableOp!depthwise_readvariableop_resource*&
_output_shapes
:@*
dtype0h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"      @      h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      Á
	depthwiseDepthwiseConv2dNativeinputs depthwise/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingVALID*
strides
{
IdentityIdentitydepthwise:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@a
NoOpNoOp^depthwise/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 24
depthwise/ReadVariableOpdepthwise/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹
f
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_960909

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ :i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
	
Ì
-__inference_conv_dw_3_bn_layer_call_fn_962921

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_960773
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½
f
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_962967

inputs
identityc
Relu6Relu6inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿv
IdentityIdentityRelu6:activations:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_960473

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¹
f
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_960966

inputs
identityb
Relu6Relu6inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@u
IdentityIdentityRelu6:activations:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ñ
·
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_960568

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ö
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
×#<°
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0º
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ô
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


*__inference_conv_dw_2_layer_call_fn_962712

inputs!
unknown:@
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_960948
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ã
²
A__inference_conv1_layer_call_and_return_conditional_losses_960862

inputs8
conv2d_readvariableop_resource: 
identity¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0«
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
x
IdentityIdentityConv2D:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ^
NoOpNoOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: 2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

b
F__inference_reshape_18_layer_call_and_return_conditional_losses_963071

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :ÀR
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:j
ReshapeReshapeinputsReshape/shape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ^
IdentityIdentityReshape:output:0*
T0*-
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
G
+__inference_conv_pad_2_layer_call_fn_962699

inputs
identity×
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_960589
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


e
F__inference_dropout_45_layer_call_and_return_conditional_losses_961206

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¿

D__inference_conv1_bn_layer_call_and_return_conditional_losses_962492

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0È
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ °
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ç
serving_default³
W
input_21K
serving_default_input_21:0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ<
dense_620
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÿÚ

layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
layer-13
layer_with_weights-8
layer-14
layer_with_weights-9
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer-19
layer_with_weights-12
layer-20
layer_with_weights-13
layer-21
layer-22
layer-23
layer-24
layer-25
layer_with_weights-14
layer-26
	optimizer

signatures
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses
%_default_save_signature"
_tf_keras_network
D
#&_self_saveable_object_factories"
_tf_keras_input_layer
Ö

'kernel
#(_self_saveable_object_factories
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses"
_tf_keras_layer

/axis
	0gamma
1beta
2moving_mean
3moving_variance
#4_self_saveable_object_factories
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses"
_tf_keras_layer
à
Bdepthwise_kernel
#C_self_saveable_object_factories
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses"
_tf_keras_layer

Jaxis
	Kgamma
Lbeta
Mmoving_mean
Nmoving_variance
#O_self_saveable_object_factories
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#V_self_saveable_object_factories
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
Ö

]kernel
#^_self_saveable_object_factories
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer

eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance
#j_self_saveable_object_factories
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#q_self_saveable_object_factories
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
Ê
#x_self_saveable_object_factories
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
ç
depthwise_kernel
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer

	axis

gamma
	beta
moving_mean
moving_variance
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Þ
kernel
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
+¡&call_and_return_all_conditional_losses"
_tf_keras_layer

	¢axis

£gamma
	¤beta
¥moving_mean
¦moving_variance
$§_self_saveable_object_factories
¨	variables
©trainable_variables
ªregularization_losses
«	keras_api
¬__call__
+­&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$®_self_saveable_object_factories
¯	variables
°trainable_variables
±regularization_losses
²	keras_api
³__call__
+´&call_and_return_all_conditional_losses"
_tf_keras_layer
è
µdepthwise_kernel
$¶_self_saveable_object_factories
·	variables
¸trainable_variables
¹regularization_losses
º	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"
_tf_keras_layer

	½axis

¾gamma
	¿beta
Àmoving_mean
Ámoving_variance
$Â_self_saveable_object_factories
Ã	variables
Ätrainable_variables
Åregularization_losses
Æ	keras_api
Ç__call__
+È&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$É_self_saveable_object_factories
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Í	keras_api
Î__call__
+Ï&call_and_return_all_conditional_losses"
_tf_keras_layer
Þ
Ðkernel
$Ñ_self_saveable_object_factories
Ò	variables
Ótrainable_variables
Ôregularization_losses
Õ	keras_api
Ö__call__
+×&call_and_return_all_conditional_losses"
_tf_keras_layer

	Øaxis

Ùgamma
	Úbeta
Ûmoving_mean
Ümoving_variance
$Ý_self_saveable_object_factories
Þ	variables
ßtrainable_variables
àregularization_losses
á	keras_api
â__call__
+ã&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$ä_self_saveable_object_factories
å	variables
ætrainable_variables
çregularization_losses
è	keras_api
é__call__
+ê&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$ë_self_saveable_object_factories
ì	variables
ítrainable_variables
îregularization_losses
ï	keras_api
ð__call__
+ñ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
$ò_self_saveable_object_factories
ó	variables
ôtrainable_variables
õregularization_losses
ö	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses"
_tf_keras_layer
é
$ù_self_saveable_object_factories
ú	variables
ûtrainable_variables
üregularization_losses
ý	keras_api
þ_random_generator
ÿ__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
é
kernel
	bias
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
¾
	iter
beta_1
beta_2

decay
learning_rate'm¢0m£1m¤Bm¥Km¦Lm§]m¨fm©gmªm«	m¬	m­	m®	£m¯	¤m°	µm±	¾m²	¿m³	Ðm´	Ùmµ	Úm¶	m·	m¸'v¹0vº1v»Bv¼Kv½Lv¾]v¿fvÀgvÁvÂ	vÃ	vÄ	vÅ	£vÆ	¤vÇ	µvÈ	¾vÉ	¿vÊ	ÐvË	ÙvÌ	ÚvÍ	vÎ	vÏ"
	optimizer
-
serving_default"
signature_map
 "
trackable_dict_wrapper
Ó
'0
01
12
23
34
B5
K6
L7
M8
N9
]10
f11
g12
h13
i14
15
16
17
18
19
20
£21
¤22
¥23
¦24
µ25
¾26
¿27
À28
Á29
Ð30
Ù31
Ú32
Û33
Ü34
35
36"
trackable_list_wrapper
Û
'0
01
12
B3
K4
L5
]6
f7
g8
9
10
11
12
£13
¤14
µ15
¾16
¿17
Ð18
Ù19
Ú20
21
22"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
%_default_save_signature
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
ò2ï
)__inference_model_21_layer_call_fn_961176
)__inference_model_21_layer_call_fn_961953
)__inference_model_21_layer_call_fn_962032
)__inference_model_21_layer_call_fn_961660À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
D__inference_model_21_layer_call_and_return_conditional_losses_962189
D__inference_model_21_layer_call_and_return_conditional_losses_962353
D__inference_model_21_layer_call_and_return_conditional_losses_961764
D__inference_model_21_layer_call_and_return_conditional_losses_961868À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÍBÊ
!__inference__wrapped_model_960387input_21"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
&:$ 2conv1/kernel
 "
trackable_dict_wrapper
'
'0"
trackable_list_wrapper
'
'0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_conv1_layer_call_fn_962441¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_conv1_layer_call_and_return_conditional_losses_962448¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
: 2conv1_bn/gamma
: 2conv1_bn/beta
$:"  (2conv1_bn/moving_mean
(:&  (2conv1_bn/moving_variance
 "
trackable_dict_wrapper
<
00
11
22
33"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
2
)__inference_conv1_bn_layer_call_fn_962461
)__inference_conv1_bn_layer_call_fn_962474´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Æ2Ã
D__inference_conv1_bn_layer_call_and_return_conditional_losses_962492
D__inference_conv1_bn_layer_call_and_return_conditional_losses_962510´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
 layers
¡metrics
 ¢layer_regularization_losses
£layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv1_relu_layer_call_fn_962515¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv1_relu_layer_call_and_return_conditional_losses_962520¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
4:2 2conv_dw_1/depthwise_kernel
 "
trackable_dict_wrapper
'
B0"
trackable_list_wrapper
'
B0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¤non_trainable_variables
¥layers
¦metrics
 §layer_regularization_losses
¨layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv_dw_1_layer_call_fn_962527¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_962536¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 : 2conv_dw_1_bn/gamma
: 2conv_dw_1_bn/beta
(:&  (2conv_dw_1_bn/moving_mean
,:*  (2conv_dw_1_bn/moving_variance
 "
trackable_dict_wrapper
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
²
©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_conv_dw_1_bn_layer_call_fn_962549
-__inference_conv_dw_1_bn_layer_call_fn_962562´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_962580
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_962598´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
®non_trainable_variables
¯layers
°metrics
 ±layer_regularization_losses
²layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
Ù2Ö
/__inference_conv_dw_1_relu_layer_call_fn_962603¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_962608¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
*:( @2conv_pw_1/kernel
 "
trackable_dict_wrapper
'
]0"
trackable_list_wrapper
'
]0"
trackable_list_wrapper
 "
trackable_list_wrapper
²
³non_trainable_variables
´layers
µmetrics
 ¶layer_regularization_losses
·layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv_pw_1_layer_call_fn_962615¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_962622¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 :@2conv_pw_1_bn/gamma
:@2conv_pw_1_bn/beta
(:&@ (2conv_pw_1_bn/moving_mean
,:*@ (2conv_pw_1_bn/moving_variance
 "
trackable_dict_wrapper
<
f0
g1
h2
i3"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_conv_pw_1_bn_layer_call_fn_962635
-__inference_conv_pw_1_bn_layer_call_fn_962648´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_962666
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_962684´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
½non_trainable_variables
¾layers
¿metrics
 Àlayer_regularization_losses
Álayer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
Ù2Ö
/__inference_conv_pw_1_relu_layer_call_fn_962689¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_962694¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ânon_trainable_variables
Ãlayers
Ämetrics
 Ålayer_regularization_losses
Ælayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv_pad_2_layer_call_fn_962699¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_962705¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
4:2@2conv_dw_2/depthwise_kernel
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Çnon_trainable_variables
Èlayers
Émetrics
 Êlayer_regularization_losses
Ëlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv_dw_2_layer_call_fn_962712¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_962721¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 :@2conv_dw_2_bn/gamma
:@2conv_dw_2_bn/beta
(:&@ (2conv_dw_2_bn/moving_mean
,:*@ (2conv_dw_2_bn/moving_variance
 "
trackable_dict_wrapper
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ìnon_trainable_variables
Ílayers
Îmetrics
 Ïlayer_regularization_losses
Ðlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_conv_dw_2_bn_layer_call_fn_962734
-__inference_conv_dw_2_bn_layer_call_fn_962747´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_962765
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_962783´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ñnon_trainable_variables
Òlayers
Ómetrics
 Ôlayer_regularization_losses
Õlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ù2Ö
/__inference_conv_dw_2_relu_layer_call_fn_962788¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_962793¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
+:)@2conv_pw_2/kernel
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Önon_trainable_variables
×layers
Ømetrics
 Ùlayer_regularization_losses
Úlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv_pw_2_layer_call_fn_962800¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_962807¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
!:2conv_pw_2_bn/gamma
 :2conv_pw_2_bn/beta
):' (2conv_pw_2_bn/moving_mean
-:+ (2conv_pw_2_bn/moving_variance
 "
trackable_dict_wrapper
@
£0
¤1
¥2
¦3"
trackable_list_wrapper
0
£0
¤1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
¨	variables
©trainable_variables
ªregularization_losses
¬__call__
+­&call_and_return_all_conditional_losses
'­"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_conv_pw_2_bn_layer_call_fn_962820
-__inference_conv_pw_2_bn_layer_call_fn_962833´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_962851
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_962869´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
¯	variables
°trainable_variables
±regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
Ù2Ö
/__inference_conv_pw_2_relu_layer_call_fn_962874¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_962879¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
5:32conv_dw_3/depthwise_kernel
 "
trackable_dict_wrapper
(
µ0"
trackable_list_wrapper
(
µ0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ånon_trainable_variables
ælayers
çmetrics
 èlayer_regularization_losses
élayer_metrics
·	variables
¸trainable_variables
¹regularization_losses
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv_dw_3_layer_call_fn_962886¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_962895¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
!:2conv_dw_3_bn/gamma
 :2conv_dw_3_bn/beta
):' (2conv_dw_3_bn/moving_mean
-:+ (2conv_dw_3_bn/moving_variance
 "
trackable_dict_wrapper
@
¾0
¿1
À2
Á3"
trackable_list_wrapper
0
¾0
¿1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ênon_trainable_variables
ëlayers
ìmetrics
 ílayer_regularization_losses
îlayer_metrics
Ã	variables
Ätrainable_variables
Åregularization_losses
Ç__call__
+È&call_and_return_all_conditional_losses
'È"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_conv_dw_3_bn_layer_call_fn_962908
-__inference_conv_dw_3_bn_layer_call_fn_962921´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_962939
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_962957´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ïnon_trainable_variables
ðlayers
ñmetrics
 òlayer_regularization_losses
ólayer_metrics
Ê	variables
Ëtrainable_variables
Ìregularization_losses
Î__call__
+Ï&call_and_return_all_conditional_losses
'Ï"call_and_return_conditional_losses"
_generic_user_object
Ù2Ö
/__inference_conv_dw_3_relu_layer_call_fn_962962¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_962967¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,:*2conv_pw_3/kernel
 "
trackable_dict_wrapper
(
Ð0"
trackable_list_wrapper
(
Ð0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ônon_trainable_variables
õlayers
ömetrics
 ÷layer_regularization_losses
ølayer_metrics
Ò	variables
Ótrainable_variables
Ôregularization_losses
Ö__call__
+×&call_and_return_all_conditional_losses
'×"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_conv_pw_3_layer_call_fn_962974¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_962981¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
!:2conv_pw_3_bn/gamma
 :2conv_pw_3_bn/beta
):' (2conv_pw_3_bn/moving_mean
-:+ (2conv_pw_3_bn/moving_variance
 "
trackable_dict_wrapper
@
Ù0
Ú1
Û2
Ü3"
trackable_list_wrapper
0
Ù0
Ú1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ùnon_trainable_variables
úlayers
ûmetrics
 ülayer_regularization_losses
ýlayer_metrics
Þ	variables
ßtrainable_variables
àregularization_losses
â__call__
+ã&call_and_return_all_conditional_losses
'ã"call_and_return_conditional_losses"
_generic_user_object
2
-__inference_conv_pw_3_bn_layer_call_fn_962994
-__inference_conv_pw_3_bn_layer_call_fn_963007´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_963025
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_963043´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
þnon_trainable_variables
ÿlayers
metrics
 layer_regularization_losses
layer_metrics
å	variables
ætrainable_variables
çregularization_losses
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses"
_generic_user_object
Ù2Ö
/__inference_conv_pw_3_relu_layer_call_fn_963048¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ô2ñ
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_963053¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ì	variables
ítrainable_variables
îregularization_losses
ð__call__
+ñ&call_and_return_all_conditional_losses
'ñ"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_reshape_18_layer_call_fn_963058¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_reshape_18_layer_call_and_return_conditional_losses_963071¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ó	variables
ôtrainable_variables
õregularization_losses
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_flatten_36_layer_call_fn_963076¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_flatten_36_layer_call_and_return_conditional_losses_963082¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ú	variables
ûtrainable_variables
üregularization_losses
ÿ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_45_layer_call_fn_963087
+__inference_dropout_45_layer_call_fn_963092´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_45_layer_call_and_return_conditional_losses_963097
F__inference_dropout_45_layer_call_and_return_conditional_losses_963109´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
#:!
À2dense_62/kernel
:2dense_62/bias
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_62_layer_call_fn_963118¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_62_layer_call_and_return_conditional_losses_963129¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÌBÉ
$__inference_signature_wrapper_962434input_21"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 

20
31
M2
N3
h4
i5
6
7
¥8
¦9
À10
Á11
Û12
Ü13"
trackable_list_wrapper
î
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
¥0
¦1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
À0
Á1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
0
Û0
Ü1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
 	variables
¡	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
+:) 2Adam/conv1/kernel/m
!: 2Adam/conv1_bn/gamma/m
 : 2Adam/conv1_bn/beta/m
9:7 2!Adam/conv_dw_1/depthwise_kernel/m
%:# 2Adam/conv_dw_1_bn/gamma/m
$:" 2Adam/conv_dw_1_bn/beta/m
/:- @2Adam/conv_pw_1/kernel/m
%:#@2Adam/conv_pw_1_bn/gamma/m
$:"@2Adam/conv_pw_1_bn/beta/m
9:7@2!Adam/conv_dw_2/depthwise_kernel/m
%:#@2Adam/conv_dw_2_bn/gamma/m
$:"@2Adam/conv_dw_2_bn/beta/m
0:.@2Adam/conv_pw_2/kernel/m
&:$2Adam/conv_pw_2_bn/gamma/m
%:#2Adam/conv_pw_2_bn/beta/m
::82!Adam/conv_dw_3/depthwise_kernel/m
&:$2Adam/conv_dw_3_bn/gamma/m
%:#2Adam/conv_dw_3_bn/beta/m
1:/2Adam/conv_pw_3/kernel/m
&:$2Adam/conv_pw_3_bn/gamma/m
%:#2Adam/conv_pw_3_bn/beta/m
(:&
À2Adam/dense_62/kernel/m
 :2Adam/dense_62/bias/m
+:) 2Adam/conv1/kernel/v
!: 2Adam/conv1_bn/gamma/v
 : 2Adam/conv1_bn/beta/v
9:7 2!Adam/conv_dw_1/depthwise_kernel/v
%:# 2Adam/conv_dw_1_bn/gamma/v
$:" 2Adam/conv_dw_1_bn/beta/v
/:- @2Adam/conv_pw_1/kernel/v
%:#@2Adam/conv_pw_1_bn/gamma/v
$:"@2Adam/conv_pw_1_bn/beta/v
9:7@2!Adam/conv_dw_2/depthwise_kernel/v
%:#@2Adam/conv_dw_2_bn/gamma/v
$:"@2Adam/conv_dw_2_bn/beta/v
0:.@2Adam/conv_pw_2/kernel/v
&:$2Adam/conv_pw_2_bn/gamma/v
%:#2Adam/conv_pw_2_bn/beta/v
::82!Adam/conv_dw_3/depthwise_kernel/v
&:$2Adam/conv_dw_3_bn/gamma/v
%:#2Adam/conv_dw_3_bn/beta/v
1:/2Adam/conv_pw_3/kernel/v
&:$2Adam/conv_pw_3_bn/gamma/v
%:#2Adam/conv_pw_3_bn/beta/v
(:&
À2Adam/dense_62/kernel/v
 :2Adam/dense_62/bias/vä
!__inference__wrapped_model_960387¾:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜK¢H
A¢>
<9
input_21+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_62"
dense_62ÿÿÿÿÿÿÿÿÿß
D__inference_conv1_bn_layer_call_and_return_conditional_losses_9624920123M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ß
D__inference_conv1_bn_layer_call_and_return_conditional_losses_9625100123M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ·
)__inference_conv1_bn_layer_call_fn_9624610123M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ·
)__inference_conv1_bn_layer_call_fn_9624740123M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Õ
A__inference_conv1_layer_call_and_return_conditional_losses_962448'I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ­
&__inference_conv1_layer_call_fn_962441'I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ×
F__inference_conv1_relu_layer_call_and_return_conditional_losses_962520I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ®
+__inference_conv1_relu_layer_call_fn_962515I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ã
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_962580KLMNM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ã
H__inference_conv_dw_1_bn_layer_call_and_return_conditional_losses_962598KLMNM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 »
-__inference_conv_dw_1_bn_layer_call_fn_962549KLMNM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ »
-__inference_conv_dw_1_bn_layer_call_fn_962562KLMNM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Ù
E__inference_conv_dw_1_layer_call_and_return_conditional_losses_962536BI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ±
*__inference_conv_dw_1_layer_call_fn_962527BI¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ Û
J__inference_conv_dw_1_relu_layer_call_and_return_conditional_losses_962608I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 ²
/__inference_conv_dw_1_relu_layer_call_fn_962603I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ ç
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_962765M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ç
H__inference_conv_dw_2_bn_layer_call_and_return_conditional_losses_962783M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ¿
-__inference_conv_dw_2_bn_layer_call_fn_962734M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@¿
-__inference_conv_dw_2_bn_layer_call_fn_962747M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ù
E__inference_conv_dw_2_layer_call_and_return_conditional_losses_962721I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ±
*__inference_conv_dw_2_layer_call_fn_962712I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Û
J__inference_conv_dw_2_relu_layer_call_and_return_conditional_losses_962793I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ²
/__inference_conv_dw_2_relu_layer_call_fn_962788I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@é
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_962939¾¿ÀÁN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 é
H__inference_conv_dw_3_bn_layer_call_and_return_conditional_losses_962957¾¿ÀÁN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Á
-__inference_conv_dw_3_bn_layer_call_fn_962908¾¿ÀÁN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
-__inference_conv_dw_3_bn_layer_call_fn_962921¾¿ÀÁN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÜ
E__inference_conv_dw_3_layer_call_and_return_conditional_losses_962895µJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ´
*__inference_conv_dw_3_layer_call_fn_962886µJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÝ
J__inference_conv_dw_3_relu_layer_call_and_return_conditional_losses_962967J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 µ
/__inference_conv_dw_3_relu_layer_call_fn_962962J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿé
F__inference_conv_pad_2_layer_call_and_return_conditional_losses_962705R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Á
+__inference_conv_pad_2_layer_call_fn_962699R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿã
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_962666fghiM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ã
H__inference_conv_pw_1_bn_layer_call_and_return_conditional_losses_962684fghiM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 »
-__inference_conv_pw_1_bn_layer_call_fn_962635fghiM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@»
-__inference_conv_pw_1_bn_layer_call_fn_962648fghiM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Ù
E__inference_conv_pw_1_layer_call_and_return_conditional_losses_962622]I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ±
*__inference_conv_pw_1_layer_call_fn_962615]I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Û
J__inference_conv_pw_1_relu_layer_call_and_return_conditional_losses_962694I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ²
/__inference_conv_pw_1_relu_layer_call_fn_962689I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@é
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_962851£¤¥¦N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 é
H__inference_conv_pw_2_bn_layer_call_and_return_conditional_losses_962869£¤¥¦N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Á
-__inference_conv_pw_2_bn_layer_call_fn_962820£¤¥¦N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
-__inference_conv_pw_2_bn_layer_call_fn_962833£¤¥¦N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÛ
E__inference_conv_pw_2_layer_call_and_return_conditional_losses_962807I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ³
*__inference_conv_pw_2_layer_call_fn_962800I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÝ
J__inference_conv_pw_2_relu_layer_call_and_return_conditional_losses_962879J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 µ
/__inference_conv_pw_2_relu_layer_call_fn_962874J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿé
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_963025ÙÚÛÜN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 é
H__inference_conv_pw_3_bn_layer_call_and_return_conditional_losses_963043ÙÚÛÜN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Á
-__inference_conv_pw_3_bn_layer_call_fn_962994ÙÚÛÜN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
-__inference_conv_pw_3_bn_layer_call_fn_963007ÙÚÛÜN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÜ
E__inference_conv_pw_3_layer_call_and_return_conditional_losses_962981ÐJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ´
*__inference_conv_pw_3_layer_call_fn_962974ÐJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÝ
J__inference_conv_pw_3_relu_layer_call_and_return_conditional_losses_963053J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 µ
/__inference_conv_pw_3_relu_layer_call_fn_963048J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¨
D__inference_dense_62_layer_call_and_return_conditional_losses_963129`1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿÀ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_dense_62_layer_call_fn_963118S1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿª
F__inference_dropout_45_layer_call_and_return_conditional_losses_963097`5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿÀ
p 
ª "'¢$

0ÿÿÿÿÿÿÿÿÿÀ
 ª
F__inference_dropout_45_layer_call_and_return_conditional_losses_963109`5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿÀ
p
ª "'¢$

0ÿÿÿÿÿÿÿÿÿÀ
 
+__inference_dropout_45_layer_call_fn_963087S5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿÀ
p 
ª "ÿÿÿÿÿÿÿÿÿÀ
+__inference_dropout_45_layer_call_fn_963092S5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿÀ
p
ª "ÿÿÿÿÿÿÿÿÿÀª
F__inference_flatten_36_layer_call_and_return_conditional_losses_963082`5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿÀ
ª "'¢$

0ÿÿÿÿÿÿÿÿÿÀ
 
+__inference_flatten_36_layer_call_fn_963076S5¢2
+¢(
&#
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿÀ
D__inference_model_21_layer_call_and_return_conditional_losses_961764¸:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜS¢P
I¢F
<9
input_21+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
D__inference_model_21_layer_call_and_return_conditional_losses_961868¸:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜS¢P
I¢F
<9
input_21+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ÿ
D__inference_model_21_layer_call_and_return_conditional_losses_962189¶:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜQ¢N
G¢D
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ÿ
D__inference_model_21_layer_call_and_return_conditional_losses_962353¶:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜQ¢N
G¢D
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ù
)__inference_model_21_layer_call_fn_961176«:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜS¢P
I¢F
<9
input_21+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿÙ
)__inference_model_21_layer_call_fn_961660«:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜS¢P
I¢F
<9
input_21+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ×
)__inference_model_21_layer_call_fn_961953©:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜQ¢N
G¢D
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ×
)__inference_model_21_layer_call_fn_962032©:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜQ¢N
G¢D
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÃ
F__inference_reshape_18_layer_call_and_return_conditional_losses_963071yJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "+¢(
!
0ÿÿÿÿÿÿÿÿÿÀ
 
+__inference_reshape_18_layer_call_fn_963058lJ¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀó
$__inference_signature_wrapper_962434Ê:'0123BKLMN]fghi£¤¥¦µ¾¿ÀÁÐÙÚÛÜW¢T
¢ 
MªJ
H
input_21<9
input_21+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_62"
dense_62ÿÿÿÿÿÿÿÿÿ