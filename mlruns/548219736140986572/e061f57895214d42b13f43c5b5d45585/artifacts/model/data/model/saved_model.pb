из
╛О
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
$
DisableCopyOnRead
resourceИ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
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
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628═Г
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
v
m/dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namem/dense_16/bias
o
#m/dense_16/bias/Read/ReadVariableOpReadVariableOpm/dense_16/bias*
_output_shapes
:*
dtype0
~
m/dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*"
shared_namem/dense_16/kernel
w
%m/dense_16/kernel/Read/ReadVariableOpReadVariableOpm/dense_16/kernel*
_output_shapes

:d*
dtype0
Й
m/lstm_16/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*)
shared_namem/lstm_16/lstm_cell/bias
В
,m/lstm_16/lstm_cell/bias/Read/ReadVariableOpReadVariableOpm/lstm_16/lstm_cell/bias*
_output_shapes	
:Р*
dtype0
е
$m/lstm_16/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*5
shared_name&$m/lstm_16/lstm_cell/recurrent_kernel
Ю
8m/lstm_16/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp$m/lstm_16/lstm_cell/recurrent_kernel*
_output_shapes
:	dР*
dtype0
С
m/lstm_16/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*+
shared_namem/lstm_16/lstm_cell/kernel
К
.m/lstm_16/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpm/lstm_16/lstm_cell/kernel*
_output_shapes
:	Р*
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
Е
lstm_16/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Р*'
shared_namelstm_16/lstm_cell/bias
~
*lstm_16/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell/bias*
_output_shapes	
:Р*
dtype0
б
"lstm_16/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	dР*3
shared_name$"lstm_16/lstm_cell/recurrent_kernel
Ъ
6lstm_16/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp"lstm_16/lstm_cell/recurrent_kernel*
_output_shapes
:	dР*
dtype0
Н
lstm_16/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*)
shared_namelstm_16/lstm_cell/kernel
Ж
,lstm_16/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_16/lstm_cell/kernel*
_output_shapes
:	Р*
dtype0
r
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
k
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes
:*
dtype0
z
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_16/kernel
s
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes

:d*
dtype0
И
serving_default_lstm_16_inputPlaceholder*+
_output_shapes
:         j*
dtype0* 
shape:         j
╕
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_16_inputlstm_16/lstm_cell/kernel"lstm_16/lstm_cell/recurrent_kernellstm_16/lstm_cell/biasdense_16/kerneldense_16/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_174467

NoOpNoOp
Ф#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╧"
value┼"B┬" B╗"
Ъ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
┴
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
░
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

%trace_0
&trace_1* 

'trace_0
(trace_1* 
* 
o
)
_variables
*_iterations
+_learning_rate
,_index_dict
-	momentums
._update_step_xla*

/serving_default* 

0
1
2*

0
1
2*
* 
Я

0states
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
6trace_0
7trace_1
8trace_2
9trace_3* 
6
:trace_0
;trace_1
<trace_2
=trace_3* 
* 
у
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator
E
state_size

kernel
recurrent_kernel
bias*
* 

0
1*

0
1*
* 
У
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ktrace_0* 

Ltrace_0* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_16/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"lstm_16/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUElstm_16/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

M0*
* 
* 
* 
* 
* 
* 
.
*0
N1
O2
P3
Q4
R5*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
N0
O1
P2
Q3
R4*
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
* 
У
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses*

Xtrace_0
Ytrace_1* 

Ztrace_0
[trace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
\	variables
]	keras_api
	^total
	_count*
e_
VARIABLE_VALUEm/lstm_16/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE$m/lstm_16/lstm_cell/recurrent_kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEm/lstm_16/lstm_cell/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEm/dense_16/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEm/dense_16/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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
^0
_1*

\	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╟
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_16/kerneldense_16/biaslstm_16/lstm_cell/kernel"lstm_16/lstm_cell/recurrent_kernellstm_16/lstm_cell/bias	iterationlearning_ratem/lstm_16/lstm_cell/kernel$m/lstm_16/lstm_cell/recurrent_kernelm/lstm_16/lstm_cell/biasm/dense_16/kernelm/dense_16/biastotalcountConst*
Tin
2*
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
__inference__traced_save_175315
┬
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_16/kerneldense_16/biaslstm_16/lstm_cell/kernel"lstm_16/lstm_cell/recurrent_kernellstm_16/lstm_cell/bias	iterationlearning_ratem/lstm_16/lstm_cell/kernel$m/lstm_16/lstm_cell/recurrent_kernelm/lstm_16/lstm_cell/biasm/dense_16/kernelm/dense_16/biastotalcount*
Tin
2*
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
"__inference__traced_restore_175366╥╢
▐	
ю
$__inference_signature_wrapper_174467
lstm_16_input
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_173705o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         j: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name174463:&"
 
_user_specified_name174461:&"
 
_user_specified_name174459:&"
 
_user_specified_name174457:&"
 
_user_specified_name174455:Z V
+
_output_shapes
:         j
'
_user_specified_namelstm_16_input
┬	
├
while_cond_174116
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174116___redundant_placeholder04
0while_while_cond_174116___redundant_placeholder14
0while_while_cond_174116___redundant_placeholder24
0while_while_cond_174116___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
єJ
Л
C__inference_lstm_16_layer_call_and_return_conditional_losses_174801
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	Р=
*lstm_cell_matmul_1_readvariableop_resource:	dР8
)lstm_cell_biasadd_readvariableop_resource:	Р
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dБ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174716*
condR
while_cond_174715*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
▐%
╬
while_body_173929
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_173953_0:	Р+
while_lstm_cell_173955_0:	dР'
while_lstm_cell_173957_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_173953:	Р)
while_lstm_cell_173955:	dР%
while_lstm_cell_173957:	РИв'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_173953_0while_lstm_cell_173955_0while_lstm_cell_173957_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173914r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dН
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_173953while_lstm_cell_173953_0"2
while_lstm_cell_173955while_lstm_cell_173955_0"2
while_lstm_cell_173957while_lstm_cell_173957_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name173957:&	"
 
_user_specified_name173955:&"
 
_user_specified_name173953:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╨J
Й
C__inference_lstm_16_layer_call_and_return_conditional_losses_174202

inputs;
(lstm_cell_matmul_readvariableop_resource:	Р=
*lstm_cell_matmul_1_readvariableop_resource:	dР8
)lstm_cell_biasadd_readvariableop_resource:	Р
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:j         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dБ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174117*
condR
while_cond_174116*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         j: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         j
 
_user_specified_nameinputs
╦

ї
D__inference_dense_16_layer_call_and_return_conditional_losses_175111

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
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
:         d
 
_user_specified_nameinputs
у
╖
(__inference_lstm_16_layer_call_fn_174489
inputs_0
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_173999o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name174485:&"
 
_user_specified_name174483:&"
 
_user_specified_name174481:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
Ж:
╡
while_body_175006
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	РE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	dР@
1while_lstm_cell_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	РC
0while_lstm_cell_matmul_1_readvariableop_resource:	dР>
/while_lstm_cell_biasadd_readvariableop_resource:	РИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         dА
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         dП
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dД
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dУ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dг

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ж:
╡
while_body_174861
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	РE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	dР@
1while_lstm_cell_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	РC
0while_lstm_cell_matmul_1_readvariableop_resource:	dР>
/while_lstm_cell_biasadd_readvariableop_resource:	РИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         dА
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         dП
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dД
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dУ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dг

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Ж:
╡
while_body_174716
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	РE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	dР@
1while_lstm_cell_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	РC
0while_lstm_cell_matmul_1_readvariableop_resource:	dР>
/while_lstm_cell_biasadd_readvariableop_resource:	РИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         dА
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         dП
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dД
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dУ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dг

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┬	
├
while_cond_175005
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_175005___redundant_placeholder04
0while_while_cond_175005___redundant_placeholder14
0while_while_cond_175005___redundant_placeholder24
0while_while_cond_175005___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┬	
├
while_cond_174570
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174570___redundant_placeholder04
0while_while_cond_174570___redundant_placeholder14
0while_while_cond_174570___redundant_placeholder24
0while_while_cond_174570___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Л
█
I__inference_sequential_16_layer_call_and_return_conditional_losses_174388
lstm_16_input!
lstm_16_174375:	Р!
lstm_16_174377:	dР
lstm_16_174379:	Р!
dense_16_174382:d
dense_16_174384:
identityИв dense_16/StatefulPartitionedCallвlstm_16/StatefulPartitionedCallЕ
lstm_16/StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputlstm_16_174375lstm_16_174377lstm_16_174379*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_174374Т
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_16_174382dense_16_174384*
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
GPU 2J 8В *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_174220x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         g
NoOpNoOp!^dense_16/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         j: : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall:&"
 
_user_specified_name174384:&"
 
_user_specified_name174382:&"
 
_user_specified_name174379:&"
 
_user_specified_name174377:&"
 
_user_specified_name174375:Z V
+
_output_shapes
:         j
'
_user_specified_namelstm_16_input
г9
∙
C__inference_lstm_16_layer_call_and_return_conditional_losses_173852

inputs#
lstm_cell_173768:	Р#
lstm_cell_173770:	dР
lstm_cell_173772:	Р
identityИв!lstm_cell/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskц
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_173768lstm_cell_173770lstm_cell_173772*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173767n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_173768lstm_cell_173770lstm_cell_173772*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_173782*
condR
while_cond_173781*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name173772:&"
 
_user_specified_name173770:&"
 
_user_specified_name173768:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Ж:
╡
while_body_174571
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	РE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	dР@
1while_lstm_cell_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	РC
0while_lstm_cell_matmul_1_readvariableop_resource:	dР>
/while_lstm_cell_biasadd_readvariableop_resource:	РИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         dА
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         dП
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dД
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dУ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dг

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╦
╡
(__inference_lstm_16_layer_call_fn_174500

inputs
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_174202o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         j: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name174496:&"
 
_user_specified_name174494:&"
 
_user_specified_name174492:S O
+
_output_shapes
:         j
 
_user_specified_nameinputs
┬	
├
while_cond_174860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174860___redundant_placeholder04
0while_while_cond_174860___redundant_placeholder14
0while_while_cond_174860___redundant_placeholder24
0while_while_cond_174860___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
л
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173914

inputs

states
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
єJ
Л
C__inference_lstm_16_layer_call_and_return_conditional_losses_174656
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	Р=
*lstm_cell_matmul_1_readvariableop_resource:	dР8
)lstm_cell_biasadd_readvariableop_resource:	Р
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dБ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174571*
condR
while_cond_174570*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
▐%
╬
while_body_173782
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_173806_0:	Р+
while_lstm_cell_173808_0:	dР'
while_lstm_cell_173810_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_173806:	Р)
while_lstm_cell_173808:	dР%
while_lstm_cell_173810:	РИв'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0д
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_173806_0while_lstm_cell_173808_0while_lstm_cell_173810_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173767r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:         dН
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:         dR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_173806while_lstm_cell_173806_0"2
while_lstm_cell_173808while_lstm_cell_173808_0"2
while_lstm_cell_173810while_lstm_cell_173810_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name173810:&	"
 
_user_specified_name173808:&"
 
_user_specified_name173806:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
╦
╡
(__inference_lstm_16_layer_call_fn_174511

inputs
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_174374o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         j: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name174507:&"
 
_user_specified_name174505:&"
 
_user_specified_name174503:S O
+
_output_shapes
:         j
 
_user_specified_nameinputs
╣
є
*__inference_lstm_cell_layer_call_fn_175128

inputs
states_0
states_1
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173767o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name175120:&"
 
_user_specified_name175118:&"
 
_user_specified_name175116:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╨J
Й
C__inference_lstm_16_layer_call_and_return_conditional_losses_174946

inputs;
(lstm_cell_matmul_readvariableop_resource:	Р=
*lstm_cell_matmul_1_readvariableop_resource:	dР8
)lstm_cell_biasadd_readvariableop_resource:	Р
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:j         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dБ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174861*
condR
while_cond_174860*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         j: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         j
 
_user_specified_nameinputs
ю
Ц
)__inference_dense_16_layer_call_fn_175100

inputs
unknown:d
	unknown_0:
identityИвStatefulPartitionedCall┘
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
GPU 2J 8В *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_174220o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name175096:&"
 
_user_specified_name175094:O K
'
_output_shapes
:         d
 
_user_specified_nameinputs
л
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173767

inputs

states
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:         d
 
_user_specified_namestates:OK
'
_output_shapes
:         d
 
_user_specified_namestates:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
╣
є
*__inference_lstm_cell_layer_call_fn_175145

inputs
states_0
states_1
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identity

identity_1

identity_2ИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         dq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         dq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name175137:&"
 
_user_specified_name175135:&"
 
_user_specified_name175133:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
у
╖
(__inference_lstm_16_layer_call_fn_174478
inputs_0
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_173852o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         d<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name174474:&"
 
_user_specified_name174472:&"
 
_user_specified_name174470:^ Z
4
_output_shapes"
 :                  
"
_user_specified_name
inputs_0
┬	
├
while_cond_173781
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_173781___redundant_placeholder04
0while_while_cond_173781___redundant_placeholder14
0while_while_cond_173781___redundant_placeholder24
0while_while_cond_173781___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
┬	
├
while_cond_174715
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174715___redundant_placeholder04
0while_while_cond_174715___redundant_placeholder14
0while_while_cond_174715___redundant_placeholder24
0while_while_cond_174715___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
э
√
'sequential_16_lstm_16_while_cond_173612H
Dsequential_16_lstm_16_while_sequential_16_lstm_16_while_loop_counterN
Jsequential_16_lstm_16_while_sequential_16_lstm_16_while_maximum_iterations+
'sequential_16_lstm_16_while_placeholder-
)sequential_16_lstm_16_while_placeholder_1-
)sequential_16_lstm_16_while_placeholder_2-
)sequential_16_lstm_16_while_placeholder_3J
Fsequential_16_lstm_16_while_less_sequential_16_lstm_16_strided_slice_1`
\sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_173612___redundant_placeholder0`
\sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_173612___redundant_placeholder1`
\sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_173612___redundant_placeholder2`
\sequential_16_lstm_16_while_sequential_16_lstm_16_while_cond_173612___redundant_placeholder3(
$sequential_16_lstm_16_while_identity
║
 sequential_16/lstm_16/while/LessLess'sequential_16_lstm_16_while_placeholderFsequential_16_lstm_16_while_less_sequential_16_lstm_16_strided_slice_1*
T0*
_output_shapes
: w
$sequential_16/lstm_16/while/IdentityIdentity$sequential_16/lstm_16/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_16_lstm_16_while_identity-sequential_16/lstm_16/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::]Y

_output_shapes
: 
?
_user_specified_name'%sequential_16/lstm_16/strided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :fb

_output_shapes
: 
H
_user_specified_name0.sequential_16/lstm_16/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_16/lstm_16/while/loop_counter
Ж:
╡
while_body_174289
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	РE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	dР@
1while_lstm_cell_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	РC
0while_lstm_cell_matmul_1_readvariableop_resource:	dР>
/while_lstm_cell_biasadd_readvariableop_resource:	РИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         dА
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         dП
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dД
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dУ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dг

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Р

°
.__inference_sequential_16_layer_call_fn_174403
lstm_16_input
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_16_layer_call_and_return_conditional_losses_174227o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         j: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name174399:&"
 
_user_specified_name174397:&"
 
_user_specified_name174395:&"
 
_user_specified_name174393:&"
 
_user_specified_name174391:Z V
+
_output_shapes
:         j
'
_user_specified_namelstm_16_input
┬	
├
while_cond_174288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_174288___redundant_placeholder04
0while_while_cond_174288___redundant_placeholder14
0while_while_cond_174288___redundant_placeholder24
0while_while_cond_174288___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Р

°
.__inference_sequential_16_layer_call_fn_174418
lstm_16_input
unknown:	Р
	unknown_0:	dР
	unknown_1:	Р
	unknown_2:d
	unknown_3:
identityИвStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_sequential_16_layer_call_and_return_conditional_losses_174388o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         j: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name174414:&"
 
_user_specified_name174412:&"
 
_user_specified_name174410:&"
 
_user_specified_name174408:&"
 
_user_specified_name174406:Z V
+
_output_shapes
:         j
'
_user_specified_namelstm_16_input
╦

ї
D__inference_dense_16_layer_call_and_return_conditional_losses_174220

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
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
:         P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         d: : 20
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
:         d
 
_user_specified_nameinputs
щD
э
"__inference__traced_restore_175366
file_prefix2
 assignvariableop_dense_16_kernel:d.
 assignvariableop_1_dense_16_bias:>
+assignvariableop_2_lstm_16_lstm_cell_kernel:	РH
5assignvariableop_3_lstm_16_lstm_cell_recurrent_kernel:	dР8
)assignvariableop_4_lstm_16_lstm_cell_bias:	Р&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: @
-assignvariableop_7_m_lstm_16_lstm_cell_kernel:	РJ
7assignvariableop_8_m_lstm_16_lstm_cell_recurrent_kernel:	dР:
+assignvariableop_9_m_lstm_16_lstm_cell_bias:	Р7
%assignvariableop_10_m_dense_16_kernel:d1
#assignvariableop_11_m_dense_16_bias:#
assignvariableop_12_total: #
assignvariableop_13_count: 
identity_15ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9┼
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсB▐B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHО
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B щ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:│
AssignVariableOpAssignVariableOp assignvariableop_dense_16_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_16_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_2AssignVariableOp+assignvariableop_2_lstm_16_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╠
AssignVariableOp_3AssignVariableOp5assignvariableop_3_lstm_16_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_4AssignVariableOp)assignvariableop_4_lstm_16_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:│
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_7AssignVariableOp-assignvariableop_7_m_lstm_16_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_8AssignVariableOp7assignvariableop_8_m_lstm_16_lstm_cell_recurrent_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_9AssignVariableOp+assignvariableop_9_m_lstm_16_lstm_cell_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╛
AssignVariableOp_10AssignVariableOp%assignvariableop_10_m_dense_16_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOp_11AssignVariableOp#assignvariableop_11_m_dense_16_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Г
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_15IdentityIdentity_14:output:0^NoOp_1*
T0*
_output_shapes
: ╠
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_15Identity_15:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
: : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:/+
)
_user_specified_namem/dense_16/bias:1-
+
_user_specified_namem/dense_16/kernel:8
4
2
_user_specified_namem/lstm_16/lstm_cell/bias:D	@
>
_user_specified_name&$m/lstm_16/lstm_cell/recurrent_kernel::6
4
_user_specified_namem/lstm_16/lstm_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:62
0
_user_specified_namelstm_16/lstm_cell/bias:B>
<
_user_specified_name$"lstm_16/lstm_cell/recurrent_kernel:84
2
_user_specified_namelstm_16/lstm_cell/kernel:-)
'
_user_specified_namedense_16/bias:/+
)
_user_specified_namedense_16/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╨J
Й
C__inference_lstm_16_layer_call_and_return_conditional_losses_174374

inputs;
(lstm_cell_matmul_readvariableop_resource:	Р=
*lstm_cell_matmul_1_readvariableop_resource:	dР8
)lstm_cell_biasadd_readvariableop_resource:	Р
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:j         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dБ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_174289*
condR
while_cond_174288*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         j: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         j
 
_user_specified_nameinputs
│
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175177

inputs
states_0
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┬	
├
while_cond_173928
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_173928___redundant_placeholder04
0while_while_cond_173928___redundant_placeholder14
0while_while_cond_173928___redundant_placeholder24
0while_while_cond_173928___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :         d:         d: :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
г9
∙
C__inference_lstm_16_layer_call_and_return_conditional_losses_173999

inputs#
lstm_cell_173915:	Р#
lstm_cell_173917:	dР
lstm_cell_173919:	Р
identityИв!lstm_cell/StatefulPartitionedCallвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :                  R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskц
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_173915lstm_cell_173917lstm_cell_173919*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:         d:         d:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_173914n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_173915lstm_cell_173917lstm_cell_173919*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_173929*
condR
while_cond_173928*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:                  : : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name173919:&"
 
_user_specified_name173917:&"
 
_user_specified_name173915:\ X
4
_output_shapes"
 :                  
 
_user_specified_nameinputs
Кu
Л
__inference__traced_save_175315
file_prefix8
&read_disablecopyonread_dense_16_kernel:d4
&read_1_disablecopyonread_dense_16_bias:D
1read_2_disablecopyonread_lstm_16_lstm_cell_kernel:	РN
;read_3_disablecopyonread_lstm_16_lstm_cell_recurrent_kernel:	dР>
/read_4_disablecopyonread_lstm_16_lstm_cell_bias:	Р,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: F
3read_7_disablecopyonread_m_lstm_16_lstm_cell_kernel:	РP
=read_8_disablecopyonread_m_lstm_16_lstm_cell_recurrent_kernel:	dР@
1read_9_disablecopyonread_m_lstm_16_lstm_cell_bias:	Р=
+read_10_disablecopyonread_m_dense_16_kernel:d7
)read_11_disablecopyonread_m_dense_16_bias:)
read_12_disablecopyonread_total: )
read_13_disablecopyonread_count: 
savev2_const
identity_29ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_16_kernel"/device:CPU:0*
_output_shapes
 в
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_16_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0i
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:da

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes

:dz
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_16_bias"/device:CPU:0*
_output_shapes
 в
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_16_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:Е
Read_2/DisableCopyOnReadDisableCopyOnRead1read_2_disablecopyonread_lstm_16_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ▓
Read_2/ReadVariableOpReadVariableOp1read_2_disablecopyonread_lstm_16_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рd

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	РП
Read_3/DisableCopyOnReadDisableCopyOnRead;read_3_disablecopyonread_lstm_16_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╝
Read_3/ReadVariableOpReadVariableOp;read_3_disablecopyonread_lstm_16_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0n

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРd

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРГ
Read_4/DisableCopyOnReadDisableCopyOnRead/read_4_disablecopyonread_lstm_16_lstm_cell_bias"/device:CPU:0*
_output_shapes
 м
Read_4/ReadVariableOpReadVariableOp/read_4_disablecopyonread_lstm_16_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Р`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:Рv
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_5/ReadVariableOpReadVariableOp"read_5_disablecopyonread_iteration^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_learning_rate^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: З
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_m_lstm_16_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ┤
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_m_lstm_16_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	Р*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Рf
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:	РС
Read_8/DisableCopyOnReadDisableCopyOnRead=read_8_disablecopyonread_m_lstm_16_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ╛
Read_8/ReadVariableOpReadVariableOp=read_8_disablecopyonread_m_lstm_16_lstm_cell_recurrent_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	dР*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	dРf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:	dРЕ
Read_9/DisableCopyOnReadDisableCopyOnRead1read_9_disablecopyonread_m_lstm_16_lstm_cell_bias"/device:CPU:0*
_output_shapes
 о
Read_9/ReadVariableOpReadVariableOp1read_9_disablecopyonread_m_lstm_16_lstm_cell_bias^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:Р*
dtype0k
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Рb
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes	
:РА
Read_10/DisableCopyOnReadDisableCopyOnRead+read_10_disablecopyonread_m_dense_16_kernel"/device:CPU:0*
_output_shapes
 н
Read_10/ReadVariableOpReadVariableOp+read_10_disablecopyonread_m_dense_16_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:d*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:de
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:d~
Read_11/DisableCopyOnReadDisableCopyOnRead)read_11_disablecopyonread_m_dense_16_bias"/device:CPU:0*
_output_shapes
 з
Read_11/ReadVariableOpReadVariableOp)read_11_disablecopyonread_m_dense_16_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_12/DisableCopyOnReadDisableCopyOnReadread_12_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_12/ReadVariableOpReadVariableOpread_12_disablecopyonread_total^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_13/DisableCopyOnReadDisableCopyOnReadread_13_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_13/ReadVariableOpReadVariableOpread_13_disablecopyonread_count^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
: ┬
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ы
valueсB▐B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЛ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B Х
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_28Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_29IdentityIdentity_28:output:0^NoOp*
T0*
_output_shapes
: Е
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2(
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
Read_13/ReadVariableOpRead_13/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:/+
)
_user_specified_namem/dense_16/bias:1-
+
_user_specified_namem/dense_16/kernel:8
4
2
_user_specified_namem/lstm_16/lstm_cell/bias:D	@
>
_user_specified_name&$m/lstm_16/lstm_cell/recurrent_kernel::6
4
_user_specified_namem/lstm_16/lstm_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:62
0
_user_specified_namelstm_16/lstm_cell/bias:B>
<
_user_specified_name$"lstm_16/lstm_cell/recurrent_kernel:84
2
_user_specified_namelstm_16/lstm_cell/kernel:-)
'
_user_specified_namedense_16/bias:/+
)
_user_specified_namedense_16/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Л
█
I__inference_sequential_16_layer_call_and_return_conditional_losses_174227
lstm_16_input!
lstm_16_174203:	Р!
lstm_16_174205:	dР
lstm_16_174207:	Р!
dense_16_174221:d
dense_16_174223:
identityИв dense_16/StatefulPartitionedCallвlstm_16/StatefulPartitionedCallЕ
lstm_16/StatefulPartitionedCallStatefulPartitionedCalllstm_16_inputlstm_16_174203lstm_16_174205lstm_16_174207*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         d*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_16_layer_call_and_return_conditional_losses_174202Т
 dense_16/StatefulPartitionedCallStatefulPartitionedCall(lstm_16/StatefulPartitionedCall:output:0dense_16_174221dense_16_174223*
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
GPU 2J 8В *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_174220x
IdentityIdentity)dense_16/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         g
NoOpNoOp!^dense_16/StatefulPartitionedCall ^lstm_16/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         j: : : : : 2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2B
lstm_16/StatefulPartitionedCalllstm_16/StatefulPartitionedCall:&"
 
_user_specified_name174223:&"
 
_user_specified_name174221:&"
 
_user_specified_name174207:&"
 
_user_specified_name174205:&"
 
_user_specified_name174203:Z V
+
_output_shapes
:         j
'
_user_specified_namelstm_16_input
╨J
Й
C__inference_lstm_16_layer_call_and_return_conditional_losses_175091

inputs;
(lstm_cell_matmul_readvariableop_resource:	Р=
*lstm_cell_matmul_1_readvariableop_resource:	dР8
)lstm_cell_biasadd_readvariableop_resource:	Р
identityИв lstm_cell/BiasAdd/ReadVariableOpвlstm_cell/MatMul/ReadVariableOpв!lstm_cell/MatMul_1/ReadVariableOpвwhileI
ShapeShapeinputs*
T0*
_output_shapes
::э╧]
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
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ds
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         dR
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :dw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:         dc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:j         R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::э╧_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:█
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         ┤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:         dq
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:         db
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:         d}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dr
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dj
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:         d_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dБ
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ▄
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_175006*
condR
while_cond_175005*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         d[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:         dУ
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:         j: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:         j
 
_user_specified_nameinputs
Ж:
╡
while_body_174117
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	РE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	dР@
1while_lstm_cell_biasadd_readvariableop_resource_0:	Р
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	РC
0while_lstm_cell_matmul_1_readvariableop_resource:	dР>
/while_lstm_cell_biasadd_readvariableop_resource:	РИв&while/lstm_cell/BiasAdd/ReadVariableOpв%while/lstm_cell/MatMul/ReadVariableOpв'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       ж
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0┤
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         РХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ц
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:         dА
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:         dn
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:         dП
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         dД
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dv
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dk
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         dУ
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:         dv
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:         dг

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
№p
Ў
!__inference__wrapped_model_173705
lstm_16_inputQ
>sequential_16_lstm_16_lstm_cell_matmul_readvariableop_resource:	РS
@sequential_16_lstm_16_lstm_cell_matmul_1_readvariableop_resource:	dРN
?sequential_16_lstm_16_lstm_cell_biasadd_readvariableop_resource:	РG
5sequential_16_dense_16_matmul_readvariableop_resource:dD
6sequential_16_dense_16_biasadd_readvariableop_resource:
identityИв-sequential_16/dense_16/BiasAdd/ReadVariableOpв,sequential_16/dense_16/MatMul/ReadVariableOpв6sequential_16/lstm_16/lstm_cell/BiasAdd/ReadVariableOpв5sequential_16/lstm_16/lstm_cell/MatMul/ReadVariableOpв7sequential_16/lstm_16/lstm_cell/MatMul_1/ReadVariableOpвsequential_16/lstm_16/whilef
sequential_16/lstm_16/ShapeShapelstm_16_input*
T0*
_output_shapes
::э╧s
)sequential_16/lstm_16/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_16/lstm_16/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_16/lstm_16/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:┐
#sequential_16/lstm_16/strided_sliceStridedSlice$sequential_16/lstm_16/Shape:output:02sequential_16/lstm_16/strided_slice/stack:output:04sequential_16/lstm_16/strided_slice/stack_1:output:04sequential_16/lstm_16/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_16/lstm_16/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╡
"sequential_16/lstm_16/zeros/packedPack,sequential_16/lstm_16/strided_slice:output:0-sequential_16/lstm_16/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_16/lstm_16/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    о
sequential_16/lstm_16/zerosFill+sequential_16/lstm_16/zeros/packed:output:0*sequential_16/lstm_16/zeros/Const:output:0*
T0*'
_output_shapes
:         dh
&sequential_16/lstm_16/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :d╣
$sequential_16/lstm_16/zeros_1/packedPack,sequential_16/lstm_16/strided_slice:output:0/sequential_16/lstm_16/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_16/lstm_16/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ┤
sequential_16/lstm_16/zeros_1Fill-sequential_16/lstm_16/zeros_1/packed:output:0,sequential_16/lstm_16/zeros_1/Const:output:0*
T0*'
_output_shapes
:         dy
$sequential_16/lstm_16/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          а
sequential_16/lstm_16/transpose	Transposelstm_16_input-sequential_16/lstm_16/transpose/perm:output:0*
T0*+
_output_shapes
:j         ~
sequential_16/lstm_16/Shape_1Shape#sequential_16/lstm_16/transpose:y:0*
T0*
_output_shapes
::э╧u
+sequential_16/lstm_16/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_16/lstm_16/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_16/lstm_16/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╔
%sequential_16/lstm_16/strided_slice_1StridedSlice&sequential_16/lstm_16/Shape_1:output:04sequential_16/lstm_16/strided_slice_1/stack:output:06sequential_16/lstm_16/strided_slice_1/stack_1:output:06sequential_16/lstm_16/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_16/lstm_16/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
         Ў
#sequential_16/lstm_16/TensorArrayV2TensorListReserve:sequential_16/lstm_16/TensorArrayV2/element_shape:output:0.sequential_16/lstm_16/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ь
Ksequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       в
=sequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_16/lstm_16/transpose:y:0Tsequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥u
+sequential_16/lstm_16/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_16/lstm_16/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_16/lstm_16/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╫
%sequential_16/lstm_16/strided_slice_2StridedSlice#sequential_16/lstm_16/transpose:y:04sequential_16/lstm_16/strided_slice_2/stack:output:06sequential_16/lstm_16/strided_slice_2/stack_1:output:06sequential_16/lstm_16/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         *
shrink_axis_mask╡
5sequential_16/lstm_16/lstm_cell/MatMul/ReadVariableOpReadVariableOp>sequential_16_lstm_16_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0╥
&sequential_16/lstm_16/lstm_cell/MatMulMatMul.sequential_16/lstm_16/strided_slice_2:output:0=sequential_16/lstm_16/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р╣
7sequential_16/lstm_16/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp@sequential_16_lstm_16_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0╠
(sequential_16/lstm_16/lstm_cell/MatMul_1MatMul$sequential_16/lstm_16/zeros:output:0?sequential_16/lstm_16/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р┼
#sequential_16/lstm_16/lstm_cell/addAddV20sequential_16/lstm_16/lstm_cell/MatMul:product:02sequential_16/lstm_16/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Р│
6sequential_16/lstm_16/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp?sequential_16_lstm_16_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0╬
'sequential_16/lstm_16/lstm_cell/BiasAddBiasAdd'sequential_16/lstm_16/lstm_cell/add:z:0>sequential_16/lstm_16/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рq
/sequential_16/lstm_16/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ц
%sequential_16/lstm_16/lstm_cell/splitSplit8sequential_16/lstm_16/lstm_cell/split/split_dim:output:00sequential_16/lstm_16/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitФ
'sequential_16/lstm_16/lstm_cell/SigmoidSigmoid.sequential_16/lstm_16/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dЦ
)sequential_16/lstm_16/lstm_cell/Sigmoid_1Sigmoid.sequential_16/lstm_16/lstm_cell/split:output:1*
T0*'
_output_shapes
:         d│
#sequential_16/lstm_16/lstm_cell/mulMul-sequential_16/lstm_16/lstm_cell/Sigmoid_1:y:0&sequential_16/lstm_16/zeros_1:output:0*
T0*'
_output_shapes
:         dО
$sequential_16/lstm_16/lstm_cell/ReluRelu.sequential_16/lstm_16/lstm_cell/split:output:2*
T0*'
_output_shapes
:         d┐
%sequential_16/lstm_16/lstm_cell/mul_1Mul+sequential_16/lstm_16/lstm_cell/Sigmoid:y:02sequential_16/lstm_16/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         d┤
%sequential_16/lstm_16/lstm_cell/add_1AddV2'sequential_16/lstm_16/lstm_cell/mul:z:0)sequential_16/lstm_16/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dЦ
)sequential_16/lstm_16/lstm_cell/Sigmoid_2Sigmoid.sequential_16/lstm_16/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dЛ
&sequential_16/lstm_16/lstm_cell/Relu_1Relu)sequential_16/lstm_16/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         d├
%sequential_16/lstm_16/lstm_cell/mul_2Mul-sequential_16/lstm_16/lstm_cell/Sigmoid_2:y:04sequential_16/lstm_16/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dД
3sequential_16/lstm_16/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   t
2sequential_16/lstm_16/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :З
%sequential_16/lstm_16/TensorArrayV2_1TensorListReserve<sequential_16/lstm_16/TensorArrayV2_1/element_shape:output:0;sequential_16/lstm_16/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥\
sequential_16/lstm_16/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_16/lstm_16/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
         j
(sequential_16/lstm_16/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Р
sequential_16/lstm_16/whileWhile1sequential_16/lstm_16/while/loop_counter:output:07sequential_16/lstm_16/while/maximum_iterations:output:0#sequential_16/lstm_16/time:output:0.sequential_16/lstm_16/TensorArrayV2_1:handle:0$sequential_16/lstm_16/zeros:output:0&sequential_16/lstm_16/zeros_1:output:0.sequential_16/lstm_16/strided_slice_1:output:0Msequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_16_lstm_16_lstm_cell_matmul_readvariableop_resource@sequential_16_lstm_16_lstm_cell_matmul_1_readvariableop_resource?sequential_16_lstm_16_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :         d:         d: : : : : *%
_read_only_resource_inputs
	
*3
body+R)
'sequential_16_lstm_16_while_body_173613*3
cond+R)
'sequential_16_lstm_16_while_cond_173612*K
output_shapes:
8: : : : :         d:         d: : : : : *
parallel_iterations Ч
Fsequential_16/lstm_16/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    d   Ш
8sequential_16/lstm_16/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_16/lstm_16/while:output:3Osequential_16/lstm_16/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         d*
element_dtype0*
num_elements~
+sequential_16/lstm_16/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
         w
-sequential_16/lstm_16/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_16/lstm_16/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ї
%sequential_16/lstm_16/strided_slice_3StridedSliceAsequential_16/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:04sequential_16/lstm_16/strided_slice_3/stack:output:06sequential_16/lstm_16/strided_slice_3/stack_1:output:06sequential_16/lstm_16/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         d*
shrink_axis_mask{
&sequential_16/lstm_16/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ╪
!sequential_16/lstm_16/transpose_1	TransposeAsequential_16/lstm_16/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_16/lstm_16/transpose_1/perm:output:0*
T0*+
_output_shapes
:         dq
sequential_16/lstm_16/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    в
,sequential_16/dense_16/MatMul/ReadVariableOpReadVariableOp5sequential_16_dense_16_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0┐
sequential_16/dense_16/MatMulMatMul.sequential_16/lstm_16/strided_slice_3:output:04sequential_16/dense_16/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
-sequential_16/dense_16/BiasAdd/ReadVariableOpReadVariableOp6sequential_16_dense_16_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╗
sequential_16/dense_16/BiasAddBiasAdd'sequential_16/dense_16/MatMul:product:05sequential_16/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ~
sequential_16/dense_16/ReluRelu'sequential_16/dense_16/BiasAdd:output:0*
T0*'
_output_shapes
:         x
IdentityIdentity)sequential_16/dense_16/Relu:activations:0^NoOp*
T0*'
_output_shapes
:         ╩
NoOpNoOp.^sequential_16/dense_16/BiasAdd/ReadVariableOp-^sequential_16/dense_16/MatMul/ReadVariableOp7^sequential_16/lstm_16/lstm_cell/BiasAdd/ReadVariableOp6^sequential_16/lstm_16/lstm_cell/MatMul/ReadVariableOp8^sequential_16/lstm_16/lstm_cell/MatMul_1/ReadVariableOp^sequential_16/lstm_16/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         j: : : : : 2^
-sequential_16/dense_16/BiasAdd/ReadVariableOp-sequential_16/dense_16/BiasAdd/ReadVariableOp2\
,sequential_16/dense_16/MatMul/ReadVariableOp,sequential_16/dense_16/MatMul/ReadVariableOp2p
6sequential_16/lstm_16/lstm_cell/BiasAdd/ReadVariableOp6sequential_16/lstm_16/lstm_cell/BiasAdd/ReadVariableOp2n
5sequential_16/lstm_16/lstm_cell/MatMul/ReadVariableOp5sequential_16/lstm_16/lstm_cell/MatMul/ReadVariableOp2r
7sequential_16/lstm_16/lstm_cell/MatMul_1/ReadVariableOp7sequential_16/lstm_16/lstm_cell/MatMul_1/ReadVariableOp2:
sequential_16/lstm_16/whilesequential_16/lstm_16/while:($
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
resource:Z V
+
_output_shapes
:         j
'
_user_specified_namelstm_16_input
│
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175209

inputs
states_0
states_11
matmul_readvariableop_resource:	Р3
 matmul_1_readvariableop_resource:	dР.
biasadd_readvariableop_resource:	Р
identity

identity_1

identity_2ИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpвMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	dР*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:         Рs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Р*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         РQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╢
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:         dV
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:         dU
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:         dN
ReluRelusplit:output:2*
T0*'
_output_shapes
:         d_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:         dT
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:         dV
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:         dK
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:         dc
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:         dX
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:         dZ

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:         dm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:         :         d:         d: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:         d
"
_user_specified_name
states_1:QM
'
_output_shapes
:         d
"
_user_specified_name
states_0:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ыT
ў
'sequential_16_lstm_16_while_body_173613H
Dsequential_16_lstm_16_while_sequential_16_lstm_16_while_loop_counterN
Jsequential_16_lstm_16_while_sequential_16_lstm_16_while_maximum_iterations+
'sequential_16_lstm_16_while_placeholder-
)sequential_16_lstm_16_while_placeholder_1-
)sequential_16_lstm_16_while_placeholder_2-
)sequential_16_lstm_16_while_placeholder_3G
Csequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1_0Г
sequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_16_lstm_16_while_lstm_cell_matmul_readvariableop_resource_0:	Р[
Hsequential_16_lstm_16_while_lstm_cell_matmul_1_readvariableop_resource_0:	dРV
Gsequential_16_lstm_16_while_lstm_cell_biasadd_readvariableop_resource_0:	Р(
$sequential_16_lstm_16_while_identity*
&sequential_16_lstm_16_while_identity_1*
&sequential_16_lstm_16_while_identity_2*
&sequential_16_lstm_16_while_identity_3*
&sequential_16_lstm_16_while_identity_4*
&sequential_16_lstm_16_while_identity_5E
Asequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1Б
}sequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensorW
Dsequential_16_lstm_16_while_lstm_cell_matmul_readvariableop_resource:	РY
Fsequential_16_lstm_16_while_lstm_cell_matmul_1_readvariableop_resource:	dРT
Esequential_16_lstm_16_while_lstm_cell_biasadd_readvariableop_resource:	РИв<sequential_16/lstm_16/while/lstm_cell/BiasAdd/ReadVariableOpв;sequential_16/lstm_16/while/lstm_cell/MatMul/ReadVariableOpв=sequential_16/lstm_16/while/lstm_cell/MatMul_1/ReadVariableOpЮ
Msequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"       Ф
?sequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensor_0'sequential_16_lstm_16_while_placeholderVsequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:         *
element_dtype0├
;sequential_16/lstm_16/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpFsequential_16_lstm_16_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	Р*
dtype0Ў
,sequential_16/lstm_16/while/lstm_cell/MatMulMatMulFsequential_16/lstm_16/while/TensorArrayV2Read/TensorListGetItem:item:0Csequential_16/lstm_16/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р╟
=sequential_16/lstm_16/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpHsequential_16_lstm_16_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	dР*
dtype0▌
.sequential_16/lstm_16/while/lstm_cell/MatMul_1MatMul)sequential_16_lstm_16_while_placeholder_2Esequential_16/lstm_16/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Р╫
)sequential_16/lstm_16/while/lstm_cell/addAddV26sequential_16/lstm_16/while/lstm_cell/MatMul:product:08sequential_16/lstm_16/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:         Р┴
<sequential_16/lstm_16/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpGsequential_16_lstm_16_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:Р*
dtype0р
-sequential_16/lstm_16/while/lstm_cell/BiasAddBiasAdd-sequential_16/lstm_16/while/lstm_cell/add:z:0Dsequential_16/lstm_16/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Рw
5sequential_16/lstm_16/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
+sequential_16/lstm_16/while/lstm_cell/splitSplit>sequential_16/lstm_16/while/lstm_cell/split/split_dim:output:06sequential_16/lstm_16/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:         d:         d:         d:         d*
	num_splitа
-sequential_16/lstm_16/while/lstm_cell/SigmoidSigmoid4sequential_16/lstm_16/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:         dв
/sequential_16/lstm_16/while/lstm_cell/Sigmoid_1Sigmoid4sequential_16/lstm_16/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:         d┬
)sequential_16/lstm_16/while/lstm_cell/mulMul3sequential_16/lstm_16/while/lstm_cell/Sigmoid_1:y:0)sequential_16_lstm_16_while_placeholder_3*
T0*'
_output_shapes
:         dЪ
*sequential_16/lstm_16/while/lstm_cell/ReluRelu4sequential_16/lstm_16/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:         d╤
+sequential_16/lstm_16/while/lstm_cell/mul_1Mul1sequential_16/lstm_16/while/lstm_cell/Sigmoid:y:08sequential_16/lstm_16/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:         d╞
+sequential_16/lstm_16/while/lstm_cell/add_1AddV2-sequential_16/lstm_16/while/lstm_cell/mul:z:0/sequential_16/lstm_16/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:         dв
/sequential_16/lstm_16/while/lstm_cell/Sigmoid_2Sigmoid4sequential_16/lstm_16/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:         dЧ
,sequential_16/lstm_16/while/lstm_cell/Relu_1Relu/sequential_16/lstm_16/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:         d╒
+sequential_16/lstm_16/while/lstm_cell/mul_2Mul3sequential_16/lstm_16/while/lstm_cell/Sigmoid_2:y:0:sequential_16/lstm_16/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:         dИ
Fsequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ┬
@sequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_16_lstm_16_while_placeholder_1Osequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItem/index:output:0/sequential_16/lstm_16/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щш╥c
!sequential_16/lstm_16/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
sequential_16/lstm_16/while/addAddV2'sequential_16_lstm_16_while_placeholder*sequential_16/lstm_16/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_16/lstm_16/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :┐
!sequential_16/lstm_16/while/add_1AddV2Dsequential_16_lstm_16_while_sequential_16_lstm_16_while_loop_counter,sequential_16/lstm_16/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
$sequential_16/lstm_16/while/IdentityIdentity%sequential_16/lstm_16/while/add_1:z:0!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: ┬
&sequential_16/lstm_16/while/Identity_1IdentityJsequential_16_lstm_16_while_sequential_16_lstm_16_while_maximum_iterations!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: Ы
&sequential_16/lstm_16/while/Identity_2Identity#sequential_16/lstm_16/while/add:z:0!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: ╚
&sequential_16/lstm_16/while/Identity_3IdentityPsequential_16/lstm_16/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_16/lstm_16/while/NoOp*
T0*
_output_shapes
: ╕
&sequential_16/lstm_16/while/Identity_4Identity/sequential_16/lstm_16/while/lstm_cell/mul_2:z:0!^sequential_16/lstm_16/while/NoOp*
T0*'
_output_shapes
:         d╕
&sequential_16/lstm_16/while/Identity_5Identity/sequential_16/lstm_16/while/lstm_cell/add_1:z:0!^sequential_16/lstm_16/while/NoOp*
T0*'
_output_shapes
:         d√
 sequential_16/lstm_16/while/NoOpNoOp=^sequential_16/lstm_16/while/lstm_cell/BiasAdd/ReadVariableOp<^sequential_16/lstm_16/while/lstm_cell/MatMul/ReadVariableOp>^sequential_16/lstm_16/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "Y
&sequential_16_lstm_16_while_identity_1/sequential_16/lstm_16/while/Identity_1:output:0"Y
&sequential_16_lstm_16_while_identity_2/sequential_16/lstm_16/while/Identity_2:output:0"Y
&sequential_16_lstm_16_while_identity_3/sequential_16/lstm_16/while/Identity_3:output:0"Y
&sequential_16_lstm_16_while_identity_4/sequential_16/lstm_16/while/Identity_4:output:0"Y
&sequential_16_lstm_16_while_identity_5/sequential_16/lstm_16/while/Identity_5:output:0"U
$sequential_16_lstm_16_while_identity-sequential_16/lstm_16/while/Identity:output:0"Р
Esequential_16_lstm_16_while_lstm_cell_biasadd_readvariableop_resourceGsequential_16_lstm_16_while_lstm_cell_biasadd_readvariableop_resource_0"Т
Fsequential_16_lstm_16_while_lstm_cell_matmul_1_readvariableop_resourceHsequential_16_lstm_16_while_lstm_cell_matmul_1_readvariableop_resource_0"О
Dsequential_16_lstm_16_while_lstm_cell_matmul_readvariableop_resourceFsequential_16_lstm_16_while_lstm_cell_matmul_readvariableop_resource_0"И
Asequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1Csequential_16_lstm_16_while_sequential_16_lstm_16_strided_slice_1_0"А
}sequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensorsequential_16_lstm_16_while_tensorarrayv2read_tensorlistgetitem_sequential_16_lstm_16_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :         d:         d: : : : : 2|
<sequential_16/lstm_16/while/lstm_cell/BiasAdd/ReadVariableOp<sequential_16/lstm_16/while/lstm_cell/BiasAdd/ReadVariableOp2z
;sequential_16/lstm_16/while/lstm_cell/MatMul/ReadVariableOp;sequential_16/lstm_16/while/lstm_cell/MatMul/ReadVariableOp2~
=sequential_16/lstm_16/while/lstm_cell/MatMul_1/ReadVariableOp=sequential_16/lstm_16/while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:uq

_output_shapes
: 
W
_user_specified_name?=sequential_16/lstm_16/TensorArrayUnstack/TensorListFromTensor:]Y

_output_shapes
: 
?
_user_specified_name'%sequential_16/lstm_16/strided_slice_1:-)
'
_output_shapes
:         d:-)
'
_output_shapes
:         d:

_output_shapes
: :

_output_shapes
: :fb

_output_shapes
: 
H
_user_specified_name0.sequential_16/lstm_16/while/maximum_iterations:` \

_output_shapes
: 
B
_user_specified_name*(sequential_16/lstm_16/while/loop_counter"╩L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╗
serving_defaultз
K
lstm_16_input:
serving_default_lstm_16_input:0         j<
dense_160
StatefulPartitionedCall:0         tensorflow/serving/predict:еЗ
┤
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
┌
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
╗
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
 non_trainable_variables

!layers
"metrics
#layer_regularization_losses
$layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╧
%trace_0
&trace_12Ш
.__inference_sequential_16_layer_call_fn_174403
.__inference_sequential_16_layer_call_fn_174418╡
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
 z%trace_0z&trace_1
Е
'trace_0
(trace_12╬
I__inference_sequential_16_layer_call_and_return_conditional_losses_174227
I__inference_sequential_16_layer_call_and_return_conditional_losses_174388╡
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
 z'trace_0z(trace_1
╥B╧
!__inference__wrapped_model_173705lstm_16_input"Ш
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
К
)
_variables
*_iterations
+_learning_rate
,_index_dict
-	momentums
._update_step_xla"
experimentalOptimizer
,
/serving_default"
signature_map
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
╣

0states
1non_trainable_variables

2layers
3metrics
4layer_regularization_losses
5layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
р
6trace_0
7trace_1
8trace_2
9trace_32ї
(__inference_lstm_16_layer_call_fn_174478
(__inference_lstm_16_layer_call_fn_174489
(__inference_lstm_16_layer_call_fn_174500
(__inference_lstm_16_layer_call_fn_174511╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z6trace_0z7trace_1z8trace_2z9trace_3
╠
:trace_0
;trace_1
<trace_2
=trace_32с
C__inference_lstm_16_layer_call_and_return_conditional_losses_174656
C__inference_lstm_16_layer_call_and_return_conditional_losses_174801
C__inference_lstm_16_layer_call_and_return_conditional_losses_174946
C__inference_lstm_16_layer_call_and_return_conditional_losses_175091╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z:trace_0z;trace_1z<trace_2z=trace_3
"
_generic_user_object
°
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B__call__
*C&call_and_return_all_conditional_losses
D_random_generator
E
state_size

kernel
recurrent_kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
у
Ktrace_02╞
)__inference_dense_16_layer_call_fn_175100Ш
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
 zKtrace_0
■
Ltrace_02с
D__inference_dense_16_layer_call_and_return_conditional_losses_175111Ш
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
 zLtrace_0
!:d2dense_16/kernel
:2dense_16/bias
+:)	Р2lstm_16/lstm_cell/kernel
5:3	dР2"lstm_16/lstm_cell/recurrent_kernel
%:#Р2lstm_16/lstm_cell/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
M0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
№B∙
.__inference_sequential_16_layer_call_fn_174403lstm_16_input"╡
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
.__inference_sequential_16_layer_call_fn_174418lstm_16_input"╡
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_174227lstm_16_input"╡
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
I__inference_sequential_16_layer_call_and_return_conditional_losses_174388lstm_16_input"╡
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
J
*0
N1
O2
P3
Q4
R5"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
N0
O1
P2
Q3
R4"
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
$__inference_signature_wrapper_174467lstm_16_input"Ф
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
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЖBГ
(__inference_lstm_16_layer_call_fn_174478inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЖBГ
(__inference_lstm_16_layer_call_fn_174489inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
(__inference_lstm_16_layer_call_fn_174500inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ДBБ
(__inference_lstm_16_layer_call_fn_174511inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
бBЮ
C__inference_lstm_16_layer_call_and_return_conditional_losses_174656inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
бBЮ
C__inference_lstm_16_layer_call_and_return_conditional_losses_174801inputs_0"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
C__inference_lstm_16_layer_call_and_return_conditional_losses_174946inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЯBЬ
C__inference_lstm_16_layer_call_and_return_conditional_losses_175091inputs"╩
├▓┐
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsв

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
>	variables
?trainable_variables
@regularization_losses
B__call__
*C&call_and_return_all_conditional_losses
&C"call_and_return_conditional_losses"
_generic_user_object
┼
Xtrace_0
Ytrace_12О
*__inference_lstm_cell_layer_call_fn_175128
*__inference_lstm_cell_layer_call_fn_175145│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

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
 zXtrace_0zYtrace_1
√
Ztrace_0
[trace_12─
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175177
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175209│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

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
 zZtrace_0z[trace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
)__inference_dense_16_layer_call_fn_175100inputs"Ш
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
D__inference_dense_16_layer_call_and_return_conditional_losses_175111inputs"Ш
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
N
\	variables
]	keras_api
	^total
	_count"
_tf_keras_metric
+:)	Р2m/lstm_16/lstm_cell/kernel
5:3	dР2$m/lstm_16/lstm_cell/recurrent_kernel
%:#Р2m/lstm_16/lstm_cell/bias
!:d2m/dense_16/kernel
:2m/dense_16/bias
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
ГBА
*__inference_lstm_cell_layer_call_fn_175128inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

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
ГBА
*__inference_lstm_cell_layer_call_fn_175145inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

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
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175177inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

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
ЮBЫ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175209inputsstates_0states_1"│
м▓и
FullArgSpec+
args#Ъ 
jinputs
jstates

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
^0
_1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2countЭ
!__inference__wrapped_model_173705x:в7
0в-
+К(
lstm_16_input         j
к "3к0
.
dense_16"К
dense_16         л
D__inference_dense_16_layer_call_and_return_conditional_losses_175111c/в,
%в"
 К
inputs         d
к ",в)
"К
tensor_0         
Ъ Е
)__inference_dense_16_layer_call_fn_175100X/в,
%в"
 К
inputs         d
к "!К
unknown         ╠
C__inference_lstm_16_layer_call_and_return_conditional_losses_174656ДOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к ",в)
"К
tensor_0         d
Ъ ╠
C__inference_lstm_16_layer_call_and_return_conditional_losses_174801ДOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к ",в)
"К
tensor_0         d
Ъ ╗
C__inference_lstm_16_layer_call_and_return_conditional_losses_174946t?в<
5в2
$К!
inputs         j

 
p

 
к ",в)
"К
tensor_0         d
Ъ ╗
C__inference_lstm_16_layer_call_and_return_conditional_losses_175091t?в<
5в2
$К!
inputs         j

 
p 

 
к ",в)
"К
tensor_0         d
Ъ е
(__inference_lstm_16_layer_call_fn_174478yOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p

 
к "!К
unknown         dе
(__inference_lstm_16_layer_call_fn_174489yOвL
EвB
4Ъ1
/К,
inputs_0                  

 
p 

 
к "!К
unknown         dХ
(__inference_lstm_16_layer_call_fn_174500i?в<
5в2
$К!
inputs         j

 
p

 
к "!К
unknown         dХ
(__inference_lstm_16_layer_call_fn_174511i?в<
5в2
$К!
inputs         j

 
p 

 
к "!К
unknown         d▐
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175177ФАв}
vвs
 К
inputs         
KвH
"К
states_0         d
"К
states_1         d
p
к "ЙвЕ
~в{
$К!

tensor_0_0         d
SЪP
&К#
tensor_0_1_0         d
&К#
tensor_0_1_1         d
Ъ ▐
E__inference_lstm_cell_layer_call_and_return_conditional_losses_175209ФАв}
vвs
 К
inputs         
KвH
"К
states_0         d
"К
states_1         d
p 
к "ЙвЕ
~в{
$К!

tensor_0_0         d
SЪP
&К#
tensor_0_1_0         d
&К#
tensor_0_1_1         d
Ъ ▒
*__inference_lstm_cell_layer_call_fn_175128ВАв}
vвs
 К
inputs         
KвH
"К
states_0         d
"К
states_1         d
p
к "xвu
"К
tensor_0         d
OЪL
$К!

tensor_1_0         d
$К!

tensor_1_1         d▒
*__inference_lstm_cell_layer_call_fn_175145ВАв}
vвs
 К
inputs         
KвH
"К
states_0         d
"К
states_1         d
p 
к "xвu
"К
tensor_0         d
OЪL
$К!

tensor_1_0         d
$К!

tensor_1_1         d╞
I__inference_sequential_16_layer_call_and_return_conditional_losses_174227yBв?
8в5
+К(
lstm_16_input         j
p

 
к ",в)
"К
tensor_0         
Ъ ╞
I__inference_sequential_16_layer_call_and_return_conditional_losses_174388yBв?
8в5
+К(
lstm_16_input         j
p 

 
к ",в)
"К
tensor_0         
Ъ а
.__inference_sequential_16_layer_call_fn_174403nBв?
8в5
+К(
lstm_16_input         j
p

 
к "!К
unknown         а
.__inference_sequential_16_layer_call_fn_174418nBв?
8в5
+К(
lstm_16_input         j
p 

 
к "!К
unknown         ▓
$__inference_signature_wrapper_174467ЙKвH
в 
Aк>
<
lstm_16_input+К(
lstm_16_input         j"3к0
.
dense_16"К
dense_16         