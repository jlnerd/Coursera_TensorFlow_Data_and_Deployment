Иё
░¤
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
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
╛
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
executor_typestring И
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ"serve*2.0.0-beta12v2.0.0-beta0-17-g8e423e38ле
t
dense/kernelVarHandleOp*
shared_namedense/kernel*
dtype0*
_output_shapes
: *
shape
:
О
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_class
loc:@dense/kernel*
dtype0*
_output_shapes

:
l

dense/biasVarHandleOp*
shape:*
shared_name
dense/bias*
dtype0*
_output_shapes
: 
Д
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_class
loc:@dense/bias*
dtype0*
_output_shapes
:
d
SGD/iterVarHandleOp*
shared_name
SGD/iter*
dtype0	*
_output_shapes
: *
shape: 
z
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_class
loc:@SGD/iter*
dtype0	*
_output_shapes
: 
f
	SGD/decayVarHandleOp*
shape: *
shared_name	SGD/decay*
dtype0*
_output_shapes
: 
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
v
SGD/learning_rateVarHandleOp*
shape: *"
shared_nameSGD/learning_rate*
dtype0*
_output_shapes
: 
Х
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*$
_class
loc:@SGD/learning_rate*
dtype0*
_output_shapes
: 
l
SGD/momentumVarHandleOp*
shared_nameSGD/momentum*
dtype0*
_output_shapes
: *
shape: 
Ж
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

NoOpNoOp
Є
ConstConst"/device:CPU:0*н
valueгBа BЩ
е
layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
R
		variables

trainable_variables
regularization_losses
	keras_api
С

kernel
bias
_callable_losses
_eager_losses
	variables
trainable_variables
regularization_losses
	keras_api
6
iter
	decay
learning_rate
momentum

0
1

0
1
 
y
	variables
trainable_variables
metrics
regularization_losses
non_trainable_variables

layers
 
 
 
 
y
		variables

trainable_variables
metrics
regularization_losses
non_trainable_variables

layers
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
 
y
	variables
trainable_variables
metrics
regularization_losses
 non_trainable_variables

!layers
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
 
 
 
 
 
 *
dtype0*
_output_shapes
: 
x
serving_default_inputPlaceholder*
shape:         *
dtype0*'
_output_shapes
:         
Д
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense/kernel
dense/bias**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:         *+
f&R$
"__inference_signature_wrapper_1372*
Tout
2
O
saver_filenamePlaceholder*
dtype0*
_output_shapes
: *
shape: 
╨
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOpConst**
config_proto

CPU

GPU 2J 8*
Tin

2	*
_output_shapes
: *+
_gradient_op_typePartitionedCall-1417*&
f!R
__inference__traced_save_1416*
Tout
2
╙
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentum*+
_gradient_op_typePartitionedCall-1448*)
f$R"
 __inference__traced_restore_1447*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
	2*
_output_shapes
: ╫Г
Е
К
__inference__traced_save_1416
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop
savev2_1_const

identity_1ИвMergeV2CheckpointsвSaveV2вSaveV2_1О
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_9d6e55a066b54730a9b832276fb275e3/part*
dtype0*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
dtype0*
_output_shapes
: *
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ф
SaveV2/tensor_namesConst"/device:CPU:0*╜
value│B░B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:y
SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:Щ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes

2	h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: Ч
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Й
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:├
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
2╣
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
_output_shapes
:*
T0Ц
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
_output_shapes
: *
T0"!

identity_1Identity_1:output:0*/
_input_shapes
: ::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:+ '
%
_user_specified_namefile_prefix: : : : : : : 
ў
╪
?__inference_dense_layer_call_and_return_conditional_losses_1297

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         а
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*'
_output_shapes
:         *
T0Й
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*'
_output_shapes
:         *
T0"
identityIdentity:output:0*.
_input_shapes
:         ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp: :& "
 
_user_specified_nameinputs: 
г
╥
?__inference_model_layer_call_and_return_conditional_losses_1334

inputs(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityИвdense/StatefulPartitionedCallў
dense/StatefulPartitionedCallStatefulPartitionedCallinputs$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1303*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1297*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:         О
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*'
_output_shapes
:         *
T0"
identityIdentity:output:0*.
_input_shapes
:         ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall: :& "
 
_user_specified_nameinputs: 
г
╥
?__inference_model_layer_call_and_return_conditional_losses_1351

inputs(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityИвdense/StatefulPartitionedCallў
dense/StatefulPartitionedCallStatefulPartitionedCallinputs$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tin
2*'
_output_shapes
:         *+
_gradient_op_typePartitionedCall-1303*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1297*
Tout
2**
config_proto

CPU

GPU 2J 8О
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*'
_output_shapes
:         *
T0"
identityIdentity:output:0*.
_input_shapes
:         ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
а
╤
?__inference_model_layer_call_and_return_conditional_losses_1324	
input(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityИвdense/StatefulPartitionedCallЎ
dense/StatefulPartitionedCallStatefulPartitionedCallinput$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1303*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1297*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:         *
Tin
2О
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:         "
identityIdentity:output:0*.
_input_shapes
:         ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall: :% !

_user_specified_nameinput: 
з
в
"__inference_signature_wrapper_1372	
input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1367*(
f#R!
__inference__wrapped_model_1281*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:         В
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         "
identityIdentity:output:0*.
_input_shapes
:         ::22
StatefulPartitionedCallStatefulPartitionedCall:% !

_user_specified_nameinput: : 
╞

ч
__inference__wrapped_model_1281	
input.
*model_dense_matmul_readvariableop_resource/
+model_dense_biasadd_readvariableop_resource
identityИв"model/dense/BiasAdd/ReadVariableOpв!model/dense/MatMul/ReadVariableOp║
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes

:А
model/dense/MatMulMatMulinput)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ╕
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
:Ъ
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         н
IdentityIdentitymodel/dense/BiasAdd:output:0#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         "
identityIdentity:output:0*.
_input_shapes
:         ::2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp:% !

_user_specified_nameinput: : 
ц
┤
 __inference__traced_restore_1447
file_prefix!
assignvariableop_dense_kernel!
assignvariableop_1_dense_bias
assignvariableop_2_sgd_iter 
assignvariableop_3_sgd_decay(
$assignvariableop_4_sgd_learning_rate#
assignvariableop_5_sgd_momentum

identity_7ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5в	RestoreV2вRestoreV2_1Ч
RestoreV2/tensor_namesConst"/device:CPU:0*╜
value│B░B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueBB B B B B B ╝
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
dtypes

2	*,
_output_shapes
::::::L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:y
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:}
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0*
dtype0*
_output_shapes
 N

Identity_2IdentityRestoreV2:tensors:2*
T0	*
_output_shapes
:{
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0*
dtype0	*
_output_shapes
 N

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:|
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:Д
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0*
dtype0*
_output_shapes
 N

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0*
dtype0*
_output_shapes
 М
RestoreV2_1/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPHt
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:╡
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 ╓

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: т

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: "!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2
RestoreV2_1RestoreV2_12
	RestoreV2	RestoreV22(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_5AssignVariableOp_5:+ '
%
_user_specified_namefile_prefix: : : : : : 
╔
д
$__inference_model_layer_call_fn_1340	
input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1335*H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_1334*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:         *
Tin
2В
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         "
identityIdentity:output:0*.
_input_shapes
:         ::22
StatefulPartitionedCallStatefulPartitionedCall:% !

_user_specified_nameinput: : 
╠
е
$__inference_dense_layer_call_fn_1308

inputs"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsstatefulpartitionedcall_args_1statefulpartitionedcall_args_2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:         *
Tin
2*+
_gradient_op_typePartitionedCall-1303*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1297*
Tout
2В
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         "
identityIdentity:output:0*.
_input_shapes
:         ::22
StatefulPartitionedCallStatefulPartitionedCall:& "
 
_user_specified_nameinputs: : 
а
╤
?__inference_model_layer_call_and_return_conditional_losses_1315	
input(
$dense_statefulpartitionedcall_args_1(
$dense_statefulpartitionedcall_args_2
identityИвdense/StatefulPartitionedCallЎ
dense/StatefulPartitionedCallStatefulPartitionedCallinput$dense_statefulpartitionedcall_args_1$dense_statefulpartitionedcall_args_2*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:         *+
_gradient_op_typePartitionedCall-1303*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1297О
IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*'
_output_shapes
:         *
T0"
identityIdentity:output:0*.
_input_shapes
:         ::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:% !

_user_specified_nameinput: : 
╔
д
$__inference_model_layer_call_fn_1357	
input"
statefulpartitionedcall_args_1"
statefulpartitionedcall_args_2
identityИвStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputstatefulpartitionedcall_args_1statefulpartitionedcall_args_2*+
_gradient_op_typePartitionedCall-1352*H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_1351*
Tout
2**
config_proto

CPU

GPU 2J 8*'
_output_shapes
:         *
Tin
2В
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         "
identityIdentity:output:0*.
_input_shapes
:         ::22
StatefulPartitionedCallStatefulPartitionedCall:% !

_user_specified_nameinput: : "7L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*д
serving_defaultР
7
input.
serving_default_input:0         9
dense0
StatefulPartitionedCall:0         tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:═D
╗
layer-0
layer_with_weights-0
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
*"&call_and_return_all_conditional_losses
#_default_save_signature
$__call__"╝
_tf_keras_modelв{"class_name": "Model", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": null, "batch_input_shape": null, "config": {"name": "model", "layers": [{"name": "input", "class_name": "InputLayer", "config": {"batch_input_shape": [null, 1], "dtype": "float32", "sparse": false, "name": "input"}, "inbound_nodes": []}, {"name": "dense", "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["dense", 0, 0]]}, "input_spec": null, "activity_regularizer": null, "keras_version": "2.2.4-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "model", "layers": [{"name": "input", "class_name": "InputLayer", "config": {"batch_input_shape": [null, 1], "dtype": "float32", "sparse": false, "name": "input"}, "inbound_nodes": []}, {"name": "dense", "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["dense", 0, 0]]}}, "training_config": {"loss": "MSE", "metrics": [], "weighted_metrics": null, "sample_weight_mode": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.009999999776482582, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
╨
		variables

trainable_variables
regularization_losses
	keras_api
*%&call_and_return_all_conditional_losses
&__call__"┴
_tf_keras_layerз{"class_name": "InputLayer", "name": "input", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": [null, 1], "config": {"batch_input_shape": [null, 1], "dtype": "float32", "sparse": false, "name": "input"}, "input_spec": null, "activity_regularizer": null}
┤

kernel
bias
_callable_losses
_eager_losses
	variables
trainable_variables
regularization_losses
	keras_api
*'&call_and_return_all_conditional_losses
(__call__"ц
_tf_keras_layer╠{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}}, "activity_regularizer": null}
I
iter
	decay
learning_rate
momentum"
	optimizer
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Ц
	variables
trainable_variables
metrics
regularization_losses
non_trainable_variables

layers
$__call__
#_default_save_signature
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
,
)serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
∙
		variables

trainable_variables
metrics
regularization_losses
non_trainable_variables

layers
&__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
:2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
∙
	variables
trainable_variables
metrics
regularization_losses
 non_trainable_variables

!layers
(__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
│2░
?__inference_model_layer_call_and_return_conditional_losses_1324
?__inference_model_layer_call_and_return_conditional_losses_1315
?__inference_model_layer_call_and_return_conditional_losses_1351
?__inference_model_layer_call_and_return_conditional_losses_1334й
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
█2╪
__inference__wrapped_model_1281┤
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *$в!
К
input         
√2°
$__inference_model_layer_call_fn_1340
$__inference_model_layer_call_fn_1357й
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
Ю2ЫШ
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
Ю2ЫШ
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
▀2▄
?__inference_dense_layer_call_and_return_conditional_losses_1297Ш
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
─2┴
$__inference_dense_layer_call_fn_1308Ш
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
/B-
"__inference_signature_wrapper_1372inputг
?__inference_model_layer_call_and_return_conditional_losses_1334`3в0
)в&
 К
inputs         
p 
к "%в"
К
0         
Ъ w
$__inference_dense_layer_call_fn_1308O/в,
%в"
 К
inputs         
к "К         z
$__inference_model_layer_call_fn_1357R2в/
(в%
К
input         
p
к "К         Я
?__inference_dense_layer_call_and_return_conditional_losses_1297\/в,
%в"
 К
inputs         
к "%в"
К
0         
Ъ в
?__inference_model_layer_call_and_return_conditional_losses_1315_2в/
(в%
К
input         
p 
к "%в"
К
0         
Ъ г
?__inference_model_layer_call_and_return_conditional_losses_1351`3в0
)в&
 К
inputs         
p
к "%в"
К
0         
Ъ z
$__inference_model_layer_call_fn_1340R2в/
(в%
К
input         
p 
к "К         в
?__inference_model_layer_call_and_return_conditional_losses_1324_2в/
(в%
К
input         
p
к "%в"
К
0         
Ъ Т
"__inference_signature_wrapper_1372l7в4
в 
-к*
(
inputК
input         "-к*
(
denseК
dense         Ж
__inference__wrapped_model_1281c.в+
$в!
К
input         
к "-к*
(
denseК
dense         