//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



SIZE_MAX :: ~(cast(u64) 0);

ASSIMP_AI_REAL_TEXT_PRECISION :: 9;

AI_MATH_PI :: 3.141592653589793238462643383279;
AI_MATH_TWO_PI :: AI_MATH_PI * 2.0;
AI_MATH_HALF_PI :: AI_MATH_PI * 0.5;

AI_MATH_PI_F :: 3.1415926538;
AI_MATH_TWO_PI_F :: AI_MATH_PI_F * 2.0;
AI_MATH_HALF_PI_F :: AI_MATH_PI_F * 0.5;

ai_epsilon :: cast(ai_real) 1.0e-6;

AI_MAXLEN :: 1024;

AI_EMBEDDED_TEXNAME_PREFIX :: "*";

HINTMAXTEXTURELEN :: 9;

AI_MAX_FACE_INDICES :: 0x7fff;

AI_MAX_BONE_WEIGHTS :: 0x7fffffff;

AI_MAX_VERTICES :: 0x7fffffff;

AI_MAX_FACES :: 0x7fffffff;

AI_MAX_NUMBER_OF_COLOR_SETS :: 0x8;

AI_MAX_NUMBER_OF_TEXTURECOORDS :: 0x8;

AI_DEFAULT_MATERIAL_NAME :: "DefaultMaterial";

_AI_MATKEY_TEXTURE_BASE :: "$tex.file";
_AI_MATKEY_UVWSRC_BASE :: "$tex.uvwsrc";
_AI_MATKEY_TEXOP_BASE :: "$tex.op";
_AI_MATKEY_MAPPING_BASE :: "$tex.mapping";
_AI_MATKEY_TEXBLEND_BASE :: "$tex.blend";
_AI_MATKEY_MAPPINGMODE_U_BASE :: "$tex.mapmodeu";
_AI_MATKEY_MAPPINGMODE_V_BASE :: "$tex.mapmodev";
_AI_MATKEY_TEXMAP_AXIS_BASE :: "$tex.mapaxis";
_AI_MATKEY_UVTRANSFORM_BASE :: "$tex.uvtrafo";
_AI_MATKEY_TEXFLAGS_BASE :: "$tex.flags";

AI_FALSE :: 0;
AI_TRUE :: 1;

AI_SCENE_FLAGS_INCOMPLETE :: 0x1;

AI_SCENE_FLAGS_VALIDATED :: 0x2;

AI_SCENE_FLAGS_VALIDATION_WARNING :: 0x4;

AI_SCENE_FLAGS_NON_VERBOSE_FORMAT :: 0x8;

AI_SCENE_FLAGS_TERRAIN :: 0x10;

AI_SCENE_FLAGS_ALLOW_SHARED :: 0x20;

ai_real :: float;
ai_int :: s32;
ai_uint :: u32;

aiVector2D :: struct {
    x: ai_real;
    y: ai_real;
}

aiVector3D :: struct {
    x: ai_real;
    y: ai_real;
    z: ai_real;
}

aiColor4D :: struct {
    r: float;
    g: float;
    b: float;
    a: float;
}

aiMatrix3x3 :: struct {
    a1: ai_real;
    a2: ai_real;
    a3: ai_real;
    b1: ai_real;
    b2: ai_real;
    b3: ai_real;
    c1: ai_real;
    c2: ai_real;
    c3: ai_real;
}

aiMatrix4x4 :: struct {
    a1: ai_real;
    a2: ai_real;
    a3: ai_real;
    a4: ai_real;
    b1: ai_real;
    b2: ai_real;
    b3: ai_real;
    b4: ai_real;
    c1: ai_real;
    c2: ai_real;
    c3: ai_real;
    c4: ai_real;
    d1: ai_real;
    d2: ai_real;
    d3: ai_real;
    d4: ai_real;
}

aiQuaternion :: struct {
    w: ai_real;
    x: ai_real;
    y: ai_real;
    z: ai_real;
}

ai_int32 :: s32;
ai_uint32 :: u32;

aiPlane :: struct {
    a: ai_real;
    b: ai_real;
    c: ai_real;
    d: ai_real;
}

aiRay :: struct {
    pos: aiVector3D;
    dir: aiVector3D;
}

aiColor3D :: struct {
    r: float;
    g: float;
    b: float;
}

aiString :: struct {
    length: ai_uint32;

    data:   [1024] u8;
}

aiReturn :: enum s32 {
    SUCCESS              :: 0;

    FAILURE              :: -1;

    OUTOFMEMORY          :: -3;

    AI_ENFORCE_ENUM_SIZE :: 2147483647;

    aiReturn_SUCCESS      :: SUCCESS;

    aiReturn_FAILURE      :: FAILURE;

    aiReturn_OUTOFMEMORY  :: OUTOFMEMORY;

    _AI_ENFORCE_ENUM_SIZE :: AI_ENFORCE_ENUM_SIZE;
}

aiOrigin :: enum u32 {
    SET                         :: 0;

    CUR                         :: 1;

    END                         :: 2;

    AI_ORIGIN_ENFORCE_ENUM_SIZE :: 2147483647;

    aiOrigin_SET                 :: SET;

    aiOrigin_CUR                 :: CUR;

    aiOrigin_END                 :: END;

    _AI_ORIGIN_ENFORCE_ENUM_SIZE :: AI_ORIGIN_ENFORCE_ENUM_SIZE;
}

aiDefaultLogStream :: enum u32 {
    FILE                     :: 1;

    STDOUT                   :: 2;

    STDERR                   :: 4;

    DEBUGGER                 :: 8;

    AI_DLS_ENFORCE_ENUM_SIZE :: 2147483647;

    aiDefaultLogStream_FILE     :: FILE;

    aiDefaultLogStream_STDOUT   :: STDOUT;

    aiDefaultLogStream_STDERR   :: STDERR;

    aiDefaultLogStream_DEBUGGER :: DEBUGGER;

    _AI_DLS_ENFORCE_ENUM_SIZE   :: AI_DLS_ENFORCE_ENUM_SIZE;
}

aiMemoryInfo :: struct {
    textures:   u32;

    materials:  u32;

    meshes:     u32;

    nodes:      u32;

    animations: u32;

    cameras:    u32;

    lights:     u32;

    total:      u32;
}

aiBuffer :: struct {
    data: *u8;
    end:  *u8;
}

aiTexel :: struct {
    b: u8;
    g: u8;
    r: u8;
    a: u8;
}

aiTexture :: struct {
    mWidth:        u32;

    mHeight:       u32;

    achFormatHint: [9] u8;

    pcData:        *aiTexel;

    mFilename:     aiString;
}

aiAABB :: struct {
    mMin: aiVector3D;
    mMax: aiVector3D;
}

aiFace :: struct {
    mNumIndices: u32;

    mIndices:    *u32;
}

aiVertexWeight :: struct {
    mVertexId: u32;

    mWeight:   ai_real;
}

aiBone :: struct {
    mName:         aiString;

    mNumWeights:   u32;

    mArmature:     *aiNode;

    mNode:         *aiNode;

    mWeights:      *aiVertexWeight;

    mOffsetMatrix: aiMatrix4x4;
}

aiPrimitiveType :: enum u32 {
    POINT                      :: 1;

    LINE                       :: 2;

    TRIANGLE                   :: 4;

    POLYGON                    :: 8;

    NGONEncodingFlag           :: 16;

    aiPrimitiveType_Force32Bit :: 2147483647;

    aiPrimitiveType_POINT            :: POINT;

    aiPrimitiveType_LINE             :: LINE;

    aiPrimitiveType_TRIANGLE         :: TRIANGLE;

    aiPrimitiveType_POLYGON          :: POLYGON;

    aiPrimitiveType_NGONEncodingFlag :: NGONEncodingFlag;

    _aiPrimitiveType_Force32Bit      :: aiPrimitiveType_Force32Bit;
}

aiAnimMesh :: struct {
    mName:          aiString;

    mVertices:      *aiVector3D;

    mNormals:       *aiVector3D;

    mTangents:      *aiVector3D;

    mBitangents:    *aiVector3D;

    mColors:        [8] *aiColor4D;

    mTextureCoords: [8] *aiVector3D;

    mNumVertices:   u32;

    mWeight:        float;
}

aiMorphingMethod :: enum u32 {
    UNKNOWN                     :: 0;

    VERTEX_BLEND                :: 1;

    MORPH_NORMALIZED            :: 2;

    MORPH_RELATIVE              :: 3;

    aiMorphingMethod_Force32Bit :: 2147483647;

    aiMorphingMethod_UNKNOWN          :: UNKNOWN;

    aiMorphingMethod_VERTEX_BLEND     :: VERTEX_BLEND;

    aiMorphingMethod_MORPH_NORMALIZED :: MORPH_NORMALIZED;

    aiMorphingMethod_MORPH_RELATIVE   :: MORPH_RELATIVE;

    _aiMorphingMethod_Force32Bit      :: aiMorphingMethod_Force32Bit;
}

aiMesh :: struct {
    mPrimitiveTypes:     u32;

    mNumVertices:        u32;

    mNumFaces:           u32;

    mVertices:           *aiVector3D;

    mNormals:            *aiVector3D;

    mTangents:           *aiVector3D;

    mBitangents:         *aiVector3D;

    mColors:             [8] *aiColor4D;

    mTextureCoords:      [8] *aiVector3D;

    mNumUVComponents:    [8] u32;

    mFaces:              *aiFace;

    mNumBones:           u32;

    mBones:              **aiBone;

    mMaterialIndex:      u32;

    mName:               aiString;

    mNumAnimMeshes:      u32;

    mAnimMeshes:         **aiAnimMesh;

    mMethod:             aiMorphingMethod;

    mAABB:               aiAABB;

    mTextureCoordsNames: **aiString;
}

aiSkeletonBone :: struct {
    mParent:       s32;

    mArmature:     *aiNode;

    mNode:         *aiNode;

    mNumnWeights:  u32;

    mMeshId:       *aiMesh;

    mWeights:      *aiVertexWeight;

    mOffsetMatrix: aiMatrix4x4;

    mLocalMatrix:  aiMatrix4x4;
}

aiSkeleton :: struct {
    mName:     aiString;

    mNumBones: u32;

    mBones:    **aiSkeletonBone;
}

aiLightSourceType :: enum u32 {
    aiLightSource_UNDEFINED   :: 0;

    aiLightSource_DIRECTIONAL :: 1;

    aiLightSource_POINT       :: 2;

    aiLightSource_SPOT        :: 3;

    aiLightSource_AMBIENT     :: 4;

    aiLightSource_AREA        :: 5;

    aiLightSource_Force32Bit  :: 2147483647;
    _aiLightSource_Force32Bit :: aiLightSource_Force32Bit;
}

aiLight :: struct {
    mName:                 aiString;

    mType:                 aiLightSourceType;

    mPosition:             aiVector3D;

    mDirection:            aiVector3D;

    mUp:                   aiVector3D;

    mAttenuationConstant:  float;

    mAttenuationLinear:    float;

    mAttenuationQuadratic: float;

    mColorDiffuse:         aiColor3D;

    mColorSpecular:        aiColor3D;

    mColorAmbient:         aiColor3D;

    mAngleInnerCone:       float;

    mAngleOuterCone:       float;

    mSize:                 aiVector2D;
}

aiCamera :: struct {
    mName:              aiString;

    mPosition:          aiVector3D;

    mUp:                aiVector3D;

    mLookAt:            aiVector3D;

    mHorizontalFOV:     float;

    mClipPlaneNear:     float;

    mClipPlaneFar:      float;

    mAspect:            float;

    mOrthographicWidth: float;
}

aiTextureOp :: enum u32 {
    Multiply               :: 0;

    Add                    :: 1;

    Subtract               :: 2;

    Divide                 :: 3;

    SmoothAdd              :: 4;

    SignedAdd              :: 5;

    aiTextureOp_Force32Bit :: 2147483647;

    aiTextureOp_Multiply    :: Multiply;

    aiTextureOp_Add         :: Add;

    aiTextureOp_Subtract    :: Subtract;

    aiTextureOp_Divide      :: Divide;

    aiTextureOp_SmoothAdd   :: SmoothAdd;

    aiTextureOp_SignedAdd   :: SignedAdd;

    _aiTextureOp_Force32Bit :: aiTextureOp_Force32Bit;
}

aiTextureMapMode :: enum u32 {
    Wrap                        :: 0;

    Clamp                       :: 1;

    Decal                       :: 3;

    Mirror                      :: 2;

    aiTextureMapMode_Force32Bit :: 2147483647;

    aiTextureMapMode_Wrap        :: Wrap;

    aiTextureMapMode_Clamp       :: Clamp;

    aiTextureMapMode_Decal       :: Decal;

    aiTextureMapMode_Mirror      :: Mirror;

    _aiTextureMapMode_Force32Bit :: aiTextureMapMode_Force32Bit;
}

aiTextureMapping :: enum u32 {
    UV                          :: 0;

    SPHERE                      :: 1;

    CYLINDER                    :: 2;

    BOX                         :: 3;

    PLANE                       :: 4;

    OTHER                       :: 5;

    aiTextureMapping_Force32Bit :: 2147483647;

    aiTextureMapping_UV          :: UV;

    aiTextureMapping_SPHERE      :: SPHERE;

    aiTextureMapping_CYLINDER    :: CYLINDER;

    aiTextureMapping_BOX         :: BOX;

    aiTextureMapping_PLANE       :: PLANE;

    aiTextureMapping_OTHER       :: OTHER;

    _aiTextureMapping_Force32Bit :: aiTextureMapping_Force32Bit;
}

aiTextureType :: enum u32 {
    NONE                     :: 0;

    DIFFUSE                  :: 1;

    SPECULAR                 :: 2;

    AMBIENT                  :: 3;

    EMISSIVE                 :: 4;

    HEIGHT                   :: 5;

    NORMALS                  :: 6;

    SHININESS                :: 7;

    OPACITY                  :: 8;

    DISPLACEMENT             :: 9;

    LIGHTMAP                 :: 10;

    REFLECTION               :: 11;

    BASE_COLOR               :: 12;
    NORMAL_CAMERA            :: 13;
    EMISSION_COLOR           :: 14;
    METALNESS                :: 15;
    DIFFUSE_ROUGHNESS        :: 16;
    AMBIENT_OCCLUSION        :: 17;

    UNKNOWN                  :: 18;

    SHEEN                    :: 19;

    CLEARCOAT                :: 20;

    TRANSMISSION             :: 21;

    MAYA_BASE                :: 22;
    MAYA_SPECULAR            :: 23;
    MAYA_SPECULAR_COLOR      :: 24;
    MAYA_SPECULAR_ROUGHNESS  :: 25;

    aiTextureType_Force32Bit :: 2147483647;

    aiTextureType_NONE                    :: NONE;

    aiTextureType_DIFFUSE                 :: DIFFUSE;

    aiTextureType_SPECULAR                :: SPECULAR;

    aiTextureType_AMBIENT                 :: AMBIENT;

    aiTextureType_EMISSIVE                :: EMISSIVE;

    aiTextureType_HEIGHT                  :: HEIGHT;

    aiTextureType_NORMALS                 :: NORMALS;

    aiTextureType_SHININESS               :: SHININESS;

    aiTextureType_OPACITY                 :: OPACITY;

    aiTextureType_DISPLACEMENT            :: DISPLACEMENT;

    aiTextureType_LIGHTMAP                :: LIGHTMAP;

    aiTextureType_REFLECTION              :: REFLECTION;

    aiTextureType_BASE_COLOR              :: BASE_COLOR;
    aiTextureType_NORMAL_CAMERA           :: NORMAL_CAMERA;
    aiTextureType_EMISSION_COLOR          :: EMISSION_COLOR;
    aiTextureType_METALNESS               :: METALNESS;
    aiTextureType_DIFFUSE_ROUGHNESS       :: DIFFUSE_ROUGHNESS;
    aiTextureType_AMBIENT_OCCLUSION       :: AMBIENT_OCCLUSION;

    aiTextureType_UNKNOWN                 :: UNKNOWN;

    aiTextureType_SHEEN                   :: SHEEN;

    aiTextureType_CLEARCOAT               :: CLEARCOAT;

    aiTextureType_TRANSMISSION            :: TRANSMISSION;

    aiTextureType_MAYA_BASE               :: MAYA_BASE;
    aiTextureType_MAYA_SPECULAR           :: MAYA_SPECULAR;
    aiTextureType_MAYA_SPECULAR_COLOR     :: MAYA_SPECULAR_COLOR;
    aiTextureType_MAYA_SPECULAR_ROUGHNESS :: MAYA_SPECULAR_ROUGHNESS;

    _aiTextureType_Force32Bit             :: aiTextureType_Force32Bit;
}

aiTextureTypeToString :: (in: aiTextureType) -> *u8 #foreign assimp;

aiShadingMode :: enum u32 {
    Flat                     :: 1;

    Gouraud                  :: 2;

    Phong                    :: 3;

    Blinn                    :: 4;

    Toon                     :: 5;

    OrenNayar                :: 6;

    Minnaert                 :: 7;

    CookTorrance             :: 8;

    NoShading                :: 9;
    Unlit                    :: 9;

    Fresnel                  :: 10;

    PBR_BRDF                 :: 11;

    aiShadingMode_Force32Bit :: 2147483647;

    aiShadingMode_Flat         :: Flat;

    aiShadingMode_Gouraud      :: Gouraud;

    aiShadingMode_Phong        :: Phong;

    aiShadingMode_Blinn        :: Blinn;

    aiShadingMode_Toon         :: Toon;

    aiShadingMode_OrenNayar    :: OrenNayar;

    aiShadingMode_Minnaert     :: Minnaert;

    aiShadingMode_CookTorrance :: CookTorrance;

    aiShadingMode_NoShading    :: NoShading;
    aiShadingMode_Unlit        :: Unlit;

    aiShadingMode_Fresnel      :: Fresnel;

    aiShadingMode_PBR_BRDF     :: PBR_BRDF;

    _aiShadingMode_Force32Bit  :: aiShadingMode_Force32Bit;
}

aiTextureFlags :: enum u32 {
    Invert                    :: 1;

    UseAlpha                  :: 2;

    IgnoreAlpha               :: 4;

    aiTextureFlags_Force32Bit :: 2147483647;

    aiTextureFlags_Invert      :: Invert;

    aiTextureFlags_UseAlpha    :: UseAlpha;

    aiTextureFlags_IgnoreAlpha :: IgnoreAlpha;

    _aiTextureFlags_Force32Bit :: aiTextureFlags_Force32Bit;
}

aiBlendMode :: enum u32 {
    Default                :: 0;

    Additive               :: 1;

    aiBlendMode_Force32Bit :: 2147483647;

    aiBlendMode_Default     :: Default;

    aiBlendMode_Additive    :: Additive;

    _aiBlendMode_Force32Bit :: aiBlendMode_Force32Bit;
}

aiUVTransform :: struct {
    mTranslation: aiVector2D;

    mScaling:     aiVector2D;

    mRotation:    ai_real;
}

aiPropertyTypeInfo :: enum u32 {
    aiPTI_Float      :: 1;

    aiPTI_Double     :: 2;

    aiPTI_String     :: 3;

    aiPTI_Integer    :: 4;

    aiPTI_Buffer     :: 5;

    aiPTI_Force32Bit :: 2147483647;
    _aiPTI_Force32Bit :: aiPTI_Force32Bit;
}

aiMaterialProperty :: struct {
    mKey:        aiString;

    mSemantic:   u32;

    mIndex:      u32;

    mDataLength: u32;

    mType:       aiPropertyTypeInfo;

    mData:       *u8;
}

aiMaterial :: struct {
    mProperties:    **aiMaterialProperty;

    mNumProperties: u32;

    mNumAllocated:  u32;
}

aiGetMaterialProperty :: (pMat: *aiMaterial, pKey: *u8, type: u32, index: u32, pPropOut: **aiMaterialProperty) -> aiReturn #foreign assimp;

aiGetMaterialFloatArray :: (pMat: *aiMaterial, pKey: *u8, type: u32, index: u32, pOut: *float, pMax: *u32) -> aiReturn #foreign assimp;

aiGetMaterialIntegerArray :: (pMat: *aiMaterial, pKey: *u8, type: u32, index: u32, pOut: *s32, pMax: *u32) -> aiReturn #foreign assimp;

aiGetMaterialColor :: (pMat: *aiMaterial, pKey: *u8, type: u32, index: u32, pOut: *aiColor4D) -> aiReturn #foreign assimp;

aiGetMaterialUVTransform :: (pMat: *aiMaterial, pKey: *u8, type: u32, index: u32, pOut: *aiUVTransform) -> aiReturn #foreign assimp;

aiGetMaterialString :: (pMat: *aiMaterial, pKey: *u8, type: u32, index: u32, pOut: *aiString) -> aiReturn #foreign assimp;

aiGetMaterialTextureCount :: (pMat: *aiMaterial, type: aiTextureType) -> u32 #foreign assimp;

aiGetMaterialTexture :: (mat: *aiMaterial, type: aiTextureType, index: u32, path: *aiString, mapping: *aiTextureMapping, uvindex: *u32, blend: *ai_real, op: *aiTextureOp, mapmode: *aiTextureMapMode, flags: *u32) -> aiReturn #foreign assimp;

aiAnimInterpolation :: enum u32 {
    Step                           :: 0;

    Linear                         :: 1;

    Spherical_Linear               :: 2;

    Cubic_Spline                   :: 3;

    aiAnimInterpolation_Force32Bit :: 2147483647;

    aiAnimInterpolation_Step             :: Step;

    aiAnimInterpolation_Linear           :: Linear;

    aiAnimInterpolation_Spherical_Linear :: Spherical_Linear;

    aiAnimInterpolation_Cubic_Spline     :: Cubic_Spline;

    _aiAnimInterpolation_Force32Bit      :: aiAnimInterpolation_Force32Bit;
}

aiVectorKey :: struct {
    mTime:          float64;

    mValue:         aiVector3D;

    mInterpolation: aiAnimInterpolation;
}

aiQuatKey :: struct {
    mTime:          float64;

    mValue:         aiQuaternion;

    mInterpolation: aiAnimInterpolation;
}

aiMeshKey :: struct {
    mTime:  float64;

    mValue: u32;
}

aiMeshMorphKey :: struct {
    mTime:                float64;

    mValues:              *u32;
    mWeights:             *float64;

    mNumValuesAndWeights: u32;
}

aiAnimBehaviour :: enum u32 {
    DEFAULT                    :: 0;

    CONSTANT                   :: 1;

    LINEAR                     :: 2;

    REPEAT                     :: 3;

    aiAnimBehaviour_Force32Bit :: 2147483647;

    aiAnimBehaviour_DEFAULT     :: DEFAULT;

    aiAnimBehaviour_CONSTANT    :: CONSTANT;

    aiAnimBehaviour_LINEAR      :: LINEAR;

    aiAnimBehaviour_REPEAT      :: REPEAT;

    _aiAnimBehaviour_Force32Bit :: aiAnimBehaviour_Force32Bit;
}

aiNodeAnim :: struct {
    mNodeName:        aiString;

    mNumPositionKeys: u32;

    mPositionKeys:    *aiVectorKey;

    mNumRotationKeys: u32;

    mRotationKeys:    *aiQuatKey;

    mNumScalingKeys:  u32;

    mScalingKeys:     *aiVectorKey;

    mPreState:        aiAnimBehaviour;

    mPostState:       aiAnimBehaviour;
}

aiMeshAnim :: struct {
    mName:    aiString;

    mNumKeys: u32;

    mKeys:    *aiMeshKey;
}

aiMeshMorphAnim :: struct {
    mName:    aiString;

    mNumKeys: u32;

    mKeys:    *aiMeshMorphKey;
}

aiAnimation :: struct {
    mName:                 aiString;

    mDuration:             float64;

    mTicksPerSecond:       float64;

    mNumChannels:          u32;

    mChannels:             **aiNodeAnim;

    mNumMeshChannels:      u32;

    mMeshChannels:         **aiMeshAnim;

    mNumMorphMeshChannels: u32;

    mMorphMeshChannels:    **aiMeshMorphAnim;
}

aiMetadataType :: enum u32 {
    AI_BOOL       :: 0;
    AI_INT32      :: 1;
    AI_UINT64     :: 2;
    AI_FLOAT      :: 3;
    AI_DOUBLE     :: 4;
    AI_AISTRING   :: 5;
    AI_AIVECTOR3D :: 6;
    AI_AIMETADATA :: 7;
    AI_INT64      :: 8;
    AI_UINT32     :: 9;
    AI_META_MAX   :: 10;

    FORCE_32BIT   :: 2147483647;
}

aiMetadataEntry :: struct {
    mType: aiMetadataType;
    mData: *void;
}

aiMetadata :: struct {
    mNumProperties: u32;

    mKeys:          *aiString;

    mValues:        *aiMetadataEntry;
}

aiImporterFlags :: enum u32 {
    SupportTextFlavour       :: 1;

    SupportBinaryFlavour     :: 2;

    SupportCompressedFlavour :: 4;

    LimitedSupport           :: 8;

    Experimental             :: 16;

    aiImporterFlags_SupportTextFlavour       :: SupportTextFlavour;

    aiImporterFlags_SupportBinaryFlavour     :: SupportBinaryFlavour;

    aiImporterFlags_SupportCompressedFlavour :: SupportCompressedFlavour;

    aiImporterFlags_LimitedSupport           :: LimitedSupport;

    aiImporterFlags_Experimental             :: Experimental;
}

aiImporterDesc :: struct {
    mName:           *u8;

    mAuthor:         *u8;

    mMaintainer:     *u8;

    mComments:       *u8;

    mFlags:          u32;

    mMinMajor:       u32;
    mMinMinor:       u32;

    mMaxMajor:       u32;
    mMaxMinor:       u32;

    mFileExtensions: *u8;
}

aiGetImporterDesc :: (extension: *u8) -> *aiImporterDesc #foreign assimp;

aiFileIO :: struct {}

aiLogStreamCallback :: #type (unknown0: *u8, unknown1: *u8) -> void #c_call;

aiLogStream :: struct {
    callback: aiLogStreamCallback;

    user:     *u8;
}

aiPropertyStore :: struct {
    sentinel: u8;
}

aiBool :: s32;

aiImportFile :: (pFile: *u8, pFlags: u32) -> *aiScene #foreign assimp;

aiImportFileEx :: (pFile: *u8, pFlags: u32, pFS: *aiFileIO) -> *aiScene #foreign assimp;

aiImportFileExWithProperties :: (pFile: *u8, pFlags: u32, pFS: *aiFileIO, pProps: *aiPropertyStore) -> *aiScene #foreign assimp;

aiImportFileFromMemory :: (pBuffer: *u8, pLength: u32, pFlags: u32, pHint: *u8) -> *aiScene #foreign assimp;

aiImportFileFromMemoryWithProperties :: (pBuffer: *u8, pLength: u32, pFlags: u32, pHint: *u8, pProps: *aiPropertyStore) -> *aiScene #foreign assimp;

aiApplyPostProcessing :: (pScene: *aiScene, pFlags: u32) -> *aiScene #foreign assimp;

aiGetPredefinedLogStream :: (pStreams: aiDefaultLogStream, file: *u8) -> aiLogStream #foreign assimp;

aiAttachLogStream :: (stream: *aiLogStream) -> void #foreign assimp;

aiEnableVerboseLogging :: (d: aiBool) -> void #foreign assimp;

aiDetachLogStream :: (stream: *aiLogStream) -> aiReturn #foreign assimp;

aiDetachAllLogStreams :: () -> void #foreign assimp;

aiReleaseImport :: (pScene: *aiScene) -> void #foreign assimp;

aiGetErrorString :: () -> *u8 #foreign assimp;

aiIsExtensionSupported :: (szExtension: *u8) -> aiBool #foreign assimp;

aiGetExtensionList :: (szOut: *aiString) -> void #foreign assimp;

aiGetMemoryRequirements :: (pIn: *aiScene, in: *aiMemoryInfo) -> void #foreign assimp;

aiGetEmbeddedTexture :: (pIn: *aiScene, filename: *u8) -> *aiTexture #foreign assimp;

aiCreatePropertyStore :: () -> *aiPropertyStore #foreign assimp;

aiReleasePropertyStore :: (p: *aiPropertyStore) -> void #foreign assimp;

aiSetImportPropertyInteger :: (store: *aiPropertyStore, szName: *u8, value: s32) -> void #foreign assimp;

aiSetImportPropertyFloat :: (store: *aiPropertyStore, szName: *u8, value: ai_real) -> void #foreign assimp;

aiSetImportPropertyString :: (store: *aiPropertyStore, szName: *u8, st: *aiString) -> void #foreign assimp;

aiSetImportPropertyMatrix :: (store: *aiPropertyStore, szName: *u8, mat: *aiMatrix4x4) -> void #foreign assimp;

aiCreateQuaternionFromMatrix :: (quat: *aiQuaternion, mat: *aiMatrix3x3) -> void #foreign assimp;

aiDecomposeMatrix :: (mat: *aiMatrix4x4, scaling: *aiVector3D, rotation: *aiQuaternion, position: *aiVector3D) -> void #foreign assimp;

aiTransposeMatrix4 :: (mat: *aiMatrix4x4) -> void #foreign assimp;

aiTransposeMatrix3 :: (mat: *aiMatrix3x3) -> void #foreign assimp;

aiTransformVecByMatrix3 :: (vec: *aiVector3D, mat: *aiMatrix3x3) -> void #foreign assimp;

aiTransformVecByMatrix4 :: (vec: *aiVector3D, mat: *aiMatrix4x4) -> void #foreign assimp;

aiMultiplyMatrix4 :: (dst: *aiMatrix4x4, src: *aiMatrix4x4) -> void #foreign assimp;

aiMultiplyMatrix3 :: (dst: *aiMatrix3x3, src: *aiMatrix3x3) -> void #foreign assimp;

aiIdentityMatrix3 :: (mat: *aiMatrix3x3) -> void #foreign assimp;

aiIdentityMatrix4 :: (mat: *aiMatrix4x4) -> void #foreign assimp;

aiGetImportFormatCount :: () -> u64 #foreign assimp;

aiGetImportFormatDescription :: (pIndex: u64) -> *aiImporterDesc #foreign assimp;

aiVector2AreEqual :: (a: *aiVector2D, b: *aiVector2D) -> s32 #foreign assimp;

aiVector2AreEqualEpsilon :: (a: *aiVector2D, b: *aiVector2D, epsilon: float) -> s32 #foreign assimp;

aiVector2Add :: (dst: *aiVector2D, src: *aiVector2D) -> void #foreign assimp;

aiVector2Subtract :: (dst: *aiVector2D, src: *aiVector2D) -> void #foreign assimp;

aiVector2Scale :: (dst: *aiVector2D, s: float) -> void #foreign assimp;

aiVector2SymMul :: (dst: *aiVector2D, other: *aiVector2D) -> void #foreign assimp;

aiVector2DivideByScalar :: (dst: *aiVector2D, s: float) -> void #foreign assimp;

aiVector2DivideByVector :: (dst: *aiVector2D, v: *aiVector2D) -> void #foreign assimp;

aiVector2Length :: (v: *aiVector2D) -> ai_real #foreign assimp;

aiVector2SquareLength :: (v: *aiVector2D) -> ai_real #foreign assimp;

aiVector2Negate :: (dst: *aiVector2D) -> void #foreign assimp;

aiVector2DotProduct :: (a: *aiVector2D, b: *aiVector2D) -> ai_real #foreign assimp;

aiVector2Normalize :: (v: *aiVector2D) -> void #foreign assimp;

aiVector3AreEqual :: (a: *aiVector3D, b: *aiVector3D) -> s32 #foreign assimp;

aiVector3AreEqualEpsilon :: (a: *aiVector3D, b: *aiVector3D, epsilon: float) -> s32 #foreign assimp;

aiVector3LessThan :: (a: *aiVector3D, b: *aiVector3D) -> s32 #foreign assimp;

aiVector3Add :: (dst: *aiVector3D, src: *aiVector3D) -> void #foreign assimp;

aiVector3Subtract :: (dst: *aiVector3D, src: *aiVector3D) -> void #foreign assimp;

aiVector3Scale :: (dst: *aiVector3D, s: float) -> void #foreign assimp;

aiVector3SymMul :: (dst: *aiVector3D, other: *aiVector3D) -> void #foreign assimp;

aiVector3DivideByScalar :: (dst: *aiVector3D, s: float) -> void #foreign assimp;

aiVector3DivideByVector :: (dst: *aiVector3D, v: *aiVector3D) -> void #foreign assimp;

aiVector3Length :: (v: *aiVector3D) -> ai_real #foreign assimp;

aiVector3SquareLength :: (v: *aiVector3D) -> ai_real #foreign assimp;

aiVector3Negate :: (dst: *aiVector3D) -> void #foreign assimp;

aiVector3DotProduct :: (a: *aiVector3D, b: *aiVector3D) -> ai_real #foreign assimp;

aiVector3CrossProduct :: (dst: *aiVector3D, a: *aiVector3D, b: *aiVector3D) -> void #foreign assimp;

aiVector3Normalize :: (v: *aiVector3D) -> void #foreign assimp;

aiVector3NormalizeSafe :: (v: *aiVector3D) -> void #foreign assimp;

aiVector3RotateByQuaternion :: (v: *aiVector3D, q: *aiQuaternion) -> void #foreign assimp;

aiMatrix3FromMatrix4 :: (dst: *aiMatrix3x3, mat: *aiMatrix4x4) -> void #foreign assimp;

aiMatrix3FromQuaternion :: (mat: *aiMatrix3x3, q: *aiQuaternion) -> void #foreign assimp;

aiMatrix3AreEqual :: (a: *aiMatrix3x3, b: *aiMatrix3x3) -> s32 #foreign assimp;

aiMatrix3AreEqualEpsilon :: (a: *aiMatrix3x3, b: *aiMatrix3x3, epsilon: float) -> s32 #foreign assimp;

aiMatrix3Inverse :: (mat: *aiMatrix3x3) -> void #foreign assimp;

aiMatrix3Determinant :: (mat: *aiMatrix3x3) -> ai_real #foreign assimp;

aiMatrix3RotationZ :: (mat: *aiMatrix3x3, angle: float) -> void #foreign assimp;

aiMatrix3FromRotationAroundAxis :: (mat: *aiMatrix3x3, axis: *aiVector3D, angle: float) -> void #foreign assimp;

aiMatrix3Translation :: (mat: *aiMatrix3x3, translation: *aiVector2D) -> void #foreign assimp;

aiMatrix3FromTo :: (mat: *aiMatrix3x3, from: *aiVector3D, to: *aiVector3D) -> void #foreign assimp;

aiMatrix4FromMatrix3 :: (dst: *aiMatrix4x4, mat: *aiMatrix3x3) -> void #foreign assimp;

aiMatrix4FromScalingQuaternionPosition :: (mat: *aiMatrix4x4, scaling: *aiVector3D, rotation: *aiQuaternion, position: *aiVector3D) -> void #foreign assimp;

aiMatrix4Add :: (dst: *aiMatrix4x4, src: *aiMatrix4x4) -> void #foreign assimp;

aiMatrix4AreEqual :: (a: *aiMatrix4x4, b: *aiMatrix4x4) -> s32 #foreign assimp;

aiMatrix4AreEqualEpsilon :: (a: *aiMatrix4x4, b: *aiMatrix4x4, epsilon: float) -> s32 #foreign assimp;

aiMatrix4Inverse :: (mat: *aiMatrix4x4) -> void #foreign assimp;

aiMatrix4Determinant :: (mat: *aiMatrix4x4) -> ai_real #foreign assimp;

aiMatrix4IsIdentity :: (mat: *aiMatrix4x4) -> s32 #foreign assimp;

aiMatrix4DecomposeIntoScalingEulerAnglesPosition :: (mat: *aiMatrix4x4, scaling: *aiVector3D, rotation: *aiVector3D, position: *aiVector3D) -> void #foreign assimp;

aiMatrix4DecomposeIntoScalingAxisAnglePosition :: (mat: *aiMatrix4x4, scaling: *aiVector3D, axis: *aiVector3D, angle: *ai_real, position: *aiVector3D) -> void #foreign assimp;

aiMatrix4DecomposeNoScaling :: (mat: *aiMatrix4x4, rotation: *aiQuaternion, position: *aiVector3D) -> void #foreign assimp;

aiMatrix4FromEulerAngles :: (mat: *aiMatrix4x4, x: float, y: float, z: float) -> void #foreign assimp;

aiMatrix4RotationX :: (mat: *aiMatrix4x4, angle: float) -> void #foreign assimp;

aiMatrix4RotationY :: (mat: *aiMatrix4x4, angle: float) -> void #foreign assimp;

aiMatrix4RotationZ :: (mat: *aiMatrix4x4, angle: float) -> void #foreign assimp;

aiMatrix4FromRotationAroundAxis :: (mat: *aiMatrix4x4, axis: *aiVector3D, angle: float) -> void #foreign assimp;

aiMatrix4Translation :: (mat: *aiMatrix4x4, translation: *aiVector3D) -> void #foreign assimp;

aiMatrix4Scaling :: (mat: *aiMatrix4x4, scaling: *aiVector3D) -> void #foreign assimp;

aiMatrix4FromTo :: (mat: *aiMatrix4x4, from: *aiVector3D, to: *aiVector3D) -> void #foreign assimp;

aiQuaternionFromEulerAngles :: (q: *aiQuaternion, x: float, y: float, z: float) -> void #foreign assimp;

aiQuaternionFromAxisAngle :: (q: *aiQuaternion, axis: *aiVector3D, angle: float) -> void #foreign assimp;

aiQuaternionFromNormalizedQuaternion :: (q: *aiQuaternion, normalized: *aiVector3D) -> void #foreign assimp;

aiQuaternionAreEqual :: (a: *aiQuaternion, b: *aiQuaternion) -> s32 #foreign assimp;

aiQuaternionAreEqualEpsilon :: (a: *aiQuaternion, b: *aiQuaternion, epsilon: float) -> s32 #foreign assimp;

aiQuaternionNormalize :: (q: *aiQuaternion) -> void #foreign assimp;

aiQuaternionConjugate :: (q: *aiQuaternion) -> void #foreign assimp;

aiQuaternionMultiply :: (dst: *aiQuaternion, q: *aiQuaternion) -> void #foreign assimp;

aiQuaternionInterpolate :: (dst: *aiQuaternion, start: *aiQuaternion, end: *aiQuaternion, factor: float) -> void #foreign assimp;

aiNode :: struct {
    mName:           aiString;

    mTransformation: aiMatrix4x4;

    mParent:         *aiNode;

    mNumChildren:    u32;

    mChildren:       **aiNode;

    mNumMeshes:      u32;

    mMeshes:         *u32;

    mMetaData:       *aiMetadata;
}

aiScene :: struct {
    mFlags:         u32;

    mRootNode:      *aiNode;

    mNumMeshes:     u32;

    mMeshes:        **aiMesh;

    mNumMaterials:  u32;

    mMaterials:     **aiMaterial;

    mNumAnimations: u32;

    mAnimations:    **aiAnimation;

    mNumTextures:   u32;

    mTextures:      **aiTexture;

    mNumLights:     u32;

    mLights:        **aiLight;

    mNumCameras:    u32;

    mCameras:       **aiCamera;

    mMetaData:      *aiMetadata;

    mName:          aiString;

    mNumSkeletons:  u32;

    mSkeletons:     **aiSkeleton;

    mPrivate:       *u8;
}

aiPostProcessSteps :: enum u32 {
    CalcTangentSpace         :: 1;

    JoinIdenticalVertices    :: 2;

    MakeLeftHanded           :: 4;

    Triangulate              :: 8;

    RemoveComponent          :: 16;

    GenNormals               :: 32;

    GenSmoothNormals         :: 64;

    SplitLargeMeshes         :: 128;

    PreTransformVertices     :: 256;

    LimitBoneWeights         :: 512;

    ValidateDataStructure    :: 1024;

    ImproveCacheLocality     :: 2048;

    RemoveRedundantMaterials :: 4096;

    FixInfacingNormals       :: 8192;

    PopulateArmatureData     :: 16384;

    SortByPType              :: 32768;

    FindDegenerates          :: 65536;

    FindInvalidData          :: 131072;

    GenUVCoords              :: 262144;

    TransformUVCoords        :: 524288;

    FindInstances            :: 1048576;

    OptimizeMeshes           :: 2097152;

    OptimizeGraph            :: 4194304;

    FlipUVs                  :: 8388608;

    FlipWindingOrder         :: 16777216;

    SplitByBoneCount         :: 33554432;

    Debone                   :: 67108864;

    GlobalScale              :: 134217728;

    EmbedTextures            :: 268435456;

    ForceGenNormals          :: 536870912;

    DropNormals              :: 1073741824;

    GenBoundingBoxes         :: 2147483648;

    aiProcess_CalcTangentSpace         :: CalcTangentSpace;

    aiProcess_JoinIdenticalVertices    :: JoinIdenticalVertices;

    aiProcess_MakeLeftHanded           :: MakeLeftHanded;

    aiProcess_Triangulate              :: Triangulate;

    aiProcess_RemoveComponent          :: RemoveComponent;

    aiProcess_GenNormals               :: GenNormals;

    aiProcess_GenSmoothNormals         :: GenSmoothNormals;

    aiProcess_SplitLargeMeshes         :: SplitLargeMeshes;

    aiProcess_PreTransformVertices     :: PreTransformVertices;

    aiProcess_LimitBoneWeights         :: LimitBoneWeights;

    aiProcess_ValidateDataStructure    :: ValidateDataStructure;

    aiProcess_ImproveCacheLocality     :: ImproveCacheLocality;

    aiProcess_RemoveRedundantMaterials :: RemoveRedundantMaterials;

    aiProcess_FixInfacingNormals       :: FixInfacingNormals;

    aiProcess_PopulateArmatureData     :: PopulateArmatureData;

    aiProcess_SortByPType              :: SortByPType;

    aiProcess_FindDegenerates          :: FindDegenerates;

    aiProcess_FindInvalidData          :: FindInvalidData;

    aiProcess_GenUVCoords              :: GenUVCoords;

    aiProcess_TransformUVCoords        :: TransformUVCoords;

    aiProcess_FindInstances            :: FindInstances;

    aiProcess_OptimizeMeshes           :: OptimizeMeshes;

    aiProcess_OptimizeGraph            :: OptimizeGraph;

    aiProcess_FlipUVs                  :: FlipUVs;

    aiProcess_FlipWindingOrder         :: FlipWindingOrder;

    aiProcess_SplitByBoneCount         :: SplitByBoneCount;

    aiProcess_Debone                   :: Debone;

    aiProcess_GlobalScale              :: GlobalScale;

    aiProcess_EmbedTextures            :: EmbedTextures;

    aiProcess_ForceGenNormals          :: ForceGenNormals;

    aiProcess_DropNormals              :: DropNormals;

    aiProcess_GenBoundingBoxes         :: GenBoundingBoxes;
}

#scope_file


#if OS == .WINDOWS {
    assimp_vc143_mt :: #library "windows/assimp";
} else #if OS == .MACOS {
    assimp :: #library "macos/assimp";
} else {
    #assert false;
}

