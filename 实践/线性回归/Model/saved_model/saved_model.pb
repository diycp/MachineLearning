ń
Ć¤
:
Add
x"T
y"T
z"T"
Ttype:
2	

ApplyGradientDescent
var"T

alpha"T

delta"T
out"T" 
Ttype:
2	"
use_lockingbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
4
Fill
dims

value"T
output"T"	
Ttype
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
8
FloorMod
x"T
y"T
z"T"
Ttype:	
2	
.
Identity

input"T
output"T"	
Ttype
;
Maximum
x"T
y"T
z"T"
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "
tag_string*1.5.02
b'unknown'ěr
\
quanzhong/initial_valueConst*
valueB
 *  ?*
_output_shapes
: *
dtype0
m
	quanzhong
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 
Ś
quanzhong/AssignAssign	quanzhongquanzhong/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@quanzhong
d
quanzhong/readIdentity	quanzhong*
T0*
_output_shapes
: *
_class
loc:@quanzhong
Z
pianzhi/initial_valueConst*
valueB
 *    *
_output_shapes
: *
dtype0
k
pianzhi
VariableV2*
_output_shapes
: *
dtype0*
shared_name *
	container *
shape: 

pianzhi/AssignAssignpianzhipianzhi/initial_value*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@pianzhi
^
pianzhi/readIdentitypianzhi*
T0*
_output_shapes
: *
_class
loc:@pianzhi
P
PlaceholderPlaceholder*
_output_shapes
:*
dtype0*
shape:
h
Placeholder_1Placeholder*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
J
MulMulPlaceholderquanzhong/read*
T0*
_output_shapes
:
@
addAddMulpianzhi/read*
T0*
_output_shapes
:
]
SquaredDifferenceSquaredDifferenceaddPlaceholder_1*
T0*
_output_shapes
:
@
RankRankSquaredDifference*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
_output_shapes
: *
dtype0
M
range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
e
outputSumSquaredDifferencerange*
	keep_dims( *
T0*
_output_shapes
: *

Tidx0
R
gradients/ShapeConst*
valueB *
_output_shapes
: *
dtype0
X
gradients/grad_ys_0Const*
valueB
 *  ?*
_output_shapes
: *
dtype0
]
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: 
u
gradients/output_grad/ShapeShapeSquaredDifference*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
gradients/output_grad/SizeSizegradients/output_grad/Shape*
out_type0*
T0*
_output_shapes
: *.
_class$
" loc:@gradients/output_grad/Shape
Ą
gradients/output_grad/addAddrangegradients/output_grad/Size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@gradients/output_grad/Shape
ş
gradients/output_grad/modFloorModgradients/output_grad/addgradients/output_grad/Size*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@gradients/output_grad/Shape
Ś
gradients/output_grad/Shape_1Shapegradients/output_grad/mod*
out_type0*
T0*
_output_shapes
:*.
_class$
" loc:@gradients/output_grad/Shape

!gradients/output_grad/range/startConst*
value	B : *
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/output_grad/Shape

!gradients/output_grad/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/output_grad/Shape
ç
gradients/output_grad/rangeRange!gradients/output_grad/range/startgradients/output_grad/Size!gradients/output_grad/range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*.
_class$
" loc:@gradients/output_grad/Shape

 gradients/output_grad/Fill/valueConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/output_grad/Shape
Á
gradients/output_grad/FillFillgradients/output_grad/Shape_1 gradients/output_grad/Fill/value*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@gradients/output_grad/Shape

#gradients/output_grad/DynamicStitchDynamicStitchgradients/output_grad/rangegradients/output_grad/modgradients/output_grad/Shapegradients/output_grad/Fill*
T0*
N*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@gradients/output_grad/Shape

gradients/output_grad/Maximum/yConst*
value	B :*
_output_shapes
: *
dtype0*.
_class$
" loc:@gradients/output_grad/Shape
Ě
gradients/output_grad/MaximumMaximum#gradients/output_grad/DynamicStitchgradients/output_grad/Maximum/y*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@gradients/output_grad/Shape
Ä
gradients/output_grad/floordivFloorDivgradients/output_grad/Shapegradients/output_grad/Maximum*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*.
_class$
" loc:@gradients/output_grad/Shape

gradients/output_grad/ReshapeReshapegradients/Fill#gradients/output_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:

gradients/output_grad/TileTilegradients/output_grad/Reshapegradients/output_grad/floordiv*
T0*
_output_shapes
:*

Tmultiples0
r
&gradients/SquaredDifference_grad/ShapeShapeadd*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
(gradients/SquaredDifference_grad/Shape_1ShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
Ţ
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

'gradients/SquaredDifference_grad/scalarConst^gradients/output_grad/Tile*
valueB
 *   @*
_output_shapes
: *
dtype0

$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/output_grad/Tile*
T0*
_output_shapes
:

$gradients/SquaredDifference_grad/subSubaddPlaceholder_1^gradients/output_grad/Tile*
T0*
_output_shapes
:

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0*
_output_shapes
:
Ë
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
˛
(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Ď
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0
Ă
*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg

9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*
_output_shapes
:*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape

;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
d
gradients/add_grad/ShapeShapeMul*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/add_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
´
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Â
gradients/add_grad/SumSum9gradients/SquaredDifference_grad/tuple/control_dependency(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:
Ć
gradients/add_grad/Sum_1Sum9gradients/SquaredDifference_grad/tuple/control_dependency*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
Ë
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/add_grad/Reshape
Ď
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/add_grad/Reshape_1
l
gradients/Mul_grad/ShapeShapePlaceholder*
out_type0*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
gradients/Mul_grad/Shape_1Const*
valueB *
_output_shapes
: *
dtype0
´
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
}
gradients/Mul_grad/mulMul+gradients/add_grad/tuple/control_dependencyquanzhong/read*
T0*
_output_shapes
:

gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
|
gradients/Mul_grad/mul_1MulPlaceholder+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
:
Ľ
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*
_output_shapes
:*

Tidx0

gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
Ë
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*
_output_shapes
:*-
_class#
!loc:@gradients/Mul_grad/Reshape
Ď
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*
_output_shapes
: */
_class%
#!loc:@gradients/Mul_grad/Reshape_1
b
GradientDescent/learning_rateConst*
valueB
 *ˇŃ8*
_output_shapes
: *
dtype0
ř
5GradientDescent/update_quanzhong/ApplyGradientDescentApplyGradientDescent	quanzhongGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@quanzhong
ň
3GradientDescent/update_pianzhi/ApplyGradientDescentApplyGradientDescentpianzhiGradientDescent/learning_rate-gradients/add_grad/tuple/control_dependency_1*
T0*
_output_shapes
: *
use_locking( *
_class
loc:@pianzhi

GradientDescentNoOp6^GradientDescent/update_quanzhong/ApplyGradientDescent4^GradientDescent/update_pianzhi/ApplyGradientDescent
0
initNoOp^quanzhong/Assign^pianzhi/Assign
J
mul/xConst*
valueB
 *  @A*
_output_shapes
: *
dtype0
B
mulMulmul/xquanzhong/read*
T0*
_output_shapes
: 
@
add_1Addmulpianzhi/read*
T0*
_output_shapes
: 
P

save/ConstConst*
valueB Bmodel*
_output_shapes
: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_02676f0d5c9a46319960dd461e44bd52/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*'
valueBBpianzhiB	quanzhong*
_output_shapes
:*
dtype0
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B *
_output_shapes
:*
dtype0

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicespianzhi	quanzhong"/device:CPU:0*
dtypes
2
 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
k
save/RestoreV2/tensor_namesConst*
valueBBpianzhi*
_output_shapes
:*
dtype0
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:

save/AssignAssignpianzhisave/RestoreV2*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@pianzhi
o
save/RestoreV2_1/tensor_namesConst*
valueBB	quanzhong*
_output_shapes
:*
dtype0
j
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
_output_shapes
:*
dtype0

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes
:

save/Assign_1Assign	quanzhongsave/RestoreV2_1*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@quanzhong
8
save/restore_shardNoOp^save/Assign^save/Assign_1
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8"Ż
trainable_variables
L
quanzhong:0quanzhong/Assignquanzhong/read:02quanzhong/initial_value:0
D
	pianzhi:0pianzhi/Assignpianzhi/read:02pianzhi/initial_value:0"
train_op

GradientDescent"Ľ
	variables
L
quanzhong:0quanzhong/Assignquanzhong/read:02quanzhong/initial_value:0
D
	pianzhi:0pianzhi/Assignpianzhi/read:02pianzhi/initial_value:0