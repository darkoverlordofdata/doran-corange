/*
The MIT License (MIT)

Copyright (c) <2018> <Corange vapi>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/

/* gl.vapi
 *
 * Copyright (C) 2008  Matias De la Puente
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.

 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.

 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 *
 * Author:
 * 	Matias De la Puente <mfpuente.ar@gmail.com>
 */
[CCode (cprefix = "", lower_case_cprefix = "", cheader_filename="SDL2/SDL_opengl.h,SDL2/SDL_local.h")]
namespace GL
{

	[CCode (cname="GLenu")]
	public struct GLenu : uint { }
	[CCode (cname="GLboolean")]
	public struct GLboolean : bool { }
	[CCode (cname="GLbitfield")]
	public struct GLbitfield : uint { }
	[CCode (cname="GLvoid")]
	public struct GLvoid { }
	[CCode (cname="GLbyte")]
	public struct GLbyte : char { }
	[CCode (cname="GLshort")]
	public struct GLshort : short { }
	[CCode (cname="GLint")]
	public struct GLint : int { }
	[CCode (cname="GLubyte")]
	public struct GLubyte : uchar { }
	[CCode (cname="GLushort")]
	public struct GLushort : ushort { }
	[CCode (cname="GLuint")]
	public struct GLuint : uint { }
	[CCode (cname="GLsizei")]
	public struct GLsizei : int { }
	[CCode (cname="GLfloat")]
	[FloatingType (rank = 1)]
	public struct GLfloat : float { }
	[CCode (cname="GLclampf")]
	[FloatingType (rank = 1)]
	public struct GLclampf : float { }
	[CCode (cname="GLdouble")]
	[FloatingType (rank = 2)]
	public struct GLdouble : double { }
	[CCode (cname="GLclampd")]
	[FloatingType (rank = 2)]
	public struct GLclampd : double { }
	
	
	// Data Types
	public const GLenu GL_BYTE;
	public const GLenu GL_UNSIGNED_BYTE;
	public const GLenu GL_SHORT;
	public const GLenu GL_UNSIGNED_SHORT;
	public const GLenu GL_INT;
	public const GLenu GL_UNSIGNED_INT;
	public const GLenu GL_FLOAT;
	public const GLenu GL_2_BYTES;
	public const GLenu GL_3_BYTES;
	public const GLenu GL_4_BYTES;
	public const GLenu GL_DOUBLE;
	
	// Primitives
	public const GLenu GL_POINTS;
	public const GLenu GL_LINES;
	public const GLenu GL_LINE_LOOP;
	public const GLenu GL_LINE_STRIP;
	public const GLenu GL_TRIANGLES;
	public const GLenu GL_TRIANGLE_STRIP;
	public const GLenu GL_TRIANGLE_FAN;
	public const GLenu GL_QUADS;
	public const GLenu GL_QUAD_STRIP;
	public const GLenu GL_POLYGON;
	
	// Vertex Arrays
	public const GLenu GL_VERTEX_ARRAY;
	public const GLenu GL_NORMAL_ARRAY;
	public const GLenu GL_COLOR_ARRAY;
	public const GLenu GL_INDEX_ARRAY;
	public const GLenu GL_TEXTURE_COORD_ARRAY;
	public const GLenu GL_EDGE_FLAG_ARRAY;
	public const GLenu GL_VERTEX_ARRAY_SIZE;
	public const GLenu GL_VERTEX_ARRAY_TYPE;
	public const GLenu GL_VERTEX_ARRAY_STRIDE;
	public const GLenu GL_NORMAL_ARRAY_TYPE;
	public const GLenu GL_NORMAL_ARRAY_STRIDE;
	public const GLenu GL_COLOR_ARRAY_SIZE;
	public const GLenu GL_COLOR_ARRAY_TYPE;
	public const GLenu GL_COLOR_ARRAY_STRIDE;
	public const GLenu GL_INDEX_ARRAY_TYPE;
	public const GLenu GL_INDEX_ARRAY_STRIDE;
	public const GLenu GL_TEXTURE_COORD_ARRAY_SIZE;
	public const GLenu GL_TEXTURE_COORD_ARRAY_TYPE;
	public const GLenu GL_TEXTURE_COORD_ARRAY_STRIDE;
	public const GLenu GL_EDGE_FLAG_ARRAY_STRIDE;
	public const GLenu GL_VERTEX_ARRAY_POINTER;
	public const GLenu GL_NORMAL_ARRAY_POINTER;
	public const GLenu GL_COLOR_ARRAY_POINTER;
	public const GLenu GL_INDEX_ARRAY_POINTER;
	public const GLenu GL_TEXTURE_COORD_ARRAY_POINTER;
	public const GLenu GL_EDGE_FLAG_ARRAY_POINTER;
	public const GLenu GL_V2F;
	public const GLenu GL_V3F;
	public const GLenu GL_C4UB_V2F;
	public const GLenu GL_C4UB_V3F;
	public const GLenu GL_C3F_V3F;
	public const GLenu GL_N3F_V3F;
	public const GLenu GL_C4F_N3F_V3F;
	public const GLenu GL_T2F_V3F;
	public const GLenu GL_T4F_V4F;
	public const GLenu GL_T2F_C4UB_V3F;
	public const GLenu GL_T2F_C3F_V3F;
	public const GLenu GL_T2F_N3F_V3F;
	public const GLenu GL_T2F_C4F_N3F_V3F;
	public const GLenu GL_T4F_C4F_N3F_V4F;
	
	// Matrix Mode
	public const GLenu GL_MATRIX_MODE;
	public const GLenu GL_MODELVIEW;
	public const GLenu GL_PROJECTION;
	public const GLenu GL_TEXTURE;
	
	// Points
	public const GLenu GL_POINT_SMOOTH;
	public const GLenu GL_POINT_SIZE;
	public const GLenu GL_POINT_SIZE_GRANULARITY;
	public const GLenu GL_POINT_SIZE_RANGE;
	
	// Lines
	public const GLenu GL_LINE_SMOOTH;
	public const GLenu GL_LINE_STIPPLE;
	public const GLenu GL_LINE_STIPPLE_PATTERN;
	public const GLenu GL_LINE_STIPPLE_REPEAT;
	public const GLenu GL_LINE_WIDTH;
	public const GLenu GL_LINE_WIDTH_GRANULARITY;
	public const GLenu GL_LINE_WIDTH_RANGE;
	
	// Polygons
	public const GLenu GL_POINT;
	public const GLenu GL_LINE;
	public const GLenu GL_FILL;
	public const GLenu GL_CW;
	public const GLenu GL_CCW;
	public const GLenu GL_FRONT;
	public const GLenu GL_BACK;
	public const GLenu GL_POLYGON_MODE;
	public const GLenu GL_POLYGON_SMOOTH;
	public const GLenu GL_POLYGON_STIPPLE;
	public const GLenu GL_EDGE_FLAG;
	public const GLenu GL_CULL_FACE;
	public const GLenu GL_CULL_FACE_MODE;
	public const GLenu GL_FRONT_FACE;
	public const GLenu GL_POLYGON_OFFSET_FACTOR;
	public const GLenu GL_POLYGON_OFFSET_UNITS;
	public const GLenu GL_POLYGON_OFFSET_POINT;
	public const GLenu GL_POLYGON_OFFSET_LINE;
	public const GLenu GL_POLYGON_OFFSET_FILL;
	
	// Display Lists
	public const GLenu GL_COMPILE;
	public const GLenu GL_COMPILE_AND_EXECUTE;
	public const GLenu GL_LIST_BASE;
	public const GLenu GL_LIST_INDEX;
	public const GLenu GL_LIST_MODE;
	
	// Depth Buffer
	public const GLenu GL_NEVER;
	public const GLenu GL_LESS;
	public const GLenu GL_EQUAL;
	public const GLenu GL_LEQUAL;
	public const GLenu GL_GREATER;
	public const GLenu GL_NOTEQUAL;
	public const GLenu GL_GEQUAL;
	public const GLenu GL_ALWAYS;
	public const GLenu GL_DEPTH_TEST;
	public const GLenu GL_DEPTH_BITS;
	public const GLenu GL_DEPTH_CLEAR_VALUE;
	public const GLenu GL_DEPTH_FUNC;
	public const GLenu GL_DEPTH_RANGE;
	public const GLenu GL_DEPTH_WRITEMASK;
	public const GLenu GL_DEPTH_COMPONENT;
	
	// Lighting
	public const GLenu GL_LIGHTING;
	public const GLenu GL_LIGHT0;
	public const GLenu GL_LIGHT1;
	public const GLenu GL_LIGHT2;
	public const GLenu GL_LIGHT3;
	public const GLenu GL_LIGHT4;
	public const GLenu GL_LIGHT5;
	public const GLenu GL_LIGHT6;
	public const GLenu GL_LIGHT7;
	public const GLenu GL_SPOT_EXPONENT;
	public const GLenu GL_SPOT_CUTOFF;
	public const GLenu GL_CONSTANT_ATTENUATION;
	public const GLenu GL_LINEAR_ATTENUATION;
	public const GLenu GL_QUADRATIC_ATTENUATION;
	public const GLenu GL_AMBIENT;
	public const GLenu GL_DIFFUSE;
	public const GLenu GL_SPECULAR;
	public const GLenu GL_SHININESS;
	public const GLenu GL_EMISSION;
	public const GLenu GL_POSITION;
	public const GLenu GL_SPOT_DIRECTION;
	public const GLenu GL_AMBIENT_AND_DIFFUSE;
	public const GLenu GL_COLOR_INDEXES;
	public const GLenu GL_LIGHT_MODEL_TWO_SIDE;
	public const GLenu GL_LIGHT_MODEL_LOCAL_VIEWER;
	public const GLenu GL_LIGHT_MODEL_AMBIENT;
	public const GLenu GL_FRONT_AND_BACK;
	public const GLenu GL_SHADE_MODEL;
	public const GLenu GL_FLAT;
	public const GLenu GL_SMOOTH;
	public const GLenu GL_COLOR_MATERIAL;
	public const GLenu GL_COLOR_MATERIAL_FACE;
	public const GLenu GL_COLOR_MATERIAL_PARAMETER;
	public const GLenu GL_NORMALIZE;
	
	// User Clipping Planes
	public const GLenu GL_CLIP_PLANE0;
	public const GLenu GL_CLIP_PLANE1;
	public const GLenu GL_CLIP_PLANE2;
	public const GLenu GL_CLIP_PLANE3;
	public const GLenu GL_CLIP_PLANE4;
	public const GLenu GL_CLIP_PLANE5;
	
	// Accumulation Buffer
	public const GLenu GL_ACCUM_RED_BITS;
	public const GLenu GL_ACCUM_GREEN_BITS;
	public const GLenu GL_ACCUM_BLUE_BITS;
	public const GLenu GL_ACCUM_ALPHA_BITS;
	public const GLenu GL_ACCUM_CLEAR_VALUE;
	public const GLenu GL_ACCUM;
	public const GLenu GL_ADD;
	public const GLenu GL_LOAD;
	public const GLenu GL_MULT;
	public const GLenu GL_RETURN;
	
	// Alpha Testing
	public const GLenu GL_ALPHA_TEST;
	public const GLenu GL_ALPHA_TEST_REF;
	public const GLenu GL_ALPHA_TEST_FUNC;
	
	// Blending
	public const GLenu GL_BLEND;
	public const GLenu GL_BLEND_SRC;
	public const GLenu GL_BLEND_DST;
	public const GLenu GL_ZERO;
	public const GLenu GL_ONE;
	public const GLenu GL_SRC_COLOR;
	public const GLenu GL_ONE_MINUS_SRC_COLOR;
	public const GLenu GL_SRC_ALPHA;
	public const GLenu GL_ONE_MINUS_SRC_ALPHA;
	public const GLenu GL_DST_ALPHA;
	public const GLenu GL_ONE_MINUS_DST_ALPHA;
	public const GLenu GL_DST_COLOR;
	public const GLenu GL_ONE_MINUS_DST_COLOR;
	public const GLenu GL_SRC_ALPHA_SATURATE;
	
	// Render Mode
	public const GLenu GL_FEEDBACK;
	public const GLenu GL_RENDER;
	public const GLenu GL_SELECT;
	
	// Feedback
	public const GLenu GL_2D;
	public const GLenu GL_3D;
	public const GLenu GL_3D_COLOR;
	public const GLenu GL_3D_COLOR_TEXTURE;
	public const GLenu GL_4D_COLOR_TEXTURE;
	public const GLenu GL_POINT_TOKEN;
	public const GLenu GL_LINE_TOKEN;
	public const GLenu GL_LINE_RESET_TOKEN;
	public const GLenu GL_POLYGON_TOKEN;
	public const GLenu GL_BITMAP_TOKEN;
	public const GLenu GL_DRAW_PIXEL_TOKEN;
	public const GLenu GL_COPY_PIXEL_TOKEN;
	public const GLenu GL_PASS_THROUGH_TOKEN;
	public const GLenu GL_FEEDBACK_BUFFER_POINTER;
	public const GLenu GL_FEEDBACK_BUFFER_SIZE;
	public const GLenu GL_FEEDBACK_BUFFER_TYPE;
	
	// Selection Buffer
	public const GLenu GL_SELECTION_BUFFER_POINTER;
	public const GLenu GL_SELECTION_BUFFER_SIZE;
	
	// Fog
	public const GLenu GL_FOG;
	public const GLenu GL_FOG_MODE;
	public const GLenu GL_FOG_DENSITY;
	public const GLenu GL_FOG_COLOR;
	public const GLenu GL_FOG_INDEX;
	public const GLenu GL_FOG_START;
	public const GLenu GL_FOG_END;
	public const GLenu GL_LINEAR;
	public const GLenu GL_EXP;
	public const GLenu GL_EXP2;
	
	// Logic Ops
	public const GLenu GL_LOGIC_OP;
	public const GLenu GL_INDEX_LOGIC_OP;
	public const GLenu GL_COLOR_LOGIC_OP;
	public const GLenu GL_LOGIC_OP_MODE;
	public const GLenu GL_CLEAR;
	public const GLenu GL_SET;
	public const GLenu GL_COPY;
	public const GLenu GL_COPY_INVERTED;
	public const GLenu GL_NOOP;
	public const GLenu GL_INVERT;
	public const GLenu GL_AND;
	public const GLenu GL_NAND;
	public const GLenu GL_OR;
	public const GLenu GL_NOR;
	public const GLenu GL_XOR;
	public const GLenu GL_EQUIV;
	public const GLenu GL_AND_REVERSE;
	public const GLenu GL_AND_INVERTED;
	public const GLenu GL_OR_REVERSE;
	public const GLenu GL_OR_INVERTED;
	
	// Stencil
	public const GLenu GL_STENCIL_BITS;
	public const GLenu GL_STENCIL_TEST;
	public const GLenu GL_STENCIL_CLEAR_VALUE;
	public const GLenu GL_STENCIL_FUNC;
	public const GLenu GL_STENCIL_VALUE_MASK;
	public const GLenu GL_STENCIL_FAIL;
	public const GLenu GL_STENCIL_PASS_DEPTH_FAIL;
	public const GLenu GL_STENCIL_PASS_DEPTH_PASS;
	public const GLenu GL_STENCIL_REF;
	public const GLenu GL_STENCIL_WRITEMASK;
	public const GLenu GL_STENCIL_INDEX;
	public const GLenu GL_KEEP;
	public const GLenu GL_REPLACE;
	public const GLenu GL_INCR;
	public const GLenu GL_DECR;
	
	// Buffers, Pixel Drawing/Reading
	public const GLenu GL_NONE;
	public const GLenu GL_LEFT;
	public const GLenu GL_RIGHT;
	public const GLenu GL_FRONT_LEFT;
	public const GLenu GL_FRONT_RIGHT;
	public const GLenu GL_BACK_LEFT;
	public const GLenu GL_BACK_RIGHT;
	public const GLenu GL_AUX0;
	public const GLenu GL_AUX1;
	public const GLenu GL_AUX2;
	public const GLenu GL_AUX3;
	public const GLenu GL_COLOR_INDEX;
	public const GLenu GL_RED;
	public const GLenu GL_GREEN;
	public const GLenu GL_BLUE;
	public const GLenu GL_ALPHA;
	public const GLenu GL_LUMINANCE;
	public const GLenu GL_LUMINANCE_ALPHA;
	public const GLenu GL_ALPHA_BITS;
	public const GLenu GL_RED_BITS;
	public const GLenu GL_GREEN_BITS;
	public const GLenu GL_BLUE_BITS;
	public const GLenu GL_INDEX_BITS;
	public const GLenu GL_SUBPIXEL_BITS;
	public const GLenu GL_AUX_BUFFERS;
	public const GLenu GL_READ_BUFFER;
	public const GLenu GL_DRAW_BUFFER;
	public const GLenu GL_DOUBLEBUFFER;
	public const GLenu GL_STEREO;
	public const GLenu GL_BITMAP;
	public const GLenu GL_COLOR;
	public const GLenu GL_DEPTH;
	public const GLenu GL_STENCIL;
	public const GLenu GL_DITHER;
	public const GLenu GL_RGB;
	public const GLenu GL_RGBA;
	
	// Implementation Limits
	public const GLenu GL_MAX_LIST_NESTING;
	public const GLenu GL_MAX_EVAL_ORDER;
	public const GLenu GL_MAX_LIGHTS;
	public const GLenu GL_MAX_CLIP_PLANES;
	public const GLenu GL_MAX_TEXTURE_SIZE;
	public const GLenu GL_MAX_PIXEL_MAP_TABLE;
	public const GLenu GL_MAX_ATTRIB_STACK_DEPTH;
	public const GLenu GL_MAX_MODELVIEW_STACK_DEPTH;
	public const GLenu GL_MAX_NAME_STACK_DEPTH;
	public const GLenu GL_MAX_PROJECTION_STACK_DEPTH;
	public const GLenu GL_MAX_TEXTURE_STACK_DEPTH;
	public const GLenu GL_MAX_VIEWPORT_DIMS;
	public const GLenu GL_MAX_CLIENT_ATTRIB_STACK_DEPTH;
	
	// Gets
	public const GLenu GL_ATTRIB_STACK_DEPTH;
	public const GLenu GL_CLIENT_ATTRIB_STACK_DEPTH;
	public const GLenu GL_COLOR_CLEAR_VALUE;
	public const GLenu GL_COLOR_WRITEMASK;
	public const GLenu GL_CURRENT_INDEX;
	public const GLenu GL_CURRENT_COLOR;
	public const GLenu GL_CURRENT_NORMAL;
	public const GLenu GL_CURRENT_RASTER_COLOR;
	public const GLenu GL_CURRENT_RASTER_DISTANCE;
	public const GLenu GL_CURRENT_RASTER_INDEX;
	public const GLenu GL_CURRENT_RASTER_POSITION;
	public const GLenu GL_CURRENT_RASTER_TEXTURE_COORDS;
	public const GLenu GL_CURRENT_RASTER_POSITION_VALID;
	public const GLenu GL_CURRENT_TEXTURE_COORDS;
	public const GLenu GL_INDEX_CLEAR_VALUE;
	public const GLenu GL_INDEX_MODE;
	public const GLenu GL_INDEX_WRITEMASK;
	public const GLenu GL_MODELVIEW_MATRIX;
	public const GLenu GL_MODELVIEW_STACK_DEPTH;
	public const GLenu GL_NAME_STACK_DEPTH;
	public const GLenu GL_PROJECTION_MATRIX;
	public const GLenu GL_PROJECTION_STACK_DEPTH;
	public const GLenu GL_RENDER_MODE;
	public const GLenu GL_RGBA_MODE;
	public const GLenu GL_TEXTURE_MATRIX;
	public const GLenu GL_TEXTURE_STACK_DEPTH;
	public const GLenu GL_VIEWPORT;
	
	// Evaluators
	public const GLenu GL_AUTO_NORMAL;
	public const GLenu GL_MAP1_COLOR_4;
	public const GLenu GL_MAP1_INDEX;
	public const GLenu GL_MAP1_NORMAL;
	public const GLenu GL_MAP1_TEXTURE_COORD_1;
	public const GLenu GL_MAP1_TEXTURE_COORD_2;
	public const GLenu GL_MAP1_TEXTURE_COORD_3;
	public const GLenu GL_MAP1_TEXTURE_COORD_4;
	public const GLenu GL_MAP1_VERTEX_3;
	public const GLenu GL_MAP1_VERTEX_4;
	public const GLenu GL_MAP2_COLOR_4;
	public const GLenu GL_MAP2_INDEX;
	public const GLenu GL_MAP2_NORMAL;
	public const GLenu GL_MAP2_TEXTURE_COORD_1;
	public const GLenu GL_MAP2_TEXTURE_COORD_2;
	public const GLenu GL_MAP2_TEXTURE_COORD_3;
	public const GLenu GL_MAP2_TEXTURE_COORD_4;
	public const GLenu GL_MAP2_VERTEX_3;
	public const GLenu GL_MAP2_VERTEX_4;
	public const GLenu GL_MAP1_GRID_DOMAIN;
	public const GLenu GL_MAP1_GRID_SEGMENTS;
	public const GLenu GL_MAP2_GRID_DOMAIN;
	public const GLenu GL_MAP2_GRID_SEGMENTS;
	public const GLenu GL_COEFF;
	public const GLenu GL_ORDER;
	public const GLenu GL_DOMAIN;
	
	// Hints
	public const GLenu GL_PERSPECTIVE_CORRECTION_HINT;
	public const GLenu GL_POINT_SMOOTH_HINT;
	public const GLenu GL_LINE_SMOOTH_HINT;
	public const GLenu GL_POLYGON_SMOOTH_HINT;
	public const GLenu GL_FOG_HINT;
	public const GLenu GL_DONT_CARE;
	public const GLenu GL_FASTEST;
	public const GLenu GL_NICEST;
	
	// Scissor box
	public const GLenu GL_SCISSOR_BOX;
	public const GLenu GL_SCISSOR_TEST;
	
	// Pixel Mode / Transfer
	public const GLenu GL_MAP_COLOR;
	public const GLenu GL_MAP_STENCIL;
	public const GLenu GL_INDEX_SHIFT;
	public const GLenu GL_INDEX_OFFSET;
	public const GLenu GL_RED_SCALE;
	public const GLenu GL_RED_BIAS;
	public const GLenu GL_GREEN_SCALE;
	public const GLenu GL_GREEN_BIAS;
	public const GLenu GL_BLUE_SCALE;
	public const GLenu GL_BLUE_BIAS;
	public const GLenu GL_ALPHA_SCALE;
	public const GLenu GL_ALPHA_BIAS;
	public const GLenu GL_DEPTH_SCALE;
	public const GLenu GL_DEPTH_BIAS;
	public const GLenu GL_PIXEL_MAP_S_TO_S_SIZE;
	public const GLenu GL_PIXEL_MAP_I_TO_I_SIZE;
	public const GLenu GL_PIXEL_MAP_I_TO_R_SIZE;
	public const GLenu GL_PIXEL_MAP_I_TO_G_SIZE;
	public const GLenu GL_PIXEL_MAP_I_TO_B_SIZE;
	public const GLenu GL_PIXEL_MAP_I_TO_A_SIZE;
	public const GLenu GL_PIXEL_MAP_R_TO_R_SIZE;
	public const GLenu GL_PIXEL_MAP_G_TO_G_SIZE;
	public const GLenu GL_PIXEL_MAP_B_TO_B_SIZE;
	public const GLenu GL_PIXEL_MAP_A_TO_A_SIZE;
	public const GLenu GL_PIXEL_MAP_S_TO_S;
	public const GLenu GL_PIXEL_MAP_I_TO_I;
	public const GLenu GL_PIXEL_MAP_I_TO_R;
	public const GLenu GL_PIXEL_MAP_I_TO_G;
	public const GLenu GL_PIXEL_MAP_I_TO_B;
	public const GLenu GL_PIXEL_MAP_I_TO_A;
	public const GLenu GL_PIXEL_MAP_R_TO_R;
	public const GLenu GL_PIXEL_MAP_G_TO_G;
	public const GLenu GL_PIXEL_MAP_B_TO_B;
	public const GLenu GL_PIXEL_MAP_A_TO_A;
	public const GLenu GL_PACK_ALIGNMENT;
	public const GLenu GL_PACK_LSB_FIRST;
	public const GLenu GL_PACK_ROW_LENGTH;
	public const GLenu GL_PACK_SKIP_PIXELS;
	public const GLenu GL_PACK_SKIP_ROWS;
	public const GLenu GL_PACK_SWAP_BYTES;
	public const GLenu GL_UNPACK_ALIGNMENT;
	public const GLenu GL_UNPACK_LSB_FIRST;
	public const GLenu GL_UNPACK_ROW_LENGTH;
	public const GLenu GL_UNPACK_SKIP_PIXELS;
	public const GLenu GL_UNPACK_SKIP_ROWS;
	public const GLenu GL_UNPACK_SWAP_BYTES;
	public const GLenu GL_ZOOM_X;
	public const GLenu GL_ZOOM_Y;
	
	// Texture Mapping
	public const GLenu GL_TEXTURE_ENV;
	public const GLenu GL_TEXTURE_ENV_MODE;
	public const GLenu GL_TEXTURE_1D;
	public const GLenu GL_TEXTURE_2D;
	public const GLenu GL_TEXTURE_WRAP_S;
	public const GLenu GL_TEXTURE_WRAP_T;
	public const GLenu GL_TEXTURE_MAG_FILTER;
	public const GLenu GL_TEXTURE_MIN_FILTER;
	public const GLenu GL_TEXTURE_ENV_COLOR;
	public const GLenu GL_TEXTURE_GEN_S;
	public const GLenu GL_TEXTURE_GEN_T;
	public const GLenu GL_TEXTURE_GEN_MODE;
	public const GLenu GL_TEXTURE_BORDER_COLOR;
	public const GLenu GL_TEXTURE_WIDTH;
	public const GLenu GL_TEXTURE_HEIGHT;
	public const GLenu GL_TEXTURE_BORDER;
	public const GLenu GL_TEXTURE_COMPONENTS;
	public const GLenu GL_TEXTURE_RED_SIZE;
	public const GLenu GL_TEXTURE_GREEN_SIZE;
	public const GLenu GL_TEXTURE_BLUE_SIZE;
	public const GLenu GL_TEXTURE_ALPHA_SIZE;
	public const GLenu GL_TEXTURE_LUMINANCE_SIZE;
	public const GLenu GL_TEXTURE_INTENSITY_SIZE;
	public const GLenu GL_NEAREST_MIPMAP_NEAREST;
	public const GLenu GL_NEAREST_MIPMAP_LINEAR;
	public const GLenu GL_LINEAR_MIPMAP_NEAREST;
	public const GLenu GL_LINEAR_MIPMAP_LINEAR;
	public const GLenu GL_OBJECT_LINEAR;
	public const GLenu GL_OBJECT_PLANE;
	public const GLenu GL_EYE_LINEAR;
	public const GLenu GL_EYE_PLANE;
	public const GLenu GL_SPHERE_MAP;
	public const GLenu GL_DECAL;
	public const GLenu GL_MODULATE;
	public const GLenu GL_NEAREST;
	public const GLenu GL_REPEAT;
	public const GLenu GL_CLAMP;
	public const GLenu GL_S;
	public const GLenu GL_T;
	public const GLenu GL_R;
	public const GLenu GL_Q;
	public const GLenu GL_TEXTURE_GEN_R;
	public const GLenu GL_TEXTURE_GEN_Q;
	
	// Utility
	public const GLenu GL_VENDOR;
	public const GLenu GL_RENDERER;
	public const GLenu GL_VERSION;
	public const GLenu GL_EXTENSIONS;
	
	// Errors
	public const GLenu GL_NO_ERROR;
	public const GLenu GL_INVALID_ENUM;
	public const GLenu GL_INVALID_VALUE;
	public const GLenu GL_INVALID_OPERATION;
	public const GLenu GL_STACK_OVERFLOW;
	public const GLenu GL_STACK_UNDERFLOW;
	public const GLenu GL_OUT_OF_MEMORY;
	
	// glPush/Pop Attrib Bits
	public const GLenu GL_CURRENT_BIT;
	public const GLenu GL_POINT_BIT;
	public const GLenu GL_LINE_BIT;
	public const GLenu GL_POLYGON_BIT;
	public const GLenu GL_POLYGON_STIPPLE_BIT;
	public const GLenu GL_PIXEL_MODE_BIT;
	public const GLenu GL_LIGHTING_BIT;
	public const GLenu GL_FOG_BIT;
	public const GLenu GL_DEPTH_BUFFER_BIT;
	public const GLenu GL_ACCUM_BUFFER_BIT;
	public const GLenu GL_STENCIL_BUFFER_BIT;
	public const GLenu GL_VIEWPORT_BIT;
	public const GLenu GL_TRANSFORM_BIT;
	public const GLenu GL_ENABLE_BIT;
	public const GLenu GL_COLOR_BUFFER_BIT;
	public const GLenu GL_HINT_BIT;
	public const GLenu GL_EVAL_BIT;
	public const GLenu GL_LIST_BIT;
	public const GLenu GL_TEXTURE_BIT;
	public const GLenu GL_SCISSOR_BIT;
	public const GLenu GL_ALL_ATTRIB_BITS;
	
	// OpenGL 1.1
	public const GLenu GL_PROXY_TEXTURE_1D;
	public const GLenu GL_PROXY_TEXTURE_2D;
	public const GLenu GL_TEXTURE_PRIORITY;
	public const GLenu GL_TEXTURE_RESIDENT;
	public const GLenu GL_TEXTURE_BINDING_1D;
	public const GLenu GL_TEXTURE_BINDING_2D;
	public const GLenu GL_TEXTURE_INTERNAL_FORMAT;
	public const GLenu GL_ALPHA4;
	public const GLenu GL_ALPHA8;
	public const GLenu GL_ALPHA12;
	public const GLenu GL_ALPHA16;
	public const GLenu GL_LUMINANCE4;
	public const GLenu GL_LUMINANCE8;
	public const GLenu GL_LUMINANCE12;
	public const GLenu GL_LUMINANCE16;
	public const GLenu GL_LUMINANCE4_ALPHA4;
	public const GLenu GL_LUMINANCE6_ALPHA2;
	public const GLenu GL_LUMINANCE8_ALPHA8;
	public const GLenu GL_LUMINANCE12_ALPHA4;
	public const GLenu GL_LUMINANCE12_ALPHA12;
	public const GLenu GL_LUMINANCE16_ALPHA16;
	public const GLenu GL_INTENSITY;
	public const GLenu GL_INTENSITY4;
	public const GLenu GL_INTENSITY8;
	public const GLenu GL_INTENSITY12;
	public const GLenu GL_INTENSITY16;
	public const GLenu GL_R3_G3_B2;
	public const GLenu GL_RGB4;
	public const GLenu GL_RGB5;
	public const GLenu GL_RGB8;
	public const GLenu GL_RGB10;
	public const GLenu GL_RGB12;
	public const GLenu GL_RGB16;
	public const GLenu GL_RGBA2;
	public const GLenu GL_RGBA4;
	public const GLenu GL_RGB5_A1;
	public const GLenu GL_RGBA8;
	public const GLenu GL_RGB10_A2;
	public const GLenu GL_RGBA12;
	public const GLenu GL_RGBA16;
	public const GLenu GL_CLIENT_PIXEL_STORE_BIT;
	public const GLenu GL_CLIENT_VERTEX_ARRAY_BIT;
	public const GLenu GL_ALL_CLIENT_ATTRIB_BITS;
	public const GLenu GL_CLIENT_ALL_ATTRIB_BITS;
	
	// OpenGL 1.2
	public const GLenu GL_RESCALE_NORMAL;
	public const GLenu GL_CLAMP_TO_EDGE;
	public const GLenu GL_MAX_ELEMENTS_VERTICES;
	public const GLenu GL_MAX_ELEMENTS_INDICES;
	public const GLenu GL_BGR;
	public const GLenu GL_BGRA;
	public const GLenu GL_UNSIGNED_BYTE_3_3_2;
	public const GLenu GL_UNSIGNED_BYTE_2_3_3_REV;
	public const GLenu GL_UNSIGNED_SHORT_5_6_5;
	public const GLenu GL_UNSIGNED_SHORT_5_6_5_REV;
	public const GLenu GL_UNSIGNED_SHORT_4_4_4_4;
	public const GLenu GL_UNSIGNED_SHORT_4_4_4_4_REV;
	public const GLenu GL_UNSIGNED_SHORT_5_5_5_1;
	public const GLenu GL_UNSIGNED_SHORT_1_5_5_5_REV;
	public const GLenu GL_UNSIGNED_INT_8_8_8_8;
	public const GLenu GL_UNSIGNED_INT_8_8_8_8_REV;
	public const GLenu GL_UNSIGNED_INT_10_10_10_2;
	public const GLenu GL_UNSIGNED_INT_2_10_10_10_REV;
	public const GLenu GL_LIGHT_MODEL_COLOR_CONTROL;
	public const GLenu GL_SINGLE_COLOR;
	public const GLenu GL_SEPARATE_SPECULAR_COLOR;
	public const GLenu GL_TEXTURE_MIN_LOD;
	public const GLenu GL_TEXTURE_MAX_LOD;
	public const GLenu GL_TEXTURE_BASE_LEVEL;
	public const GLenu GL_TEXTURE_MAX_LEVEL;
	public const GLenu GL_SMOOTH_POINT_SIZE_RANGE;
	public const GLenu GL_SMOOTH_POINT_SIZE_GRANULARITY;
	public const GLenu GL_SMOOTH_LINE_WIDTH_RANGE;
	public const GLenu GL_SMOOTH_LINE_WIDTH_GRANULARITY;
	public const GLenu GL_ALIASED_POINT_SIZE_RANGE;
	public const GLenu GL_ALIASED_LINE_WIDTH_RANGE;
	public const GLenu GL_PACK_SKIP_IMAGES;
	public const GLenu GL_PACK_IMAGE_HEIGHT;
	public const GLenu GL_UNPACK_SKIP_IMAGES;
	public const GLenu GL_UNPACK_IMAGE_HEIGHT;
	public const GLenu GL_TEXTURE_3D;
	public const GLenu GL_PROXY_TEXTURE_3D;
	public const GLenu GL_TEXTURE_DEPTH;
	public const GLenu GL_TEXTURE_WRAP_R;
	public const GLenu GL_MAX_3D_TEXTURE_SIZE;
	public const GLenu GL_TEXTURE_BINDING_3D;
	
	// GL_ARB_imaging
	public const GLenu GL_ARB_imaging;
	public const GLenu GL_CONSTANT_COLOR;
	public const GLenu GL_ONE_MINUS_CONSTANT_COLOR;
	public const GLenu GL_CONSTANT_ALPHA;
	public const GLenu GL_ONE_MINUS_CONSTANT_ALPHA;
	public const GLenu GL_COLOR_TABLE;
	public const GLenu GL_POST_CONVOLUTION_COLOR_TABLE;
	public const GLenu GL_POST_COLOR_MATRIX_COLOR_TABLE;
	public const GLenu GL_PROXY_COLOR_TABLE;
	public const GLenu GL_PROXY_POST_CONVOLUTION_COLOR_TABLE;
	public const GLenu GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE;
	public const GLenu GL_COLOR_TABLE_SCALE;
	public const GLenu GL_COLOR_TABLE_BIAS;
	public const GLenu GL_COLOR_TABLE_FORMAT;
	public const GLenu GL_COLOR_TABLE_WIDTH;
	public const GLenu GL_COLOR_TABLE_RED_SIZE;
	public const GLenu GL_COLOR_TABLE_GREEN_SIZE;
	public const GLenu GL_COLOR_TABLE_BLUE_SIZE;
	public const GLenu GL_COLOR_TABLE_ALPHA_SIZE;
	public const GLenu GL_COLOR_TABLE_LUMINANCE_SIZE;
	public const GLenu GL_COLOR_TABLE_INTENSITY_SIZE;
	public const GLenu GL_CONVOLUTION_1D;
	public const GLenu GL_CONVOLUTION_2D;
	public const GLenu GL_SEPARABLE_2D;
	public const GLenu GL_CONVOLUTION_BORDER_MODE;
	public const GLenu GL_CONVOLUTION_FILTER_SCALE;
	public const GLenu GL_CONVOLUTION_FILTER_BIAS;
	public const GLenu GL_REDUCE;
	public const GLenu GL_CONVOLUTION_FORMAT;
	public const GLenu GL_CONVOLUTION_WIDTH;
	public const GLenu GL_CONVOLUTION_HEIGHT;
	public const GLenu GL_MAX_CONVOLUTION_WIDTH;
	public const GLenu GL_MAX_CONVOLUTION_HEIGHT;
	public const GLenu GL_POST_CONVOLUTION_RED_SCALE;
	public const GLenu GL_POST_CONVOLUTION_GREEN_SCALE;
	public const GLenu GL_POST_CONVOLUTION_BLUE_SCALE;
	public const GLenu GL_POST_CONVOLUTION_ALPHA_SCALE;
	public const GLenu GL_POST_CONVOLUTION_RED_BIAS;
	public const GLenu GL_POST_CONVOLUTION_GREEN_BIAS;
	public const GLenu GL_POST_CONVOLUTION_BLUE_BIAS;
	public const GLenu GL_POST_CONVOLUTION_ALPHA_BIAS;
	public const GLenu GL_CONSTANT_BORDER;
	public const GLenu GL_REPLICATE_BORDER;
	public const GLenu GL_CONVOLUTION_BORDER_COLOR;
	public const GLenu GL_COLOR_MATRIX;
	public const GLenu GL_COLOR_MATRIX_STACK_DEPTH;
	public const GLenu GL_MAX_COLOR_MATRIX_STACK_DEPTH;
	public const GLenu GL_POST_COLOR_MATRIX_RED_SCALE;
	public const GLenu GL_POST_COLOR_MATRIX_GREEN_SCALE;
	public const GLenu GL_POST_COLOR_MATRIX_BLUE_SCALE;
	public const GLenu GL_POST_COLOR_MATRIX_ALPHA_SCALE;
	public const GLenu GL_POST_COLOR_MATRIX_RED_BIAS;
	public const GLenu GL_POST_COLOR_MATRIX_GREEN_BIAS;
	public const GLenu GL_POST_COLOR_MATRIX_BLUE_BIAS;
	public const GLenu GL_POST_COLOR_MATRIX_ALPHA_BIAS;
	public const GLenu GL_HISTOGRAM;
	public const GLenu GL_PROXY_HISTOGRAM;
	public const GLenu GL_HISTOGRAM_WIDTH;
	public const GLenu GL_HISTOGRAM_FORMAT;
	public const GLenu GL_HISTOGRAM_RED_SIZE;
	public const GLenu GL_HISTOGRAM_GREEN_SIZE;
	public const GLenu GL_HISTOGRAM_BLUE_SIZE;
	public const GLenu GL_HISTOGRAM_ALPHA_SIZE;
	public const GLenu GL_HISTOGRAM_LUMINANCE_SIZE;
	public const GLenu GL_HISTOGRAM_SINK;
	public const GLenu GL_MINMAX;
	public const GLenu GL_MINMAX_FORMAT;
	public const GLenu GL_MINMAX_SINK;
	public const GLenu GL_TABLE_TOO_LARGE;
	public const GLenu GL_BLEND_EQUATION;
	public const GLenu GL_MIN;
	public const GLenu GL_MAX;
	public const GLenu GL_FUNC_ADD;
	public const GLenu GL_FUNC_SUBTRACT;
	public const GLenu GL_FUNC_REVERSE_SUBTRACT;
	public const GLenu GL_BLEND_COLOR;
	
	// OpenGL 1.3
	public const GLenu GL_TEXTURE0;
	public const GLenu GL_TEXTURE1;
	public const GLenu GL_TEXTURE2;
	public const GLenu GL_TEXTURE3;
	public const GLenu GL_TEXTURE4;
	public const GLenu GL_TEXTURE5;
	public const GLenu GL_TEXTURE6;
	public const GLenu GL_TEXTURE7;
	public const GLenu GL_TEXTURE8;
	public const GLenu GL_TEXTURE9;
	public const GLenu GL_TEXTURE10;
	public const GLenu GL_TEXTURE11;
	public const GLenu GL_TEXTURE12;
	public const GLenu GL_TEXTURE13;
	public const GLenu GL_TEXTURE14;
	public const GLenu GL_TEXTURE15;
	public const GLenu GL_TEXTURE16;
	public const GLenu GL_TEXTURE17;
	public const GLenu GL_TEXTURE18;
	public const GLenu GL_TEXTURE19;
	public const GLenu GL_TEXTURE20;
	public const GLenu GL_TEXTURE21;
	public const GLenu GL_TEXTURE22;
	public const GLenu GL_TEXTURE23;
	public const GLenu GL_TEXTURE24;
	public const GLenu GL_TEXTURE25;
	public const GLenu GL_TEXTURE26;
	public const GLenu GL_TEXTURE27;
	public const GLenu GL_TEXTURE28;
	public const GLenu GL_TEXTURE29;
	public const GLenu GL_TEXTURE30;
	public const GLenu GL_TEXTURE31;
	public const GLenu GL_ACTIVE_TEXTURE;
	public const GLenu GL_CLIENT_ACTIVE_TEXTURE;
	public const GLenu GL_MAX_TEXTURE_UNITS;
	public const GLenu GL_NORMAL_MAP;
	public const GLenu GL_REFLECTION_MAP;
	public const GLenu GL_TEXTURE_CUBE_MAP;
	public const GLenu GL_TEXTURE_BINDING_CUBE_MAP;
	public const GLenu GL_TEXTURE_CUBE_MAP_POSITIVE_X;
	public const GLenu GL_TEXTURE_CUBE_MAP_NEGATIVE_X;
	public const GLenu GL_TEXTURE_CUBE_MAP_POSITIVE_Y;
	public const GLenu GL_TEXTURE_CUBE_MAP_NEGATIVE_Y;
	public const GLenu GL_TEXTURE_CUBE_MAP_POSITIVE_Z;
	public const GLenu GL_TEXTURE_CUBE_MAP_NEGATIVE_Z;
	public const GLenu GL_PROXY_TEXTURE_CUBE_MAP;
	public const GLenu GL_MAX_CUBE_MAP_TEXTURE_SIZE;
	public const GLenu GL_COMPRESSED_ALPHA;
	public const GLenu GL_COMPRESSED_LUMINANCE;
	public const GLenu GL_COMPRESSED_LUMINANCE_ALPHA;
	public const GLenu GL_COMPRESSED_INTENSITY;
	public const GLenu GL_COMPRESSED_RGB;
	public const GLenu GL_COMPRESSED_RGBA;
	public const GLenu GL_TEXTURE_COMPRESSION_HINT;
	public const GLenu GL_TEXTURE_COMPRESSED_IMAGE_SIZE;
	public const GLenu GL_TEXTURE_COMPRESSED;
	public const GLenu GL_NUM_COMPRESSED_TEXTURE_FORMATS;
	public const GLenu GL_COMPRESSED_TEXTURE_FORMATS;
	public const GLenu GL_MULTISAMPLE;
	public const GLenu GL_SAMPLE_ALPHA_TO_COVERAGE;
	public const GLenu GL_SAMPLE_ALPHA_TO_ONE;
	public const GLenu GL_SAMPLE_COVERAGE;
	public const GLenu GL_SAMPLE_BUFFERS;
	public const GLenu GL_SAMPLES;
	public const GLenu GL_SAMPLE_COVERAGE_VALUE;
	public const GLenu GL_SAMPLE_COVERAGE_INVERT;
	public const GLenu GL_MULTISAMPLE_BIT;
	public const GLenu GL_TRANSPOSE_MODELVIEW_MATRIX;
	public const GLenu GL_TRANSPOSE_PROJECTION_MATRIX;
	public const GLenu GL_TRANSPOSE_TEXTURE_MATRIX;
	public const GLenu GL_TRANSPOSE_COLOR_MATRIX;
	public const GLenu GL_COMBINE;
	public const GLenu GL_COMBINE_RGB;
	public const GLenu GL_COMBINE_ALPHA;
	public const GLenu GL_SOURCE0_RGB;
	public const GLenu GL_SOURCE1_RGB;
	public const GLenu GL_SOURCE2_RGB;
	public const GLenu GL_SOURCE0_ALPHA;
	public const GLenu GL_SOURCE1_ALPHA;
	public const GLenu GL_SOURCE2_ALPHA;
	public const GLenu GL_OPERAND0_RGB;
	public const GLenu GL_OPERAND1_RGB;
	public const GLenu GL_OPERAND2_RGB;
	public const GLenu GL_OPERAND0_ALPHA;
	public const GLenu GL_OPERAND1_ALPHA;
	public const GLenu GL_OPERAND2_ALPHA;
	public const GLenu GL_RGB_SCALE;
	public const GLenu GL_ADD_SIGNED;
	public const GLenu GL_INTERPOLATE;
	public const GLenu GL_SUBTRACT;
	public const GLenu GL_CONSTANT;
	public const GLenu GL_PRIMARY_COLOR;
	public const GLenu GL_PREVIOUS;
	public const GLenu GL_DOT3_RGB;
	public const GLenu GL_DOT3_RGBA;
	public const GLenu GL_CLAMP_TO_BORDER;
	
	// GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
	public const GLenu GL_TEXTURE0_ARB;
	public const GLenu GL_TEXTURE1_ARB;
	public const GLenu GL_TEXTURE2_ARB;
	public const GLenu GL_TEXTURE3_ARB;
	public const GLenu GL_TEXTURE4_ARB;
	public const GLenu GL_TEXTURE5_ARB;
	public const GLenu GL_TEXTURE6_ARB;
	public const GLenu GL_TEXTURE7_ARB;
	public const GLenu GL_TEXTURE8_ARB;
	public const GLenu GL_TEXTURE9_ARB;
	public const GLenu GL_TEXTURE10_ARB;
	public const GLenu GL_TEXTURE11_ARB;
	public const GLenu GL_TEXTURE12_ARB;
	public const GLenu GL_TEXTURE13_ARB;
	public const GLenu GL_TEXTURE14_ARB;
	public const GLenu GL_TEXTURE15_ARB;
	public const GLenu GL_TEXTURE16_ARB;
	public const GLenu GL_TEXTURE17_ARB;
	public const GLenu GL_TEXTURE18_ARB;
	public const GLenu GL_TEXTURE19_ARB;
	public const GLenu GL_TEXTURE20_ARB;
	public const GLenu GL_TEXTURE21_ARB;
	public const GLenu GL_TEXTURE22_ARB;
	public const GLenu GL_TEXTURE23_ARB;
	public const GLenu GL_TEXTURE24_ARB;
	public const GLenu GL_TEXTURE25_ARB;
	public const GLenu GL_TEXTURE26_ARB;
	public const GLenu GL_TEXTURE27_ARB;
	public const GLenu GL_TEXTURE28_ARB;
	public const GLenu GL_TEXTURE29_ARB;
	public const GLenu GL_TEXTURE30_ARB;
	public const GLenu GL_TEXTURE31_ARB;
	public const GLenu GL_ACTIVE_TEXTURE_ARB;
	public const GLenu GL_CLIENT_ACTIVE_TEXTURE_ARB;
	public const GLenu GL_MAX_TEXTURE_UNITS_ARB;

	
	// Miscellaneous
	public static void glClearIndex (GLfloat c);
	public static void glClearColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
	public static void glClear (GLbitfield mask);
	public static void glIndexMask (GLuint mask);
	public static void glColorMask (GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha);
	public static void glAlphaFunc (GLenu func, GLclampf @ref);
	public static void glBlendFunc (GLenu sfactor, GLenu dfactor);
	public static void glLogicOp (GLenu opcode);
	public static void glCullFace (GLenu mode);
	public static void glFrontFace (GLenu mode);
	public static void glPointSize (GLfloat size);
	public static void glLineWidth (GLfloat width);
	public static void glLineStipple (GLint factor, GLushort pattern);
	public static void glPolygonMode (GLenu face, GLenu mode);
	public static void glPolygonOffset (GLfloat factor, GLfloat units);
	public static void glPolygonStipple ([CCode (array_length = false)] GLubyte[] mask);
	public static void glGetPolygonStipple (out GLubyte mask);
	public static void glEdgeFlag (GLboolean flag);
	public static void glEdgeFlagv ([CCode (array_length = false)] GLboolean[] flag);
	public static void glScissor (GLint x, GLint y, GLsizei width, GLsizei height);
	public static void glClipPlane (GLenu plane, [CCode (array_length = false)] GLdouble[] equation);
	public static void glGetClipPlane (GLenu plane, [CCode (array_length = false)] GLdouble[] equation);
	public static void glDrawBuffer (GLenu mode);
	public static void glReadBuffer (GLenu mode);
	public static void glEnable (GLenu cap);
	public static void glDisable (GLenu cap);
	public static GLboolean glIsEnabled (GLenu cap);
	public static void glEnableClientState (GLenu cap);
	public static void glDisableClientState (GLenu cap);
	public static void glGetBooleanv (GLenu pname, [CCode (array_length = false)] GLboolean[] params);
	public static void glGetDoublev (GLenu pname, [CCode (array_length = false)] GLdouble[] params);
	public static void glGetFloatv (GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetIntegerv (GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glPushAttrib (GLbitfield mask);
	public static void glPopAttrib ();
	public static void glPushClientAttrib (GLbitfield mask);
	public static void glPopClientAttrib ();
	public static GLint glRenderMode (GLenu mode);
	public static GLenu glGetError ();
	public static unowned string glGetString (GLenu name);
	public static void glFinish ();
	public static void glFlush ();
	public static void glHint (GLenu target, GLenu mode);

	// Depth Buffer
	public static void glClearDepth (GLclampd depth);
	public static void glDepthFunc (GLenu func);
	public static void glDepthMask (GLboolean flag);
	public static void glDepthRange (GLclampd near_val, GLclampd far_val);

	// Accumulation Buffer
	public static void glClearAccum (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	public static void glAccum (GLenu op, GLfloat @value);

	// Transformation
	public static void glMatrixMode (GLenu mode);
	public static void glOrtho (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val);
	public static void glFrustum (GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val);
	public static void glViewport (GLint x, GLint y, GLsizei width, GLsizei height);
	public static void glPushMatrix ();
	public static void glPopMatrix ();
	public static void glLoadIdentity ();
	public static void glLoadMatrixd ([CCode (array_length = false)] GLdouble[] m);
	public static void glLoadMatrixf ([CCode (array_length = false)] GLfloat[] m);
	public static void glMultMatrixd ([CCode (array_length = false)] GLdouble[] m);
	public static void glMultMatrixf ([CCode (array_length = false)] GLfloat[] m);
	public static void glRotated (GLdouble angle, GLdouble x, GLdouble y, GLdouble z);
	public static void glRotatef (GLfloat angle, GLfloat x, GLfloat y, GLfloat z);
	public static void glScaled (GLdouble x, GLdouble y, GLdouble z);
	public static void glScalef (GLfloat x, GLfloat y, GLfloat z);
	public static void glTranslated (GLdouble x, GLdouble y, GLdouble z);
	public static void glTranslatef (GLfloat x, GLfloat y, GLfloat z);

	// Display Lists
	public static GLboolean glIsList (GLuint list);
	public static void glDeleteLists (GLuint list, GLsizei range);
	public static GLuint glGenLists (GLsizei range);
	public static void glNewList (GLuint list, GLenu mode);
	public static void glEndList ();
	public static void glCallList (GLuint list);
	public static void glCallLists (GLsizei n, GLenu type, [CCode (array_length = false)] GLvoid[] lists);
	public static void glListBase (GLuint @base);

	// Drawing Functions
	public static void glBegin (GLenu mode);
	public static void glEnd ();
	public static void glVertex2d (GLdouble x, GLdouble y);
	public static void glVertex2f (GLfloat x, GLfloat y);
	public static void glVertex2i (GLint x, GLint y);
	public static void glVertex2s (GLshort x, GLshort y);
	public static void glVertex3d (GLdouble x, GLdouble y, GLdouble z);
	public static void glVertex3f (GLfloat x, GLfloat y, GLfloat z);
	public static void glVertex3i (GLint x, GLint y, GLint z);
	public static void glVertex3s (GLshort x, GLshort y, GLshort z);
	public static void glVertex4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	public static void glVertex4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
	public static void glVertex4i (GLint x, GLint y, GLint z, GLint w);
	public static void glVertex4s (GLshort x, GLshort y, GLshort z, GLshort w);
	public static void glVertex2dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glVertex2fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glVertex2iv ([CCode (array_length = false)] GLint[] v);
	public static void glVertex2sv ([CCode (array_length = false)] GLshort[] v);
	public static void glVertex3dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glVertex3fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glVertex3iv ([CCode (array_length = false)] GLint[] v);
	public static void glVertex3sv ([CCode (array_length = false)] GLshort[] v);
	public static void glVertex4dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glVertex4fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glVertex4iv ([CCode (array_length = false)] GLint[] v);
	public static void glVertex4sv ([CCode (array_length = false)] GLshort[] v);
	public static void glNormal3b (GLbyte nx, GLbyte ny, GLbyte nz);
	public static void glNormal3d (GLdouble nx, GLdouble ny, GLdouble nz);
	public static void glNormal3f (GLfloat nx, GLfloat ny, GLfloat nz);
	public static void glNormal3i (GLint nx, GLint ny, GLint nz);
	public static void glNormal3s (GLshort nx, GLshort ny, GLshort nz);
	public static void glNormal3bv ([CCode (array_length = false)] GLbyte[] v);
	public static void glNormal3dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glNormal3fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glNormal3iv ([CCode (array_length = false)] GLint[] v);
	public static void glNormal3sv ([CCode (array_length = false)] GLshort[] v);
	public static void glIndexd (GLdouble c);
	public static void glIndexf (GLfloat c);
	public static void glIndexi (GLint c);
	public static void glIndexs (GLshort c);
	public static void glIndexub (GLubyte c);
	public static void glIndexdv ([CCode (array_length = false)] GLdouble[] c);
	public static void glIndexfv ([CCode (array_length = false)] GLfloat[] c);
	public static void glIndexiv ([CCode (array_length = false)] GLint[] c);
	public static void glIndexsv ([CCode (array_length = false)] GLshort[] c);
	public static void glIndexubv ([CCode (array_length = false)] GLubyte[] c);
	public static void glColor3b (GLbyte red, GLbyte green, GLbyte blue);
	public static void glColor3d (GLdouble red, GLdouble green, GLdouble blue);
	public static void glColor3f (GLfloat red, GLfloat green, GLfloat blue);
	public static void glColor3i (GLint red, GLint green, GLint blue);
	public static void glColor3s (GLshort red, GLshort green, GLshort blue);
	public static void glColor3ub (GLubyte red, GLubyte green, GLubyte blue);
	public static void glColor3ui (GLuint red, GLuint green, GLuint blue);
	public static void glColor3us (GLushort red, GLushort green, GLushort blue);
	public static void glColor4b (GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha);
	public static void glColor4d (GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha);
	public static void glColor4f (GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha);
	public static void glColor4i (GLint red, GLint green, GLint blue, GLint alpha);
	public static void glColor4s (GLshort red, GLshort green, GLshort blue, GLshort alpha);
	public static void glColor4ub (GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha);
	public static void glColor4ui (GLuint red, GLuint green, GLuint blue, GLuint alpha);
	public static void glColor4us (GLushort red, GLushort green, GLushort blue, GLushort alpha);
	public static void glColor3bv ([CCode (array_length = false)] GLbyte[] v);
	public static void glColor3dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glColor3fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glColor3iv ([CCode (array_length = false)] GLint[] v);
	public static void glColor3sv ([CCode (array_length = false)] GLshort[] v);
	public static void glColor3ubv ([CCode (array_length = false)] GLubyte[] v);
	public static void glColor3uiv ([CCode (array_length = false)] GLuint[] v);
	public static void glColor3usv ([CCode (array_length = false)] GLushort[] v);
	public static void glColor4bv ([CCode (array_length = false)] GLbyte[] v);
	public static void glColor4dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glColor4fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glColor4iv ([CCode (array_length = false)] GLint[] v);
	public static void glColor4sv ([CCode (array_length = false)] GLshort[] v);
	public static void glColor4ubv ([CCode (array_length = false)] GLubyte[] v);
	public static void glColor4uiv ([CCode (array_length = false)] GLuint[] v);
	public static void glColor4usv ([CCode (array_length = false)] GLushort[] v);
	public static void glTexCoord1d (GLdouble s);
	public static void glTexCoord1f (GLfloat s);
	public static void glTexCoord1i (GLint s);
	public static void glTexCoord1s (GLshort s);
	public static void glTexCoord2d (GLdouble s, GLdouble t);
	public static void glTexCoord2f (GLfloat s, GLfloat t);
	public static void glTexCoord2i (GLint s, GLint t);
	public static void glTexCoord2s (GLshort s, GLshort t);
	public static void glTexCoord3d (GLdouble s, GLdouble t, GLdouble r);
	public static void glTexCoord3f (GLfloat s, GLfloat t, GLfloat r);
	public static void glTexCoord3i (GLint s, GLint t, GLint r);
	public static void glTexCoord3s (GLshort s, GLshort t, GLshort r);
	public static void glTexCoord4d (GLdouble s, GLdouble t, GLdouble r, GLdouble q);
	public static void glTexCoord4f (GLfloat s, GLfloat t, GLfloat r, GLfloat q);
	public static void glTexCoord4i (GLint s, GLint t, GLint r, GLint q);
	public static void glTexCoord4s (GLshort s, GLshort t, GLshort r, GLshort q);
	public static void glTexCoord1dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glTexCoord1fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glTexCoord1iv ([CCode (array_length = false)] GLint[] v);
	public static void glTexCoord1sv ([CCode (array_length = false)] GLshort[] v);
	public static void glTexCoord2dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glTexCoord2fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glTexCoord2iv ([CCode (array_length = false)] GLint[] v);
	public static void glTexCoord2sv ([CCode (array_length = false)] GLshort[] v);
	public static void glTexCoord3dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glTexCoord3fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glTexCoord3iv ([CCode (array_length = false)] GLint[] v);
	public static void glTexCoord3sv ([CCode (array_length = false)] GLshort[] v);
	public static void glTexCoord4dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glTexCoord4fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glTexCoord4iv ([CCode (array_length = false)] GLint[] v);
	public static void glTexCoord4sv ([CCode (array_length = false)] GLshort[] v);
	public static void glRasterPos2d (GLdouble x, GLdouble y);
	public static void glRasterPos2f (GLfloat x, GLfloat y);
	public static void glRasterPos2i (GLint x, GLint y);
	public static void glRasterPos2s (GLshort x, GLshort y);
	public static void glRasterPos3d (GLdouble x, GLdouble y, GLdouble z);
	public static void glRasterPos3f (GLfloat x, GLfloat y, GLfloat z);
	public static void glRasterPos3i (GLint x, GLint y, GLint z);
	public static void glRasterPos3s (GLshort x, GLshort y, GLshort z);
	public static void glRasterPos4d (GLdouble x, GLdouble y, GLdouble z, GLdouble w);
	public static void glRasterPos4f (GLfloat x, GLfloat y, GLfloat z, GLfloat w);
	public static void glRasterPos4i (GLint x, GLint y, GLint z, GLint w);
	public static void glRasterPos4s (GLshort x, GLshort y, GLshort z, GLshort w);
	public static void glRasterPos2dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glRasterPos2fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glRasterPos2iv ([CCode (array_length = false)] GLint[] v);
	public static void glRasterPos2sv ([CCode (array_length = false)] GLshort[] v);
	public static void glRasterPos3dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glRasterPos3fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glRasterPos3iv ([CCode (array_length = false)] GLint[] v);
	public static void glRasterPos3sv ([CCode (array_length = false)] GLshort[] v);
	public static void glRasterPos4dv ([CCode (array_length = false)] GLdouble[] v);
	public static void glRasterPos4fv ([CCode (array_length = false)] GLfloat[] v);
	public static void glRasterPos4iv ([CCode (array_length = false)] GLint[] v);
	public static void glRasterPos4sv ([CCode (array_length = false)] GLshort[] v);
	public static void glRectd (GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2);
	public static void glRectf (GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2);
	public static void glRecti (GLint x1, GLint y1, GLint x2, GLint y2);
	public static void glRects (GLshort x1, GLshort y1, GLshort x2, GLshort y2);
	public static void glRectdv ([CCode (array_length = false)] GLdouble[] v1, [CCode (array_length = false)] GLdouble[] v2);
	public static void glRectfv ([CCode (array_length = false)] GLfloat[] v1, [CCode (array_length = false)] GLfloat[] v2);
	public static void glRectiv ([CCode (array_length = false)] GLint[] v1, [CCode (array_length = false)] GLint[] v2);
	public static void glRectsv ([CCode (array_length = false)] GLshort[] v1, [CCode (array_length = false)] GLshort[] v2);

	// Vertex Arrays  (1.1)
	public static void glVertexPointer (GLint size, GLenu type, GLsizei stride, GLvoid* ptr);
	public static void glNormalPointer (GLenu type, GLsizei stride, GLvoid* ptr);
	public static void glColorPointer (GLint size, GLenu type, GLsizei stride, GLvoid* ptr);
	public static void glIndexPointer (GLenu type, GLsizei stride, GLvoid* ptr);
	public static void glTexCoordPointer (GLint size, GLenu type, GLsizei stride, GLvoid* ptr);
	public static void glEdgeFlagPointer (GLsizei stride, GLvoid* ptr);
	public static void glGetPointerv (GLenu pname, GLvoid** params); 
	public static void glArrayElement (GLint i);
	public static void glDrawArrays (GLenu mode, GLint first, GLsizei count);
	public static void glDrawElements (GLenu mode, GLsizei count, GLenu type, GLvoid* indices);
	public static void glInterleavedArrays (GLenu format, GLsizei stride, GLvoid* pointer);

	// Lighting
	public static void glShadeModel (GLenu mode);
	public static void glLightf (GLenu light, GLenu pname, GLfloat param);
	public static void glLighti (GLenu light, GLenu pname, GLint param);
	public static void glLightfv (GLenu light, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glLightiv (GLenu light, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glGetLightfv (GLenu light, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetLightiv (GLenu light, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glLightModelf (GLenu pname, GLfloat param);
	public static void glLightModeli (GLenu pname, GLint param);
	public static void glLightModelfv (GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glLightModeliv (GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glMaterialf (GLenu face, GLenu pname, GLfloat param);
	public static void glMateriali (GLenu face, GLenu pname, GLint param);
	public static void glMaterialfv (GLenu face, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glMaterialiv (GLenu face, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glGetMaterialfv (GLenu face, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetMaterialiv (GLenu face, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glColorMaterial (GLenu face, GLenu mode);

	// Raster functions
	public static void glPixelZoom (GLfloat xfactor, GLfloat yfactor);
	public static void glPixelStoref (GLenu pname, GLfloat param);
	public static void glPixelStorei (GLenu pname, GLint param);
	public static void glPixelTransferf (GLenu pname, GLfloat param);
	public static void glPixelTransferi (GLenu pname, GLint param);
	public static void glPixelMapfv (GLenu map, GLsizei mapsize, [CCode (array_length = false)] GLfloat[] values);
	public static void glPixelMapuiv (GLenu map, GLsizei mapsize, [CCode (array_length = false)] GLuint[] values);
	public static void glPixelMapusv (GLenu map, GLsizei mapsize, [CCode (array_length = false)] GLushort[] values);
	public static void glGetPixelMapfv (GLenu map, [CCode (array_length = false)] GLfloat[] values);
	public static void glGetPixelMapuiv (GLenu map, [CCode (array_length = false)] GLuint[] values);
	public static void glGetPixelMapusv (GLenu map, [CCode (array_length = false)] GLushort[] values);
	public static void glBitmap (GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, GLubyte* bitmap);
	public static void glReadPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenu format, GLenu type, GLvoid* pixels);
	public static void glDrawPixels (GLsizei width, GLsizei height, GLenu format, GLenu type, GLvoid* pixels);
	public static void glCopyPixels (GLint x, GLint y, GLsizei width, GLsizei height, GLenu type);

	// Stenciling
	public static void glStencilFunc (GLenu func, GLint @ref, GLuint mask);
	public static void glStencilMask (GLuint mask);
	public static void glStencilOp (GLenu fail, GLenu zfail, GLenu zpass);
	public static void glClearStencil (GLint s);

	// Texture mapping
	public static void glTexGend (GLenu coord, GLenu pname, GLdouble param);
	public static void glTexGenf (GLenu coord, GLenu pname, GLfloat param);
	public static void glTexGeni (GLenu coord, GLenu pname, GLint param);
	public static void glTexGendv (GLenu coord, GLenu pname, [CCode (array_length = false)] GLdouble[] params);
	public static void glTexGenfv (GLenu coord, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glTexGeniv (GLenu coord, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glGetTexGendv (GLenu coord, GLenu pname, [CCode (array_length = false)] GLdouble[] params);
	public static void glGetTexGenfv (GLenu coord, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetTexGeniv (GLenu coord, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glTexEnvf (GLenu target, GLenu pname, GLfloat param);
	public static void glTexEnvi (GLenu target, GLenu pname, GLint param);
	public static void glTexEnvfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glTexEnviv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glGetTexEnvfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetTexEnviv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glTexParameterf (GLenu target, GLenu pname, GLfloat param);
	public static void glTexParameteri (GLenu target, GLenu pname, GLint param);
	public static void glTexParameterfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glTexParameteriv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glGetTexParameterfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetTexParameteriv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glGetTexLevelParameterfv (GLenu target, GLint level, [CCode (array_length = false)] GLenu pname, GLfloat[] params);
	public static void glGetTexLevelParameteriv (GLenu target, GLint level, GLenu pname,[CCode (array_length = false)]  GLint[] params);
	public static void glTexImage1D (GLenu target, GLint level, GLint internalFormat, GLsizei width, GLint border, GLenu format, GLenu type, GLvoid* pixels);
	public static void glTexImage2D (GLenu target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLint border, GLenu format, GLenu type, GLvoid* pixels);
	public static void glGetTexImage (GLenu target, GLint level, GLenu format, GLenu type, GLvoid* pixels);

	// 1.1 functions
	public static void glGenTextures (GLsizei n, [CCode (array_length = false)] GLuint[] textures);
	public static void glDeleteTextures (GLsizei n, [CCode (array_length = false)] GLuint[] textures);
	public static void glBindTexture (GLenu target, GLuint texture);
	public static void glPrioritizeTextures (GLsizei n, [CCode (array_length = false)] GLuint[] textures, [CCode (array_length = false)] GLclampf[] priorities);
	public static GLboolean glAreTexturesResident (GLsizei n, [CCode (array_length = false)] GLuint[] textures, [CCode (array_length = false)] GLboolean[] residences);
	public static GLboolean glIsTexture (GLuint texture);
	public static void glTexSubImage1D (GLenu target, GLint level, GLint xoffset, GLsizei width, GLenu format, GLenu type, GLvoid* pixels);
	public static void glTexSubImage2D (GLenu target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenu format, GLenu type, GLvoid* pixels);
	public static void glCopyTexImage1D (GLenu target, GLint level, GLenu internalformat, GLint x, GLint y, GLsizei width, GLint border);
	public static void glCopyTexImage2D (GLenu target, GLint level, GLenu internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border);
	public static void glCopyTexSubImage1D (GLenu target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width);
	public static void glCopyTexSubImage2D (GLenu target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height);

	// Evaluators
	public static void glMap1d (GLenu target, GLdouble u1, GLdouble u2, GLint stride, GLint order, [CCode (array_length = false)] GLdouble[] points);
	public static void glMap1f (GLenu target, GLfloat u1, GLfloat u2, GLint stride, GLint order, [CCode (array_length = false)] GLfloat[] points);
	public static void glMap2d (GLenu target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder,[CCode (array_length = false)]  GLdouble[] points);
	public static void glMap2f (GLenu target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, [CCode (array_length = false)] GLfloat[] points);
	public static void glGetMapdv (GLenu target, GLenu query, [CCode (array_length = false)] GLdouble[] v);
	public static void glGetMapfv (GLenu target, GLenu query, [CCode (array_length = false)] GLfloat[] v);
	public static void glGetMapiv (GLenu target, GLenu query, [CCode (array_length = false)] GLint[] v);
	public static void glEvalCoord1d (GLdouble u);
	public static void glEvalCoord1f (GLfloat u);
	public static void glEvalCoord1dv ([CCode (array_length = false)] GLdouble[] u);
	public static void glEvalCoord1fv ([CCode (array_length = false)] GLfloat[] u);
	public static void glEvalCoord2d (GLdouble u, GLdouble v);
	public static void glEvalCoord2f (GLfloat u, GLfloat v);
	public static void glEvalCoord2dv ([CCode (array_length = false)] GLdouble[] u);
	public static void glEvalCoord2fv ([CCode (array_length = false)] GLfloat[] u);
	public static void glMapGrid1d (GLint un, GLdouble u1, GLdouble u2);
	public static void glMapGrid1f (GLint un, GLfloat u1, GLfloat u2);
	public static void glMapGrid2d (GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2);
	public static void glMapGrid2f (GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2);
	public static void glEvalPoint1 (GLint i);
	public static void glEvalPoint2 (GLint i, GLint j);
	public static void glEvalMesh1 (GLenu mode, GLint i1, GLint i2);
	public static void glEvalMesh2 (GLenu mode, GLint i1, GLint i2, GLint j1, GLint j2);

	// Fog
	public static void glFogf (GLenu pname, GLfloat param);
	public static void glFogi (GLenu pname, GLint param);
	public static void glFogfv (GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glFogiv (GLenu pname, [CCode (array_length = false)] GLint[] params);

	// Selection and Feedback
	public static void glFeedbackBuffer (GLsizei size, GLenu type, [CCode (array_length = false)] GLfloat[] buffer);
	public static void glPassThrough (GLfloat token);
	public static void glSelectBuffer (GLsizei size, [CCode (array_length = false)] GLuint[] buffer);
	public static void glInitNames ();
	public static void glLoadName (GLuint name);
	public static void glPushName (GLuint name);
	public static void glPopName ();
	
	// OpenGL 1.2
	public static void glDrawRangeElements (GLenu mode, GLuint start, GLuint end, GLsizei count, GLenu type, GLvoid* indices);
	public static void glTexImage3D (GLenu target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenu format, GLenu type, GLvoid* pixels);
	public static void glTexSubImage3D (GLenu target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenu format, GLenu type, GLvoid* pixels);
	public static void glCopyTexSubImage3D (GLenu target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height);
	
	// GL_ARB_imaging
	public static void glColorTable (GLenu target, GLenu internalformat, GLsizei width, GLenu format, GLenu type, GLvoid* table);
	public static void glColorSubTable (GLenu target, GLsizei start, GLsizei count, GLenu format, GLenu type, GLvoid* data);
	public static void glColorTableParameteriv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glColorTableParameterfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glCopyColorSubTable (GLenu target, GLsizei start, GLint x, GLint y, GLsizei width);
	public static void glCopyColorTable (GLenu target, GLenu internalformat, GLint x, GLint y, GLsizei width);
	public static void glGetColorTable (GLenu target, GLenu format, GLenu type, out GLvoid table);
	public static void glGetColorTableParameterfv (GLenu target, GLenu pname, out GLfloat params);
	public static void glGetColorTableParameteriv (GLenu target, GLenu pname, out GLint params);
	public static void glBlendEquation (GLenu mode);
	public static void glBlendColor (GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha);
	public static void glHistogram (GLenu target, GLsizei width, GLenu internalformat, GLboolean sink);
	public static void glResetHistogram (GLenu target);
	public static void glGetHistogram (GLenu target, GLboolean reset, GLenu format, GLenu type, out GLvoid values);
	public static void glGetHistogramParameterfv (GLenu target, GLenu pname, out GLfloat params);
	public static void glGetHistogramParameteriv (GLenu target, GLenu pname, out GLint params);
	public static void glMinmax (GLenu target, GLenu internalformat, GLboolean sink);
	public static void glResetMinmax (GLenu target);
	public static void glGetMinmax (GLenu target, GLboolean reset, GLenu format, GLenu types, out GLvoid values);
	public static void glGetMinmaxParameterfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetMinmaxParameteriv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glConvolutionFilter1D (GLenu target, GLenu internalformat, GLsizei width, GLenu format, GLenu type, GLvoid* image);
	public static void glConvolutionFilter2D (GLenu target, GLenu internalformat, GLsizei width, GLsizei height, GLenu format, GLenu type, GLvoid* image);
	public static void glConvolutionParameterf (GLenu target, GLenu pname, GLfloat params);
	public static void glConvolutionParameterfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glConvolutionParameteri (GLenu target, GLenu pname, GLint params);
	public static void glConvolutionParameteriv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glCopyConvolutionFilter1D (GLenu target, GLenu internalformat, GLint x, GLint y, GLsizei width);
	public static void glCopyConvolutionFilter2D (GLenu target, GLenu internalformat, GLint x, GLint y, GLsizei width, GLsizei height);
	public static void glGetConvolutionFilter (GLenu target, GLenu format, GLenu type, GLvoid *image);
	public static void glGetConvolutionParameterfv (GLenu target, GLenu pname, [CCode (array_length = false)] GLfloat[] params);
	public static void glGetConvolutionParameteriv (GLenu target, GLenu pname, [CCode (array_length = false)] GLint[] params);
	public static void glSeparableFilter2D (GLenu target, GLenu internalformat, GLsizei width, GLsizei height, GLenu format, GLenu type, GLvoid* row, GLvoid* column);
	public static void glGetSeparableFilter (GLenu target, GLenu format, GLenu type, out GLvoid row, out GLvoid column, out GLvoid span);

	//OpenGL 1.3
	public static void glActiveTexture (GLenu texture);
	public static void glClientActiveTexture (GLenu texture);
	public static void glCompressedTexImage1D (GLenu target, GLint level, GLenu internalformat, GLsizei width, GLint border, GLsizei imageSize, GLvoid* data);
	public static void glCompressedTexImage2D (GLenu target, GLint level, GLenu internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, GLvoid* data);
	public static void glCompressedTexImage3D (GLenu target, GLint level, GLenu internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, GLvoid* data);
	public static void glCompressedTexSubImage1D (GLenu target, GLint level, GLint xoffset, GLsizei width, GLenu format, GLsizei imageSize, GLvoid* data);
	public static void glCompressedTexSubImage2D (GLenu target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenu format, GLsizei imageSize, GLvoid* data);
	public static void glCompressedTexSubImage3D (GLenu target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenu format, GLsizei imageSize, GLvoid* data);
	public static void glGetCompressedTexImage (GLenu target, GLint lod, out GLvoid img);
	public static void glMultiTexCoord1d (GLenu target, GLdouble s);
	public static void glMultiTexCoord1dv (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord1f (GLenu target, GLfloat s);
	public static void glMultiTexCoord1fv (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord1i (GLenu target, GLint s);
	public static void glMultiTexCoord1iv (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord1s (GLenu target, GLshort s);
	public static void glMultiTexCoord1sv (GLenu target, [CCode (array_length = false)] GLshort[] v);
	public static void glMultiTexCoord2d (GLenu target, GLdouble s, GLdouble t);
	public static void glMultiTexCoord2dv (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord2f (GLenu target, GLfloat s, GLfloat t);
	public static void glMultiTexCoord2fv (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord2i (GLenu target, GLint s, GLint t);
	public static void glMultiTexCoord2iv (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord2s (GLenu target, GLshort s, GLshort t);
	public static void glMultiTexCoord2sv (GLenu target, [CCode (array_length = false)] GLshort[] v);
	public static void glMultiTexCoord3d (GLenu target, GLdouble s, GLdouble t, GLdouble r);
	public static void glMultiTexCoord3dv (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord3f (GLenu target, GLfloat s, GLfloat t, GLfloat r);
	public static void glMultiTexCoord3fv (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord3i (GLenu target, GLint s, GLint t, GLint r);
	public static void glMultiTexCoord3iv (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord3s (GLenu target, GLshort s, GLshort t, GLshort r);
	public static void glMultiTexCoord3sv (GLenu target, [CCode (array_length = false)] GLshort[] v);
	public static void glMultiTexCoord4d (GLenu target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
	public static void glMultiTexCoord4dv (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord4f (GLenu target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
	public static void glMultiTexCoord4fv (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord4i (GLenu target, GLint s, GLint t, GLint r, GLint q);
	public static void glMultiTexCoord4iv (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord4s (GLenu target, GLshort s, GLshort t, GLshort r, GLshort q);
	public static void glMultiTexCoord4sv (GLenu target, [CCode (array_length = false)] GLshort[] v);
	public static void glLoadTransposeMatrixd ([CCode (array_length = false)] GLdouble[] m);
	public static void glLoadTransposeMatrixf ([CCode (array_length = false)] GLfloat[] m);
	public static void glMultTransposeMatrixd ([CCode (array_length = false)] GLdouble[] m);
	public static void glMultTransposeMatrixf ([CCode (array_length = false)] GLfloat[] m);
	public static void glSampleCoverage (GLclampf @value, GLboolean invert);
	
	// GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
	public static void glActiveTextureARB (GLenu texture);
	public static void glClientActiveTextureARB (GLenu texture);
	public static void glMultiTexCoord1dARB (GLenu target, GLdouble s);
	public static void glMultiTexCoord1dvARB (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord1fARB (GLenu target, GLfloat s);
	public static void glMultiTexCoord1fvARB (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord1iARB (GLenu target, GLint s);
	public static void glMultiTexCoord1ivARB (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord1sARB (GLenu target, GLshort s);
	public static void glMultiTexCoord1svARB (GLenu target, [CCode (array_length = false)] GLshort[] v);
	public static void glMultiTexCoord2dARB (GLenu target, GLdouble s, GLdouble t);
	public static void glMultiTexCoord2dvARB (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord2fARB (GLenu target, GLfloat s, GLfloat t);
	public static void glMultiTexCoord2fvARB (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord2iARB (GLenu target, GLint s, GLint t);
	public static void glMultiTexCoord2ivARB (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord2sARB (GLenu target, GLshort s, GLshort t);
	public static void glMultiTexCoord2svARB (GLenu target, [CCode (array_length = false)] GLshort[] v);
	public static void glMultiTexCoord3dARB (GLenu target, GLdouble s, GLdouble t, GLdouble r);
	public static void glMultiTexCoord3dvARB (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord3fARB (GLenu target, GLfloat s, GLfloat t, GLfloat r);
	public static void glMultiTexCoord3fvARB (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord3iARB (GLenu target, GLint s, GLint t, GLint r);
	public static void glMultiTexCoord3ivARB (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord3sARB (GLenu target, GLshort s, GLshort t, GLshort r);
	public static void glMultiTexCoord3svARB (GLenu target, [CCode (array_length = false)] GLshort[] v);
	public static void glMultiTexCoord4dARB (GLenu target, GLdouble s, GLdouble t, GLdouble r, GLdouble q);
	public static void glMultiTexCoord4dvARB (GLenu target, [CCode (array_length = false)] GLdouble[] v);
	public static void glMultiTexCoord4fARB (GLenu target, GLfloat s, GLfloat t, GLfloat r, GLfloat q);
	public static void glMultiTexCoord4fvARB (GLenu target, [CCode (array_length = false)] GLfloat[] v);
	public static void glMultiTexCoord4iARB (GLenu target, GLint s, GLint t, GLint r, GLint q);
	public static void glMultiTexCoord4ivARB (GLenu target, [CCode (array_length = false)] GLint[] v);
	public static void glMultiTexCoord4sARB (GLenu target, GLshort s, GLshort t, GLshort r, GLshort q);
	public static void glMultiTexCoord4svARB (GLenu target, [CCode (array_length = false)] GLshort[] v);


	// COrange SDL_local.h values
	
	[CCode (cname="GLchar")]
	public struct GLchar : char { }
	[CCode (cname="GLsizeiptr")]
	public struct GLsizeiptr : size_t { }

	public static GLuint glCreateShader( GLenu type );
	public static GLuint glCreateProgram( );
	public static void glShaderSource( GLuint shader, GLsizei count, GLchar** string, GLint* length );
	public static void glCompileShader( GLuint shader );
	public static void glGetShaderInfoLog( GLuint shader, GLsizei bufsize,GLsizei* length, GLchar* infolog );
	public static void glAttachShader( GLuint program, GLuint shader );
	public static void glLinkProgram( GLuint program );
	public static void glGetProgramInfoLog( GLuint program, GLsizei bufsize,GLsizei* length, GLchar* infolog );
	public static GLboolean glIsProgram( GLuint program );
	public static GLboolean glIsShader( GLuint shader );
	public static void glGetAttachedShaders(GLuint program, GLsizei maxCount, GLsizei* count, GLuint* shaders);
	public static GLint glGetUniformLocation( GLuint program, GLchar* name );
	//  public static void glActiveTexture( GLenu texture );
	public static void glUniform1f( GLint location, GLfloat x );
	public static void glUniform1i( GLint location, GLint x );
	public static void glDeleteShader( GLuint shader );
	public static void glDeleteProgram( GLuint program );
	public static void glUseProgram( GLuint program );
	public static void glVertexAttribPointer( GLuint indx, GLint size, GLenu type,GLboolean normalized, GLsizei stride, GLvoid* ptr );
	public static void glVertexAttribDivisor( GLuint indx, GLuint divisor );
	public static void glEnableVertexAttribArray( GLuint index );
	public static void glDisableVertexAttribArray( GLuint index );
	public static void glUniform2f( GLint location, GLfloat x, GLfloat y);
	public static void glUniform3f( GLint location, GLfloat x, GLfloat y, GLfloat z);
	public static void glUniform4f( GLint location, GLfloat x, GLfloat y, GLfloat z, GLfloat w );
	public static void glUniformMatrix3fv( GLint location, GLsizei count,GLboolean transpose, GLfloat* value );
	public static void glUniformMatrix4fv( GLint location, GLsizei count,GLboolean transpose, GLfloat* value );
	public static void glUniform1fv( GLint location, GLsizei count, GLfloat* value );
	public static void glUniform2fv( GLint location, GLsizei count, GLfloat* value );
	public static void glUniform3fv( GLint location, GLsizei count, GLfloat* value );
	public static void glUniform4fv( GLint location, GLsizei count, GLfloat* value );
	public static void glGetShaderiv( GLuint shader, GLenu pname, GLint* params );
	public static void glGetProgramiv( GLuint program, GLenu pname, GLint* params );
	public static void glProgramParameteri( GLuint program, GLenu pname, GLint value );
	public static void glBindAttribLocation( GLuint program, GLuint index, GLchar* name );
	public static void glGenFramebuffers( GLsizei n, GLuint* ids );
	public static void glBindFramebuffer( GLenu target, GLuint framebuffer );
	public static void glBlitFramebuffer( GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenu filter);
	public static void glFramebufferTexture( GLenu target, GLenu attachment, GLuint texture, GLint level );
	public static void glFramebufferTexture2D( GLenu target, GLenu attachment, GLenu textarget, GLuint texture, GLint level );
	public static void glDeleteFramebuffers( GLsizei n, GLuint* framebuffers );
	public static GLenu glCheckFramebufferStatus( GLenu target );
	public static void glGenBuffers( GLsizei n, GLuint* buffers );
	public static void glGenRenderbuffers( GLsizei n, GLuint* buffers );
	public static void glDeleteBuffers( GLsizei n, GLuint* buffers );
	public static void glDeleteRenderbuffers( GLsizei n, GLuint* buffers );
	public static void glBindBuffer( GLenu target, GLuint buffer );
	public static void glBindRenderbuffer( GLenu target, GLuint buffer );
	public static void glBufferData( GLenu target, GLsizeiptr size, GLvoid* data, GLenu usage );
	//  public static void glGetBufferSubData( GLenu target, GLintptr offset, GLsizeiptr size, GLvoid* data);
	public static void glGetBufferSubData( GLenu target, GLint* offset, GLsizeiptr size, GLvoid* data);
	public static void glFramebufferRenderbuffer( GLenu target, GLenu attachment, GLenu renderbuffertarget, GLuint renderbuffer );
	public static GLint glGetAttribLocation( GLuint program, GLchar* name );
	public static void glRenderbufferStorage( GLenu target, GLenu format, GLsizei width, GLsizei height);
	public static void glRenderbufferStorageMultisample( GLenu target, GLuint samples, GLenu format, GLsizei width, GLsizei height);
	public static void GLDRAWglDrawBuffersBUFFERS(GLsizei n, GLenu* buffers);
	public static void glGenerateMipmap(GLenu target);
	//  public static void glCompressedTexImage2D(GLenu target, GLint level, GLenu format, GLsizei width, GLsizei height, GLint border, GLsizei imagesize, GLvoid* data);
	//  public static void glTexImage3D(GLenu target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenu format, GLenu type, GLvoid* data);
	public static void glDrawElementsInstanced(GLenu mode, GLsizei count, GLenu type, void* indicies, GLsizei primcount);
	public static void glPatchParameteri(GLenu pname, GLint value);
	public static void glPatchParameterfv(GLenu pname, GLfloat* values);
	
	public static void glBrokenExtension();

	//  public const GLenu GL_TABLE_TOO_LARGE; //0x8031
	public const GLenu GL_INVALID_FRAMEBUFFER_OPERATION; //0x0506
	
	public const GLenu GL_SHADING_LANGUAGE_VERSION; //0x8B8C
	
	public const GLenu GL_VERTEX_SHADER; //0x8B31
	public const GLenu GL_FRAGMENT_SHADER; //0x8B30
	public const GLenu GL_GEOMETRY_SHADER; //0x8DD9
	public const GLenu GL_COMPILE_STATUS; //0x8B81
	public const GLenu GL_LINK_STATUS; //0x8B82
	
	public const GLenu GL_GEOMETRY_VERTICES_OUT; //0x8DDA
	public const GLenu GL_GEOMETRY_INPUT_TYPE; //0x8DDB
	public const GLenu GL_GEOMETRY_OUTPUT_TYPE; //0x8DDC
	public const GLenu GL_MAX_GEOMETRY_OUTPUT_VERTICES; //0x8DE0
	public const GLenu GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS; //0x8DE1
	
	public const GLenu GL_FRAMEBUFFER; //0x8D40
	public const GLenu GL_RENDERBUFFER; //0x8D41
	public const GLenu GL_READ_FRAMEBUFFER; //0x8CA8
	public const GLenu GL_DRAW_FRAMEBUFFER; //0x8CA9
	public const GLenu GL_ARRAY_BUFFER; //0x8892
	public const GLenu GL_ELEMENT_ARRAY_BUFFER; //0x8893
	
	public const GLenu GL_FRAMEBUFFER_COMPLETE; //0x8CD5
	public const GLenu GL_FRAMEBUFFER_UNDEFINED; //0x8219
	public const GLenu GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT; //0x8CD6
	public const GLenu GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT; //0x8CD7
	public const GLenu GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER; //0x8CDB
	public const GLenu GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER; //0x8CDC
	public const GLenu GL_FRAMEBUFFER_UNSUPPORTED; //0x8CDD
	public const GLenu GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE; //0x8D56
	public const GLenu GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS; //0x8DA8
	
	public const GLenu GL_STATIC_DRAW; //0x88E4
	public const GLenu GL_DYNAMIC_COPY; //0x88EA
	
	public const GLenu GL_MAX_COLOR_ATTACHMENTS; //0x8CDF
	public const GLenu GL_COLOR_ATTACHMENT0; //0x8CE0
	public const GLenu GL_COLOR_ATTACHMENT1; //0x8CE1
	public const GLenu GL_COLOR_ATTACHMENT2; //0x8CE2
	public const GLenu GL_COLOR_ATTACHMENT3; //0x8CE3
	public const GLenu GL_COLOR_ATTACHMENT4; //0x8CE4
	public const GLenu GL_COLOR_ATTACHMENT5; //0x8CE5
	public const GLenu GL_COLOR_ATTACHMENT6; //0x8CE6
	public const GLenu GL_COLOR_ATTACHMENT7; //0x8CE7
	public const GLenu GL_COLOR_ATTACHMENT8; //0x8CE8
	public const GLenu GL_COLOR_ATTACHMENT9; //0x8CE9
	public const GLenu GL_COLOR_ATTACHMENT10; //0x8CEA
	public const GLenu GL_COLOR_ATTACHMENT11; //0x8CEB
	public const GLenu GL_COLOR_ATTACHMENT12; //0x8CEC
	public const GLenu GL_COLOR_ATTACHMENT13; //0x8CED
	public const GLenu GL_COLOR_ATTACHMENT14; //0x8CEE
	public const GLenu GL_COLOR_ATTACHMENT15; //0x8CEF
	public const GLenu GL_DEPTH_ATTACHMENT; //0x8D00
	public const GLenu GL_STENCIL_ATTACHMENT; //0x8D20
	
	public const GLenu GL_RGBA32F; //0x8814
	public const GLenu GL_RGBA16F; //0x881A
	//  public const GLenu GL_BGRA; //0x80E1
	//  public const GLenu GL_BGR; //0x80E0
	public const GLenu GL_COMPRESSED_RGBA_S3TC_DXT1; //0x83F1
	public const GLenu GL_COMPRESSED_RGBA_S3TC_DXT3; //0x83F2
	public const GLenu GL_COMPRESSED_RGBA_S3TC_DXT5; //0x83F3
	
	//  public const GLenu GL_UNSIGNED_SHORT_1_5_5_5_REV; //0x8366
	//  public const GLenu GL_UNSIGNED_SHORT_5_6_5; //0x8363
	public const GLenu GL_DEPTH_COMPONENT24; //0x81A6
	
	//  public const GLenu GL_CLAMP_TO_EDGE; //0x812F
	//  public const GLenu GL_TEXTURE_WRAP_R; //0x8072
	public const GLenu GL_MIRRORED_REPEAT; //0x8370
	//  public const GLenu GL_TEXTURE_DEPTH; //0x8071
	public const GLenu GL_TEXTURE_MAX_ANISOTROPY; //0x84FE
	public const GLenu GL_MAX_TEXTURE_MAX_ANISOTROPY; //0x84FF
	public const GLenu GL_GENERATE_MIPMAP; //0x8191
	//  public const GLenu GL_TEXTURE_MAX_LEVEL; //0x813D
	
	//  public const GLenu GL_TEXTURE0; //0x84C0
	//  public const GLenu GL_TEXTURE_3D; //0x806F
	public const GLenu GL_TEXTURE_CUBE_MAP_SEAMLESS; //0x884F
	
	//  public const GLenu GL_MULTISAMPLE; //0x809D
	
	public const GLenu GL_TESS_CONTROL_SHADER; //0x8E88
	public const GLenu GL_TESS_EVALUATION_SHADER; //0x8E87
	public const GLenu GL_PATCH_VERTICES; //0x8E72

	public static void glProlog(COrange.Vec2? position=null, GLdouble nearVal=-1, GLdouble farVal=1) 
	{
		glMatrixMode(GL_PROJECTION);
		glPushMatrix();
		glLoadIdentity();
		
		if (position == null) {
		  glOrtho(0, 
				COrange.Graphics.viewport_width(), 
				0, 
				COrange.Graphics.viewport_height(), 
				nearVal, farVal);
		} else {
		  glOrtho(position.x - COrange.Graphics.viewport_width() / 2, 
				position.x + COrange.Graphics.viewport_width() / 2,
				-position.y + COrange.Graphics.viewport_height() / 2,
				-position.y - COrange.Graphics.viewport_height() / 2,
				nearVal, farVal);
		}
		
		glMatrixMode(GL_MODELVIEW);
		glPushMatrix();
		glLoadIdentity();
		
		glEnable(GL_TEXTURE_2D);
		
		glEnable(GL_BLEND);
		glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
	  
	}
	  
	public static void glEpilog() 
	{
		glDisable(GL_BLEND);
		glDisable(GL_TEXTURE_2D);  
		
		glMatrixMode(GL_PROJECTION);
		glPopMatrix();
		
		glMatrixMode(GL_MODELVIEW);
		glPopMatrix();
	}
}
//      /*-------------------------------------------------------------------------
//       * Data type definitions
//       *-----------------------------------------------------------------------*/
//  	[SimpleType]
//  	public struct GLuint : uint {}
//  	[SimpleType]
//  	public struct GLenu : int {}
//  	[SimpleType]
//  	public struct GLint : int32 {}
//      [SimpleType]
//      public struct GLsizei: int {}




//  	// Transformation
//  	public static void glMatrixMode (GLenu mode);

//  	// Matrix Mode
//  	public const GLenu GL_MATRIX_MODE;
//  	public const GLenu GL_MODELVIEW;
//  	public const GLenu GL_PROJECTION;
//  	public const GLenu GL_TEXTURE;
	
	
//  }

[Version (since = "0.8.0")]
[CCode (cprefix = "", lower_case_cprefix = "", cheader_filename = "corange.h")]
namespace COrange {

	[CCode (cname = "override_free")]
	public static void override_free(void* o) {}
	
	[CCode (cname = "SDL_RWreadline")]
	public int SDL_RWreadline(SDL.RWops* file, char* buffer, int buffersize);


	[CCode (cname = "corange_init")]
	public static void preload (string core_assets_path);

	[CCode (cname = "corange_finish")]
	public static void finish();

	[SimpleType]
	public struct type_id : int {}

	// base pseudo class for void* based objects
	[SimpleType]
	[CCode (cname = "CObject")]
	public struct CObject {}

	[SimpleType]
	[CCode (cname = "CObject")]
	public struct CCObject {}

	public int type_find(string type, size_t size);

	[SimpleType]
	[CCode (cname = "fpath")]
	public struct FPath {
		[CCode (cname = "ptr", array_null_terminated = true)]
		public char ptr[512];
		[CCode (cname = "P")]
		public FPath (string path);
		[CCode (cname = "fpath_full")]
		public FPath full();
		[CCode (cname = "fpath_file")]
		public FPath file();
		[CCode (cname = "fpath_file_location")]
		public FPath location();
		[CCode (cname = "fpath_file_extension")]
		public FPath extension();
		public unowned string to_string() {
			return (string)this.ptr;
		}
	}
	
	[SimpleType]
	[CCode (cname = "asset_hndl", cprefix="")]
	public struct AssetHandle {
		[CCode (cname = "path")]
		FPath _path;
		[CCode (cname = "ptr")]
		CObject _ptr;
		uint32 timestamp;

		[CCode (cname = "asset_hndl_new")]
		public AssetHandle(FPath path);
		[CCode (cname = "asset_hndl_null")]
		public static AssetHandle Null();
		[CCode (cname = "asset_hndl_new_load")]
		public static AssetHandle Load(FPath path);
		[CCode (cname = "asset_hndl_new_ptr")]
		public static AssetHandle Ptr(CObject as);
		[CCode (cname = "asset_hndl_isnull")]
		public bool isnull();
		[CCode (cname = "asset_hndl_path")]
		public FPath path();
		[CCode (cname = "asset_hndl_ptr")]
		public void* ptr();
		[CCode (cname = "asset_hndl_equal")]
		public bool equal(AssetHandle other);
	}

	public void asset_cache_flush();
	public void asset_init();
	public void asset_finish();
	public void asset_add_path_variable(FPath variable, FPath mapping);
	public FPath asset_map_filename(FPath filename);
	public FPath asset_unmap_filename(FPath filename);

	public void file_load(FPath filename);
	public void file_unload(FPath filename);
	public void file_reload(FPath filename);
	public bool file_isloaded(FPath path);
	public bool file_exists(FPath path);
	
	public void folder_load(FPath folder);
	public void folder_unload(FPath folder);
	public void folder_reload(FPath folder);
	public void folder_load_recursive(FPath folder);
		
	[CCode (has_target = false)]
	public delegate CObject AssetLoader(string filenanme);
	[CCode (has_target = false)]
	public delegate void AssetDeleter(CObject asset);
	
	public CObject asset_get_load(FPath path);
	[CCode (cname = "asset_get")]
	public CObject asset_get(FPath path);
	[CCode (cname = "asset_get_as_type")]
	public CObject asset_get_as(FPath path, type_id type);
	public void asset_reload_type_id(type_id type);
	public void asset_reload_all();
	[CCode(cname = "asset_handler_cast")]
	public void asset_handler(int type, string extension, AssetLoader funca, AssetDeleter funcd);
	public unowned string asset_ptr_path(CObject asset);
	public unowned string asset_ptr_typename(CObject asset);

	[SimpleType]
	[CCode (cname = "CObject", cprefix="")]
	public struct Sound {
		[CCode (cname = "audio_sound_play")]
		public static void play(CObject s, int loops=0);
		[CCode (cname = "audio_sound_pause")]
		public static void pause();
		[CCode (cname = "audio_sound_resume")]
		public static void resume();
		[CCode (cname = "audio_sound_stop")]
		public static void stop();
	}
	
	[SimpleType]
	[CCode (cname = "CObject", cprefix="")]
	public struct Music {
		[CCode (cname = "audio_music_play")]
		public static void play(assets.Music m);
		[CCode (cname = "audio_music_pause")]
		public static void pause();
		[CCode (cname = "audio_music_resume")]
		public static void resume();
		[CCode (cname = "audio_music_stop")]
		public static void stop();
	}
	public void audio_init();
	public void audio_finish();

	public int audio_sound_play(CObject s, int loops);
	public void audio_sound_pause(int channel);
	public void audio_sound_resume(int channel);
	public void audio_sound_stop(int channel);

	public void audio_music_play(assets.Music m);
	public void audio_music_pause();
	public void audio_music_resume();
	public void audio_music_stop();

	public void audio_music_set_volume(float volume);
	public float audio_music_get_volume();

	[CCode (has_target = false)]
	public delegate CObject EntityNew();

	[CCode (has_target = false)]
	public delegate void EntityDel(CObject entity);


	[SimpleType]
	[CCode (cname = "CObject", cprefix="")]
	public struct Folder {
		[CCode (cname = "folder_load")]
		public static void load(FPath folder);
		[CCode (cname = "folder_unload")]
		public static void unload(FPath folder);
		[CCode (cname = "folder_reload")]
		public static void reload(FPath folder);
		[CCode (cname = "assetfolder_load_recursive_get_load")]
		public static void load_recursive(FPath folder);
	}

	[SimpleType]
	[CCode (cname = "CObject", cprefix="")]
	public struct Asset {
		[CCode (cname = "asset_get_load")]
		public static CObject load(FPath path);
		[CCode (cname = "asset_get")]
		public static CObject get(FPath path);
		[CCode (cname = "asset_get_as_type")]
		public static CObject as(FPath path, type_id type);
		[CCode (cname = "asset_reload_type_id")]
		public static void reload_type_id(type_id type);
		[CCode (cname = "reload_all")]
		public static void asset_reload_all();
		[CCode(cname = "asset_handler_cast")]
		public static void handler(int type, string extension, AssetLoader funca, AssetDeleter funcd);
		[CCode (cname = "asset_ptr_path")]
		public static unowned string ptr_path(CObject asset);
		[CCode (cname = "asset_ptr_typename")]
		public static unowned string ptr_typename(CObject asset);
	}

	[SimpleType]
	[CCode (cname = "CObject", cprefix="")]
	public struct Entity {
		[CCode (cname = "entity_new_type_id")]
		public Entity (string fmt, type_id id, ...);

		[CCode (cname = "entity_get")]
		public static Entity get(string fmt, ...);
		[CCode (cname = "entity_get_as_type_id")]
		public static Entity as(string fmt, type_id id, ...);
		[CCode (cname = "entity_handler_cast")]
		public static void handler(int type_id, EntityNew entity_new, EntityDel entity_del);
		[CCode (cname = "entity_name")]
		public static unowned string name(CObject* e);
		[CCode (cname = "entity_delete")]
		public static void delete(char* fmt, ...);
		[CCode (cname = "entity_type_count_type_id")]
		public static int count(type_id id);
		[CCode (cname = "entities_get_type_id")]
		public static void array(CObject* result, out int count, type_id id);

	}
	[SimpleType]
	[CCode (cname = "CObject", cprefix="")]
	public struct Entities {
		[CCode (cname = "entities_new_type_id")]
		public static void create(string name_format, int count, type_id id);
		[CCode (cname = "entities_get_type_id")]
		public static void get(CObject* result, out int count, type_id id);
	
	}

	[CCode (cname = "entity_handler_cast")]
	public void entity_handler(int type_id, EntityNew entity_new, EntityDel entity_del);

	[CCode (cname = "entity_new_type_id")]
	public CObject entity_new(string fmt, type_id id, ...);
	
	[CCode (cname = "entities_new_type_id")]
	public void entities_new(string name_format, int count, type_id id);

	[CCode (cname = "entities_get_type_id")]
	public void entities_get(CObject* result, out int count, type_id id);

	[CCode (cname = "entity_get")]
	public CObject entity_get(string fmt, ...);

	[CCode (cname = "entity_get_as_type_id")]
	public CObject entity_get_as(string fmt, type_id id, ...);

	[CCode (cname = "entity_name")]
	public unowned string entity_name(CObject* e);

	[CCode (cname = "entity_delete")]
	public void entity_delete(char* fmt, ...);

	[CCode (cname = "entity_type_count_type_id")]
	public int entity_type_count(type_id id);

	public FPath timestamp(string outs);

	[CCode (has_target = false)]
	public delegate void ErrorFunc (string message);

	[CCode (has_target = false)]
	public delegate void WarnFunc (string message);
	
	[CCode (has_target = false)]
	public delegate void DebugFunc (string message);

	public void at_error(ErrorFunc func);
	public void at_warning(WarnFunc func);
	public void at_debug(DebugFunc func);

	[SimpleType]
	[CCode (cname = "timer")]
	public struct Timer {
		public int id;
		[CCode (cname = "start")]
		public ulong _start;
		[CCode (cname = "end")]
		public ulong _end;
		[CCode (cname = "split")]
		public ulong _split;
		[CCode (cname = "timer_start")]
		public Timer(int id, string tag);
		[CCode (cname = "timer_split")]
		public Timer split(string tag);
		[CCode (cname = "timer_stop")]
		public Timer end(string tag);
	}

	[SimpleType]
	[CCode (cname = "CObject", cprefix="")]
	public struct Frame {
		[CCode (cname = "frame_begin")]
		public static void begin();
		[CCode (cname = "frame_end")]
		public static void end();
		[CCode (cname = "frame_time")]
		public static double time();
		[CCode (cname = "frame_rate")]
		public static double rate();
	}
//  public void timestamp(string outs);
	public void frame_begin();
	public void frame_end();
	public double frame_rate();
	public double frame_time();
	public unowned string frame_rate_string();
	public int rawcast(float x);
	public float max(float x, float y);
	public float min(float x, float y);
	public float clamp(float x, float bottom, float top);
	public bool between(float x, float bottom, float top);
	public bool between_or(float x, float bottom, float top);
	public float saturate(float x);
	public float lerp(float p1, float p2, float amount);
	public float smoothstep(float p1, float p2, float amount);
	public float smootherstep(float p1, float p2, float amount);
	public float cosine_interp(float p1, float p2, float amount);
	public float nearest_interp(float p1, float p2, float amount);
	public float cubic_interp(float p1, float p2, float p3, float p4, float amount);
	public float binearest_interp(float tl, float tr, float bl, float br, float x_amount, float y_amount);
	public float bilinear_interp(float tl, float tr, float bl, float br, float x_amount, float y_amount);
	public float bicosine_interp(float tl, float tr, float bl, float br, float x_amount, float y_amount);
	public float bismoothstep_interp(float tl, float tr, float bl, float br, float x_amount, float y_amount);
	public float bismootherstep_interp(float tl, float tr, float bl, float br, float x_amount, float y_amount);

	[SimpleType]
	[CCode (cname = "vec2")]
	public struct Vec2 {
		public float x;
		public float y;

		[CCode (cname = "vec2_new")]
		public Vec2 (float x, float y);
		public static Vec2 zero();
		public static Vec2 one();
		
		public Vec2 add(Vec2 other);
		public Vec2 sub(Vec2 other);
		public Vec2 mul(float fac);
		public Vec2 mul_vec2(Vec2 other);
		public Vec2 div(float fac);
		public Vec2 div_vec2(Vec2 other);
		public Vec2 pow(float exp);
		public Vec2 neg();
		public Vec2 abs();
		public Vec2 floor();
		public Vec2 fmod(float val);
		
		public Vec2 max(float x);
		public Vec2 min(float x);
		public Vec2 clamp(float b, float t);
		
		public bool equ(Vec2 other);
		
		public float dot(Vec2 other);
		public float length_sqrd();
		public float length();
		public float dist_sqrd(Vec2 other);
		public float dist(Vec2 other);
		public float dist_manhattan(Vec2 other);
		public Vec2 normalize();
		
		public Vec2 reflect(Vec2 other);
		
		public Vec2 from_string(string s);
		public void print();
		
		public void to_array(ref float result);
		
		public int hash();
		public int mix_hash();
		
		public Vec2 saturate();
		public Vec2 lerp(Vec2 other, float amount);
		public Vec2 smoothstep(Vec2 other, float amount);
		public Vec2 smootherstep(Vec2 other, float amount);
				
	}

	[SimpleType]
	[CCode (cname = "vec3")]
	public struct Vec3 {
		public float x;
		public float y;
		public float z;

		[CCode (cname = "vec3_new")]
		public Vec3 (float x, float y, float z);
		public Vec3 zero();
		public Vec3 one();
		public Vec3 up();
		
		public Vec3 red();
		public Vec3 green();
		public Vec3 blue();
		public Vec3 white();
		public Vec3 black();
		public Vec3 grey();
		public Vec3 light_grey();
		public Vec3 dark_grey();
		
		public Vec3 add(Vec3 other);
		public Vec3 sub(Vec3 other);
		public Vec3 mul(float fac);
		public Vec3 mul_vec3(Vec3 other);
		public Vec3 div(float fac);
		public Vec3 div_vec3(Vec3 other);
		public Vec3 pow(float fac);
		public Vec3 neg();
		public Vec3 abs();
		public Vec3 floor();
		public Vec3 fmod(float val);
		
		public bool equ(Vec3 other);
		public bool neq(Vec3 other);
		
		public float dot(Vec3 other);
		public float length_sqrd();
		public float length();
		public float dist_sqrd(Vec3 other);
		public float dist(Vec3 other);
		public float dist_manhattan(Vec3 other);
		public Vec3 cross(Vec3 other);
		public Vec3 normalize();
		
		public Vec3 reflect(Vec3 other);
		public Vec3 project(Vec3 other);
		
		public Vec3 from_string(string s);
		public void print();
		
		public void to_array(ref float result);
		
		public int hash();
		
		public Vec3 saturate();
		public Vec3 lerp(Vec3 other, float amount);
		public Vec3 smoothstep(Vec3 other, float amount);
		public Vec3 smootherstep(Vec3 other, float amount);
				
	}

	[SimpleType]
	[CCode (cname = "vec4")]
	public struct Vec4 {
		public float x;
		public float y;
		public float z;
		public float w;

		[CCode (cname = "vec4_new")]
		public Vec4 (float x, float y, float z, float w);
		public static Vec4 zero();
		public static Vec4 one();
		
		public static Vec4 red();
		public static Vec4 green();
		public static Vec4 blue();
		public static Vec4 white();
		public static Vec4 black();
		public static Vec4 grey();
		public static Vec4 light_grey();
		public static Vec4 dark_grey();
		
		public Vec4 add(Vec4 v2);
		public Vec4 sub(Vec4 v2);
		public Vec4 mul(float fac);
		public Vec4 mul_vec4(Vec4 v2);
		public Vec4 div(float fac);
		public Vec4 pow(float fac);
		public Vec4 neg();
		public Vec4 abs();
		public Vec4 floor();
		public Vec4 fmod(float val);
		public Vec4 sqrt();
		
		public Vec4 max(Vec4 v2);
		public Vec4 min(Vec4 v2);
		public bool equ(Vec4 v2);
		
		public float dot(Vec4 v2);
		public float length_sqrd();
		public float length();
		public float dist_sqrd(Vec4 v2);
		public float dist(Vec4 v2);
		public float dist_manhattan(Vec4 v2);
		public Vec4 normalize();
		
		public Vec4 reflect(Vec4 v2);
		
		public Vec4 from_string(string s);
		public void print();
		
		public void to_array(ref float result);
		
		public Vec4 vec3_to_homogeneous(Vec3 v);
		public Vec3 from_homogeneous();
		
		public int hash();
		
		public Vec4 saturate();
		public Vec4 lerp(Vec4 v2, float amount);
		public Vec4 smoothstep(Vec4 v2, float amount);
		public Vec4 smootherstep(Vec4 v2, float amount);
		public Vec4 nearest_interp(Vec4 v2, float amount);
		
		public Vec4 binearest_interp(Vec4 top_left, Vec4 top_right, Vec4 bottom_left, Vec4 bottom_right, float x_amount, float y_amount);
		public Vec4 bilinear_interp(Vec4 top_left, Vec4 top_right, Vec4 bottom_left, Vec4 bottom_right, float x_amount, float y_amount);
				
	}
		
	[SimpleType]
	[CCode (cname = "quat")]
	public struct Quat {
		public float x;
		public float y;
		public float z;
		public float w;

		[CCode (cname = "quat_new")]
		public Quat (float x, float y, float z, float w);
		public static Quat id();
		public static Quat from_euler(Vec3 r);
		public static Quat angle_axis(float angle, Vec3 axis);
		public static Quat rotation_x(float angle);
		public static Quat rotation_y(float angle);
		public static Quat rotation_z(float angle);
		
		public float at(int i);
		public float real();
		public Vec3 imaginaries();
		
		public void to_angle_axis(ref Vec3 axis, ref float angle);
		public Vec3 to_euler();
		
		public Quat neg();
		public float dot(Quat other);
		public Quat scale(float f);
		public Quat mul_quat(Quat other);
		public Vec3 mul_vec3(Vec3 v);
		
		public Quat inverse();
		public Quat unit_inverse();
		public float length();
		public Quat normalize();
		
		public Quat exp(Vec3 w);
		public Vec3 log();
		
		public Quat slerp(Quat other, float amount);
		
		public Quat constrain(Vec3 axis);
		public Quat constrain_y();
		
		public float distance(Quat other);
		public Quat interpolate(ref Quat other, ref float ws, int count);
		
				
	}
	
	[SimpleType]
	[CCode (cname = "quat_dual")]
	public struct QuatDual {
		public Quat real;
		public Quat dual;

		[CCode (cname = "quat_new")]
		public QuatDual (QuatDual real, QuatDual dual);
		public static QuatDual id();
		public static QuatDual transform(Quat q, Vec3 t);
		public QuatDual mul(QuatDual q1);
		public Vec3 mul_vec3(Vec3 v);
		public Vec3 mul_vec3_rot(Vec3 v);
				
	}
	
	[SimpleType]
	[CCode (cname = "mat2")]
	public struct Mat2 {
		public float xx; 
		public float xy;
		public float yx; 
		public float yy;

		[CCode (cname = "mat2_new")]
		public Mat2 (float xx, float xy, float yx, float yy);
		public static Mat2 id();
		public static Mat2 zero();
		public Mat2 mul_mat2(Mat2 other);
		public Vec2 mul_vec2(Vec2 other);
		
		public Mat2 transpose();
		public float det();
		public Mat2 inverse();
		
		public void to_array(ref float result);
		public void print();
		public Mat2 rotation(float a);
	}


	[SimpleType]
	[CCode (cname = "mat3")]
	public struct Mat3 {
		public float xx; 
		public float xy; 
		public float xz;
		public float yx; 
		public float yy; 
		public float yz;
		public float zx; 
		public float zy; 
		public float zz;

		[CCode (cname = "mat3_new")]
		public Mat3 (float xx, float xy, float xz,
					float yx, float yy, float yz,
					float zx, float zy, float zz);
		public static Mat3 id();
		public static Mat3 zero();
		public static Mat3 scale(Vec3 s);
		public static Mat3 rotation_x(float a);
		public static Mat3 rotation_y(float a);
		public static Mat3 rotation_z(float a);
		public static Mat3 rotation_angle_axis(float angle, Vec3 axis);

		public Mat3 mul_mat3(Mat3 other);
		public Vec3 mul_vec3(Vec3 other);
		
		public Mat3 transpose();
		public float det();
		public Mat3 inverse();
		
		public void to_array(ref float result);
		public void print();
	}

	[SimpleType]
	[CCode (cname = "mat4")]
	public struct Mat4 {
		public float xx; 
		public float xy; 
		public float xz; 
		public float xw;
		public float yx; 
		public float yy; 
		public float yz; 
		public float yw;
		public float zx; 
		public float zy; 
		public float zz; 
		public float zw;
		public float wx; 
		public float wy; 
		public float wz; 
		public float ww;

		[CCode (cname = "mat4_new")]
		public Mat4 (float xx, float xy, float xz, float xw,
					float yx, float yy, float yz, float yw,
					float zx, float zy, float zz, float zw,
					float wx, float wy, float wz, float ww);

		public static Mat4 id();
		public static Mat4 zero();
		public float at(int i, int j);
		public Mat4 set(int x, int y, float v);
		public Mat4 transpose();
		
		public Mat4 mul_mat4(Mat4 other);
		
		public Vec4 mul_vec4(Vec4 v);
		public Vec3 mul_vec3(Vec3 v);
		
		public float det();
		public Mat4 inverse();
		
		public static Mat4 mat3_to_mat4(Mat3 m);
		public Mat3 to_mat3();
		public Quat to_quat();
		public QuatDual to_quat_dual();
		
		public void to_array(ref float result);
		public void to_array_trans(ref float result);
		
		public void print();
		
		public static Mat4 translation(Vec3 v);
		public static Mat4 scale(Vec3 v);
		
		public static Mat4 rotation_x(float a);
		public static Mat4 rotation_y(float a);
		public static Mat4 rotation_z(float a);
		public static Mat4 rotation_axis_angle(Vec3 axis, float angle);
		
		public static Mat4 rotation_euler(float x, float y, float z);
		public static Mat4 rotation_quat(Quat q);
		public static Mat4 rotation_quat_dual(QuatDual q);
		
		public static Mat4 view_look_at(Vec3 position, Vec3 target, Vec3 up);
		public static Mat4 perspective(float fov, float near_clip, float far_clip, float ratio);
		public static Mat4 orthographic(float left, float right, float bottom, float top, float near, float far);
		
		public static Mat4 world(Vec3 position, Vec3 scale, Quat rotation);
		
		public Mat4 lerp(Mat4 other, float amount);
		public Mat4 smoothstep(Mat4 other, float amount);
															
	}

	[SimpleType]
	[CCode (cname = "plane")]
	public struct Plane {
		public Vec3 direction;
		public Vec3 position;

		[CCode (cname = "plane_new")]
		public Plane (Vec3 position, Vec3 direction);
		
		public Plane transform(Mat4 world, Mat3 world_normal);
		public Plane transform_space(Mat3 space, Mat3 space_normal);
		public float distance(Vec3 point);
		
		[CCode (cname = "point_inside_plane", instance_pos=-1)]
		public bool point_inside(Vec3 point);
		[CCode (cname = "point_outside_plane", instance_pos=-1)]
		public bool point_outside(Vec3 point);
		[CCode (cname = "point_intersects_plane", instance_pos=-1)]
		public bool point_intersects(Vec3 point);
		
		[CCode (cname = "point_swept_inside_plane", instance_pos=-1)]
		public bool point_swept_inside(Vec3 point, Vec3 v);
		[CCode (cname = "point_swept_outside_plane", instance_pos=-1)]
		public bool point_swept_outside(Vec3 point, Vec3 v);
		[CCode (cname = "point_swept_intersects_plane", instance_pos=-1)]
		public bool point_swept_intersects(Vec3 point, Vec3 v);
		
		public Vec3 closest(Vec3 v);
		public Vec3 project(Vec3 v);
				
	}

	[SimpleType]
	[CCode (cname = "box")]
	public struct Box {
		public Plane top;
		public Plane bottom;
		public Plane left;
		public Plane right;
		public Plane front;
		public Plane back;

		[CCode (cname = "box_new")]
		public Box (float x_min, float x_max, float y_min, float y_max, float z_min, float z_max);
		public static Box sphere(Vec3 center, float radius);
		public Box merge(Box other);
		public Box transform(Mat4 world, Mat3 world_normal);
		public Box invert();
		public Box invert_depth();
		public Box invert_width();
		public Box invert_height();
		
		[CCode (cname = "point_inside_box", instance_pos=-1)]
		public bool point_inside(Vec3 point);
		[CCode (cname = "point_outside_box", instance_pos=-1)]
		public bool point_outside(Vec3 point);
		[CCode (cname = "point_intersects_box", instance_pos=-1)]
		public bool point_intersects(Vec3 point);
					  
	}

	[SimpleType]
	[CCode (cname = "frustum")]
	public struct Frustum {
		public Vec3 ntr;
		public Vec3 ntl;
		public Vec3 nbr;
		public Vec3 nbl;
		public Vec3 ftr;
		public Vec3 ftl;
		public Vec3 fbr;
		public Vec3 fbl;
	  
		[CCode (cname = "frustum_new")]
		public Frustum (Vec3 ntr, Vec3 ntl, Vec3 nbr, Vec3 nbl, Vec3 ftr, Vec3 ftl, Vec3 fbr, Vec3 fbl);
		public static Frustum new_clipbox();
		public static Frustum new_camera(Mat4 view, Mat4 proj);
		public Frustum slice(float start, float end);
		public Frustum transform(Mat4 m);
		public Frustum translate(Vec3 v);
		
		public Vec3 center();
		public Vec3 maximums();
		public Vec3 minimums();
		
		public Box box();
		
		public bool outside_box(Box b);
		
	}

	[SimpleType]
	[CCode (cname = "sphere")]
	public struct Sphere {
		public Vec3 center;
		public float radius;
	  
		[CCode (cname = "sphere_new")]
		public Sphere (Vec3 center, float radius);
		public static Sphere unit();
		public static Sphere point();
		public Sphere merge(Sphere other);
		public static Sphere merge_many(Sphere[] s, int count);
		public Sphere transform(Mat4 world);
		public Sphere translate(Vec3 x);
		public Sphere scale(float x);
		public Sphere transform_space(Mat3 space);
		
		public static Sphere of_box(Box bb);
		public static Sphere of_frustum(Frustum f);
		
		public bool inside_box(Box b);
		public bool outside_box(Box b);
		public bool intersects_box(Box b);
		
		public bool inside_frustum(Frustum f);
		public bool outside_frustum(Frustum f);
		public bool intersects_frustum(Frustum f);
		
		public bool outside_sphere(Sphere other); 
		public bool inside_sphere(Sphere other); 
		public bool intersects_sphere(Sphere other); 
		
		public bool point_inside_sphere(Vec3 point);
		public bool point_outside_sphere(Vec3 point);
		public bool point_intersects_sphere(Vec3 point);
		
		public bool line_inside_sphere(Vec3 start, Vec3 end);
		public bool line_outside_sphere(Vec3 start, Vec3 end);
		public bool line_intersects_sphere(Vec3 start, Vec3 end);
		
		public bool inside_plane(Plane p);
		public bool outside_plane(Plane p);
		public bool intersects_plane(Plane p);
		
		public bool point_swept_inside_sphere(Vec3 v, Vec3 point);
		public bool point_swept_outside_sphere(Vec3 v, Vec3 point);
		public bool point_swept_intersects_sphere(Vec3 v, Vec3 point);
		
		public bool swept_inside_plane(Vec3 v, Plane p);
		public bool swept_outside_plane(Vec3 v, Plane p);
		public bool swept_intersects_plane(Vec3 v, Plane p);
		
		public bool swept_outside_sphere(Vec3 v, Sphere s2); 
		public bool swept_inside_sphere(Vec3 v, Sphere s2); 
		public bool swept_intersects_sphere(Vec3 v, Sphere s2); 
		
		public static bool point_inside_triangle(Vec3 p, Vec3 v0, Vec3 v1, Vec3 v2);
		public bool intersects_face(Vec3 v0, Vec3 v1, Vec3 v2, Vec3 norm);
	}

	[SimpleType]
	[CCode (cname = "ellipsoid")]
	public struct Ellipsoid {
		public Vec3 center;
		public Vec3 radiuses;
		  
		[CCode (cname = "ellipsoid_new")]
		public Ellipsoid (Vec3 center, Vec3 radiuses);
		public Ellipsoid transform(Mat4 m);
		public static Ellipsoid of_sphere(Sphere s);
		
		public Mat3 space();
		public Mat3 inv_space();
	}

	[SimpleType]
	[CCode (cname = "capsule")]
	public struct Capsule {
		public Vec3 start;
		public Vec3 end;
		public float radius;

		[CCode (cname = "capsule_new")]
		public Capsule (Vec3 start, Vec3 end, float radius);
		public Capsule transform(Mat4 m);
		
		public bool inside_plane(Plane p);
		public bool outside_plane(Plane p);
		public bool intersects_plane(Plane p);
				
	}

	[SimpleType]
	[CCode (cname = "vertex")]
	public struct Vertex {
		public Vec3 position;
		public Vec3 normal;
		public Vec3 tangent;
		public Vec3 binormal;
		public Vec4 color;
		public Vec2 uvs;

		[CCode (cname = "vertex_new")]
		public Vertex ();
		public bool equal(Vertex other);
		public void print();
	}

	[CCode (cname = "mesh")]
	public class Mesh {
		public int num_verts;
		public int num_triangles;
		public Vertex[] verticies;
		public uint32[] triangles;

		[CCode (cname = "mesh_new")]
		public Mesh();
		public void delete();
		
		public void generate_normals();
		public void generate_tangents();
		public void generate_orthagonal_tangents();
		public void generate_texcoords_cylinder();
		
		void print();
		public float surface_area();
		
		public void transform(Mat4 transform);
		public void translate(Vec3 translation);
		public void scale(float scale);
		
		public Sphere bounding_sphere();
		
	}

	[CCode (cname = "model")]
	public class Model {
		public int num_meshes;
		public Mesh[] meshes;

		[CCode (cname = "mode_new")]
		public Model ();
		public void delete();
		
		public void generate_normals();
		public void generate_tangents();
		public void generate_orthagonal_tangents();
		public void generate_texcoords_cylinder();
		
		public void print();
		public float surface_area();
		
		public void transform(Mat4 transform);
		public void translate(Vec3 translation);
		public void scale(float scale);
	}

	public Vec3 triangle_tangent(Vertex v1, Vertex v2, Vertex v3);
	public Vec3 triangle_binormal(Vertex v1, Vertex v2, Vertex v3);
	public Vec3 triangle_normal(Vertex v1, Vertex v2, Vertex v3);
	public Vec3 triangle_random_position(Vertex v1, Vertex v2, Vertex v3);
	public float triangle_area(Vertex v1, Vertex v2, Vertex v3);
	
	public float triangle_difference_u(Vertex v1, Vertex v2, Vertex v3);
	public float triangle_difference_v(Vertex v1, Vertex v2, Vertex v3);
	
	public Vertex triangle_random_position_interpolation(Vertex v1, Vertex v2, Vertex v3);
	
	public float tween_approach(float curr, float target, float timestep, float steepness);
	public float tween_linear(float curr, float target, float timestep, float max);
	
	public Vec3 vec3_tween_approach(Vec3 curr, Vec3 target, float timestep, float steepness);
	public Vec3 vec3_tween_linear(Vec3 curr, Vec3 target, float timestep, float max);
	
	[SimpleType]
	[CCode (cname = "graphics")]
	public struct Graphics : uint64 {
		public static void init();
		public static void finish();
		
		public static void set_vsync(bool vsync);
		public static void set_multisamples(int samples);
		public static void set_fullscreen(bool fullscreen);
		public static void set_antialiasing(int quality);
		
		[CCode (cname = "graphics_context_new")]
		public CObject Graphics();
		public void context_delete();
		public void context_current();
		
		public static int get_multisamples();
		public static bool get_fullscreen();
		public static int get_antialiasing();
		
		public static void viewport_set_title(string title);
		public static void viewport_set_icon(FPath icon);
		public static void viewport_set_position(int x, int y);
		public static void viewport_set_rect(int x, int y, int w, int h);
		public static void viewport_set_size(int w, int h);
		public static void viewport_screenshot();
		
		public static string viewport_title();
		public static int viewport_height();
		public static int viewport_width();
		public static float viewport_ratio();
		
		public static void set_cursor_hidden(bool hidden);
		public static bool get_cursor_hidden();
		
		public static void swap();
		
	}

	[SimpleType]
	[CCode (cname = "audio")]
	public struct Audio : uint64 {
		public static void init();
		public static void finish();
		
		public int play(int loops);
		public static void pause(int channel);
		public static void resume(int channel);
		public static void stop(int channel);
		
	}

	//  [SimpleType]
	//  [CCode (cname = "music")]
	//  public struct Music : uint64 {
	//  	public static Music mp3_load_file(string filename);
	//  	public static Music ogg_load_file(string filename);
	//  	public void delete();
	//  	public void play();
	//  	public static void pause();
	//  	public static void resume();
	//  	public static void stop();
		
	//  	public static void set_volume(float volume);
	//  	public static float get_volume();
	//  }

	//  [SimpleType]
	//  [CCode (cname = "sound")]
	//  public struct Sound : uint64 {
	//  	public static Sound wav_load_file(string filename);
	//  	public void delete();
		
	//  	public int play();
	//  	public int play_looped(int loops);
		
	//  	public int play_at(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir);
	//  	public int play_at_looped(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir, int loops);
	//  }

	[CCode (cname = "MAX_STICKS")]
	public const int MAX_STICKS;

	[SimpleType]
	[CCode (cname = "joystick")]
	public struct Joystick {
		public static void init();
		public static void finish();
		
		public static int count();
		public static CObject get(int i);
	}
	
	[CCode (cname = "int", cprefix = "HTTP_ERR_")]
	public enum HttpErr {
		NONE, URL, HOST, SOCKET, DATA, NOFILE
	}

	[SimpleType]
	[CCode (cname = "net")]
	public struct Net {
		public static void init();
		public static void finish();
		
		public static void set_server(bool server);
		public static bool is_server();
		public static bool is_client();
		public static HttpErr http_get(string result, int max, string fmt, ...);
		public static HttpErr http_upload(string filename, string fmt, ...);

	}

	//  collision (*colfunc)(CObject x, vec3* pos, vec3* vel)

	[CCode (has_target = false)]
	public delegate Collision ColFunc (CObject obj, ref Vec3 pos, ref Vec3 vel);
	
	[SimpleType]
	[CCode (cname = "collision")]
	public struct Collision {
		[CCode (cname = "collision_new")]
		public Collision (float time, Vec3 point, Vec3 norm);
		public static Collision none();
		public Collision merge(Collision other);
		public static Collision point_collide_point(Vec3 p, Vec3 v, Vec3 p0);
		public static Collision point_collide_Sphere(Vec3 p, Vec3 v, Sphere s);
		public static Collision point_collide_ellipsoid(Vec3 p, Vec3 v, Ellipsoid e);
		public static Collision point_collide_edge(Vec3 p, Vec3 v, Vec3 e0, Vec3 e1);
		//  public static Collision point_collide_face(Vec3 p, Vec3 v, ctri ct);
		//  public static Collision point_collide_ctri(Vec3 p, Vec3 v, ctri ct);
		//  public static Collision point_collide_mesh(Vec3 p, Vec3 v, cmesh* m, mat4 world, mat3 world_normal);
		
		public static Collision Sphere_collide_point(Sphere s, Vec3 v, Vec3 p);
		public static Collision Sphere_collide_Sphere(Sphere s, Vec3 v, Sphere s0);
		public static Collision Sphere_collide_edge(Sphere s, Vec3 v, Vec3 e0, Vec3 e1);
		//  public static Collision Sphere_collide_face(Sphere s, Vec3 v, ctri ct);
		//  public static Collision Sphere_collide_ctri(Sphere s, Vec3 v, ctri ct);
		//  public static Collision Sphere_collide_mesh(Sphere s, Vec3 v, cmesh* m, mat4 world, mat3 world_normal);
		
		//  public static Collision ellipsoid_collide_mesh(ellipsoid e, Vec3 v, cmesh* m, mat4 world, mat3 world_normal);
		public static Collision ellipsoid_collide_point(Ellipsoid e, Vec3 v, Vec3 p);
		public static Collision ellipsoid_collide_Sphere(Ellipsoid e, Vec3 v, Sphere s);

		public static void collision_response_slide(CObject obj, ref Vec3 pos, ref Vec3 vel, ColFunc func);
	}

	public void ui_init();
	public void ui_finish();
	public void ui_set_style(ui.UIStyle s);
	/* Pass Event, Update, and Render whole UI */
	public void ui_event(SDL.Event e);
	public void ui_update();
	public void ui_render();

	[Compact]
	[CCode (cname = "ui_elem", free_function = "override_free")]
	public class UIElem {
		[CCode (cname = "ui_elem_new_type_id")]
		public UIElem(string fmt, int type, ...);
		[CCode (cname = "ui_elem_get")]
		public static UIElem get(string fmt, ...);
	}


	[Compact]
	[CCode (cname = "camera", free_function = "override_free")]
	public class Camera {
		[CCode (cname = "camera_new")]
		public Camera();

		public void delete();

		public Vec3 direction();
		public Mat4 view_matrix();
		public Mat4 proj_matrix();
		public Mat4 view_proj_matrix();
		
		public void normalize_target();
		public void control_orbit(SDL.Event e);
		public void control_freecam(float timestep);
		public void control_joyorbit(float timestep);
				
	}

	[CCode (cname = "int", cprefix = "LIGHT_TYPE_")]
	public enum LightType {
		POINT, DIRECTIONAL, SUN, SPOT
	}
	
	namespace assets {

		[Compact]
		[CCode (cname = "animation", cprefix="", free_function = "override_free")]
		public class Animation {
			public int frame_count;
			public float frame_time;
			Frame[] frames;
			[CCode (cname = "animation_new")]
			public Animation();
			[CCode (cname = "animation_delete")]
			public void delete();
			[CCode (cname = "animation_duration")]
			public float duration();
			[CCode (cname = "animation_add_frame")]
			public Frame add_frame(Frame base);
			[CCode (cname = "animation_frame")]
			public Frame frame(int i);
			[CCode (cname = "animation_sample")]
			public Frame sample(float time);
			[CCode (cname = "animation_sample_to")]
			public void sample_to(float time, Frame result);
			[CCode (cname = "ani_load_file")]
			public static Animation load_file(string filename);
		}

		[SimpleType]
		[CCode (cname = "ctri", cprefix="")]
		public struct Ctri {
			public Vec3 a;
			public Vec3 b;
			public Vec3 c;
			public Vec3 norm;
			public Sphere bound;

			[CCode (cname = "ctri_new")]
			public Ctri(Vec3 a, Vec3 b, Vec3 c, Vec3 norm);
			[CCode (cname = "ctri_transform")]
			Ctri transform(Mat4 m, Mat3 mn);
			[CCode (cname = "ctri_transform_space")]
			Ctri transform_space(Mat3 s, Mat3 sn);
			[CCode (cname = "ctri_inside_plane")]
			bool inside_plane(Plane p);
			[CCode (cname = "ctri_outside_plane")]
			bool outside_plane(Plane p);
			[CCode (cname = "ctri_intersects_plane")]
			bool intersects_plane(Plane p);
		}

		[Compact]
		[CCode (cname = "cmesh", cprefix="", free_function = "override_free")]
		public class CMesh {
			public bool is_leaf;
			public Plane division;
			public CMesh front;
			public CMesh back;

			[CCode (cname = "col_load_file")]
			public CMesh (string filename);
			[CCode (cname = "cmesh_delete")]
			public void delete();
			[CCode (cname = "cmesh_bound")]
			public Sphere bound();
			[CCode (cname = "cmesh_subdivide")]
			public void subdivide(int iterations);
		}		


		[CCode (cname = "int", cprefix = "IMAGE_REPEAT_")]
		public enum ImageRepeat {
			TILE, CLAMP, MIRROR, ERROR, BLACK
		}

		[CCode (cname = "int", cprefix = "IMAGE_SAMPLE_")]
		public enum ImageSample {
			LINEAR, NEAREST
		}

		public delegate bool MaskBinaryFunc(bool b1, bool b2);
		public delegate Vec4 MapFunc(Vec4 v);

		[Compact]
		[CCode (cname = "image", cprefix="", free_function = "override_free")]
		public class Image {
			public int width;
			public int height;
			public uchar[] data;
			public int repeat_type;
			public int sample_type;
			[CCode (cname = "image_new")]
			public Image (int width, int height, uchar[] data);
			[CCode (cname = "image_empty")]
			public static Image empty (int width, int height);
			[CCode (cname = "image_blank")]
			public static Image blank (int width, int height);

			[CCode (cname = "image_copy")]
			public Image copy();
			[CCode (cname = "image_delete")]
			public void delete();
			[CCode (cname = "image_get")]
			public Vec4 get(int u, int v);
			[CCode (cname = "image_set")]
			public void set(int u, int v, Vec4 c);
			[CCode (cname = "image_map")]
			public void map(MapFunc func);
			
			[CCode (cname = "image_red_channel")]
			public Image red_channel();
			[CCode (cname = "image_green_channel")]
			public Image green_channel();
			[CCode (cname = "image_blue_channel")]
			public Image blue_channel();
			[CCode (cname = "image_alpha_channel")]
			public Image alpha_channel();
			
			[CCode (cname = "image_bgr_to_rgb")]
			public void bgr_to_rgb();
			[CCode (cname = "image_rotate_90_clockwise")]
			public void rotate_90_clockwise();
			[CCode (cname = "image_rotate_90_counterclockwise")]
			public void rotate_90_counterclockwise();
			[CCode (cname = "image_rotate_180")]
			public void rotate_180();
			[CCode (cname = "image_rotate_inplace")]
			public void rotate_inplace(float amount);
			[CCode (cname = "image_flip_horizontal")]
			public void flip_horizontal();
			[CCode (cname = "image_flip_vertical")]
			public void flip_vertical();
			
			[CCode (cname = "image_fill")]
			public void fill(Vec4 color);
			[CCode (cname = "image_fill_black")]
			public void fill_black();
			[CCode (cname = "image_fill_white")]
			public void fill_white();
			
			[CCode (cname = "image_apply_gamma")]
			public void apply_gamma(float amount);
			[CCode (cname = "image_to_gamma")]
			public void to_gamma();
			[CCode (cname = "image_from_gamma")]
			public void from_gamma();
			
			[CCode (cname = "image_rgb_to_hsv")]
			public void rgb_to_hsv();
			[CCode (cname = "image_hsv_to_rgb")]
			public void hsv_to_rgb();
			[CCode (cname = "image_hsv_scalar")]
			public void hsv_scalar();
			
			[CCode (cname = "image_min")]
			public Vec4 min();
			[CCode (cname = "image_max")]
			public Vec4 max();
			[CCode (cname = "image_mean")]
			public Vec4 mean();
			[CCode (cname = "image_var")]
			public Vec4 var();
			[CCode (cname = "image_std")]
			public Vec4 std();
			[CCode (cname = "image_auto_contrast")]
			public void auto_contrast();
			[CCode (cname = "image_set_to_mask")]
			public void set_to_mask();
			[CCode (cname = "image_set_brightness")]
			public void set_brightness(float brightness);
			[CCode (cname = "image_alpha_mean")]
			public Vec4 alpha_mean();
			[CCode (cname = "image_get_subimage")]
			public Image get_subimage(int left, int top, int width, int height);
			[CCode (cname = "image_set_subimage")]
			public void set_subimage(int left, int top, Image src);
			[CCode (cname = "image_paste_subimage")]
			public void paste_subimage(int left, int top, Image src);
			[CCode (cname = "image_paste_subimage")]
			public Vec4 sample(Vec2 uv);
			[CCode (cname = "image_sample")]
			public void paint(Vec2 uv, Vec4 color);
			[CCode (cname = "image_paint")]
			public void scale(Vec2 scale);
			[CCode (cname = "image_scale")]
			public void mask_not();
			[CCode (cname = "image_mask_not")]
			public void mask_binary(Image other, MaskBinaryFunc func);
			[CCode (cname = "image_mask_binary")]
			public void mask_or(Image other);
			[CCode (cname = "image_mask_or")]
			public void mask_and(Image other);
			[CCode (cname = "image_mask_xor")]
			public void mask_xor(Image other);
			[CCode (cname = "image_mask_nor")]
			public void mask_nor(Image other);
			[CCode (cname = "image_mask_nand")]
			public void mask_nand(Image other);
			[CCode (cname = "image_mask_xnor")]
			public void mask_xnor(Image other);
			[CCode (cname = "image_mask_alpha")]
			public Image mask_alpha();
			[CCode (cname = "image_mask_nearest")]
			public Image mask_nearest();
			[CCode (cname = "image_mask_flood_fill")]
			public Image mask_flood_fill(int u, int v, float tolerance);
			[CCode (cname = "image_mask_difference")]
			public Image mask_difference(Vec4 color, float tolerance);
			[CCode (cname = "image_mask_count")]
			public long mask_count();
			[CCode (cname = "image_mask_median")]
			public void mask_median(ref int u, ref int v);
			[CCode (cname = "image_mask_random")]
			public void mask_random(ref int u, ref int v);
			[CCode (cname = "image_read_from_file")]
			public Image read_from_file(string filename);
			[CCode (cname = "image_tga_load_file")]
			public Image tga_load_file(string filename);
			[CCode (cname = "image_bmp_load_file")]
			public Image bmp_load_file(string filename);
			[CCode (cname = "image_write_to_file")]
			public void write_to_file(string filename);
			[CCode (cname = "image_tga_save_file")]
			public void tga_save_file(string filename);
			[CCode (cname = "image_bmp_save_file")]
			public void bmp_save_file(string filename);
		}

		[Compact]
		[CCode (cname = "frame", cprefix="", free_function = "override_free")]
		public class Frame {
			public int joint_count;
			public int[] joint_parents;
			public Vec3[] joint_positions;
			public Quat[] joint_rotations;
			public Mat4[] transforms;
			public Mat4[] transforms_inv;
			[CCode (cname = "frame_new")]
			public Frame();
			[CCode (cname = "frame_copy")]
			public Frame copy();
			[CCode (cname = "frame_interpolate")]
			public Frame interpolate(Frame other, float amount);
		}

		[Compact]
		[CCode (cname = "config", cprefix="", free_function = "override_free")]
		public class Config {
			public data.Dict entries;
			[CCode (cname = "cfg_load_file")]
			public Config(string filename);
			[CCode (cname = "cfg_save_file")]
			public void save();
			[CCode (cname = "config_delete")]
			public void delete();
			[CCode (cname = "config_string")]
			public unowned string str(string key);
			[CCode (cname = "config_int")]
			public int   int(string key);
			[CCode (cname = "config_float")]
			public float float(string key);
			[CCode (cname = "config_bool")]
			public bool  bool(string key);
			[CCode (cname = "config_set_string")]
			public void set_string(string key, string val);
			[CCode (cname = "config_set_int")]
			public void set_int(string key, int val);
			[CCode (cname = "config_set_float")]
			public void set_float(string key, float val);
			[CCode (cname = "config_set_bool")]
			public void set_bool(string key, bool val);
			[CCode (cname = "option_graphics_asset")]
			public AssetHandle option_graphics_asset(string key, AssetHandle high, AssetHandle medium, AssetHandle low);
			[CCode (cname = "option_graphics_int")]
			public int option_graphics_int(string key, int high, int medium, int low);
			[CCode (cname = "option_graphics_float")]
			public float option_graphics_float(string key, float high, float medium, float low);
		}

		[SimpleType]
		[CCode (cname = "effect_key", cprefix="")]
		public class EffectKey {
			public float time;
			public float rotation;
			public float rotation_r;
			public Vec3 scale;
			public Vec3 scale_r;
			public Vec4 color;
			public Vec4 color_r;
			public Vec3 force;
			public Vec3 force_r;
		}
		public EffectKey effect_key_lerp(EffectKey x, EffectKey y, float amount);
		
		[Compact]
		[CCode (cname = "effect", cprefix="", free_function = "override_free")]
		public class Effect {
			public AssetHandle texture;
			public AssetHandle texture_nm;
			public GL.GLuint blend_src;
			public GL.GLuint blend_dst;
			public int count;
			public float depth;
			public float thickness;
			public float bumpiness;
			public float scattering;
			public float lifetime;
			public float output;
			public float output_r;
			public bool alpha_decay;
			public bool color_decay;
			public int keys_num;
			public EffectKey[] keys;

			[CCode (cname = "effect_new")]
			public Effect();
			[CCode (cname = "effect_load_file")]
			public static Effect load_file(string filename);
			[CCode (cname = "effect_delete")]
			public void delete();
			[CCode (cname = "effect_get_key")]
			public EffectKey get_key(float ptime);
		}

		[Compact]
		[CCode (cname = "font", cprefix="", free_function = "override_free")]
		public class Font {
			public AssetHandle texture_map;
			public int width;
			public int height;
			public Vec2[] locations;
			public Vec2[] sizes;
			public Vec2[] offsets;
			[CCode (cname = "font_load_file")]
			public Font(string filename);
			[CCode (cname = "font_delete")]
			public void delete();
		}

		[Compact]
		[CCode (cname = "lang", cprefix="", free_function = "override_free")]
		public class Lang {
			public data.Dict map;
			[CCode (cname = "lang_load_file")]
			public Lang(string filename);
			[CCode (cname = "lang_delete")]
			public void delete();
			[CCode (cname = "lang_get")]
			public unowned string get(string id);
			[CCode (cname = "lang_set_language")]
			public static void set_language(AssetHandle t);
			[CCode (cname = "S")]
			public static string S(string id);
		}
		
		[Compact]
		[CCode (cname = "shader", cprefix="", free_function = "override_free")]
		public class Shader  {
			public GL.GLuint shader;

			[CCode (cname = "vs_load_file")]
			public static Shader vs_load_file(string filename);
			[CCode (cname = "fs_load_file")]
			public static Shader fs_load_file(string filename);
			[CCode (cname = "gs_load_file")]
			public static Shader gs_load_file(string filename);
			[CCode (cname = "tcs_load_file")]
			public static Shader tcs_load_file(string filename);
			[CCode (cname = "tes_load_file")]
			public static Shader tes_load_file(string filename);
			[CCode (cname = "shader_delete")]
			void delete();
			[CCode (cname = "shader_print_log")]
			void print_log();
			[CCode (cname = "shader_handle")]
			GL.GLuint handle();
		}

		[Compact]
		[CCode (cname = "shader_program", cprefix="", free_function = "override_free")]
		public class ShaderProgram {
			public GL.GLuint shader;

			[CCode (cname = "shader_program_new")]
			public ShaderProgram();
			[CCode (cname = "shader_program_delete")]
			public void delete();
			[CCode (cname = "shader_program_has_shader")]
			public bool has_shader(Shader s);
			[CCode (cname = "shader_program_attach_shader")]
			public void attach_shader(Shader s);
			[CCode (cname = "shader_program_link")]
			public void link();
			[CCode (cname = "shader_program_print_info")]
			public void print_info();
			[CCode (cname = "shader_program_print_log")]
			public void print_log();
			[CCode (cname = "shader_program_handle")]
			public GL.GLuint handle();
			[CCode (cname = "shader_program_get_attribute")]
			public GL.GLint get_attribute(string name);
			[CCode (cname = "shader_program_enable")]
			public void enable();
			[CCode (cname = "shader_program_disable")]
			public void disable();
			[CCode (cname = "shader_program_set_int")]
			public void set_int(string name, int val);
			[CCode (cname = "shader_program_set_float")]
			public void set_float(string name, float val);
			[CCode (cname = "shader_program_set_vec2")]
			public void set_vec2(string name, Vec2 val);
			[CCode (cname = "shader_program_set_vec3")]
			public void set_vec3(string name, Vec3 val);
			[CCode (cname = "shader_program_set_vec4")]
			public void set_vec4(string name, Vec4 val);
			[CCode (cname = "shader_program_set_mat3")]
			public void set_mat3(string name, Mat3 val);
			[CCode (cname = "shader_program_set_mat4")]
			public void set_mat4(string name, Mat4 val);
			[CCode (cname = "shader_program_set_float_array")]
			public void set_float_array(string name, ref float vals, int count);
			[CCode (cname = "shader_program_set_vec2_array")]
			public void set_vec2_array(string name, ref Vec2 vals, int count);
			[CCode (cname = "shader_program_set_vec3_array")]
			public void set_vec3_array(string name, ref Vec3 vals, int count);
			[CCode (cname = "shader_program_set_vec3_array")]
			public void set_vec4_array(string name, ref Vec4 vals, int count);
			[CCode (cname = "shader_program_set_vec4_array")]
			public void set_mat4_array(string name, ref Mat4 vals, int count);
			[CCode (cname = "shader_program_set_texture")]
			public void set_texture(string name, int index, AssetHandle t);
			[CCode (cname = "shader_program_set_texture_id")]
			public void set_texture_id(string name, int index, GL.GLint t);
			[CCode (cname = "shader_program_enable_attribute")]
			public void enable_attribute(string name, int count, int stride, void* ptr);
			[CCode (cname = "shader_program_enable_attribute_instance")]
			public void enable_attribute_instance(string name, int count, int stride, void* ptr);
			[CCode (cname = "shader_program_disable_attribute")]
			public void disable_attribute(string name);
			[CCode (cname = "shader_program_enable_attribute_instance_matrix")]
			public void enable_attribute_instance_matrix(string name, void* ptr);
			[CCode (cname = "shader_program_disable_attribute_matrix")]
			public void disable_attribute_matrix(string name);
		}
		
		public const int mat_item_int;
		public const int mat_item_float;
		public const int mat_item_vec2;
		public const int mat_item_vec3;
		public const int mat_item_vec4;
		public const int mat_item_shader;
		public const int mat_item_texture;
				
		[SimpleType]
		[CCode (cname = "material_item", cprefix="")]
		public struct MaterialItem {
			public int as_int;
			public float as_float;
			public Vec2 as_vec2;
			public Vec3 as_vec3;
			public Vec4 as_vec4;
			public AssetHandle as_asset;
		}

		[Compact]
		[CCode (cname = "material_entry", cprefix="", free_function = "override_free")]
		public class MaterialEntry {
			public ShaderProgram program;
			public int num_items;
			public int[] types;
			public unowned string[] names;
			public MaterialItem[] items;

			[CCode (cname = "material_delete")]
			public void delete();
			[CCode (cname = "material_item")]
			public MaterialItem item(string name);
			[CCode (cname = "material_has_item")]
			public bool has_item(string name);
			[CCode (cname = "material_add_item")]
			public void add_item(string name, int type, MaterialItem mi);
		}

		[Compact]
		[CCode (cname = "material", cprefix="", free_function = "override_free")]
		public class Material {
			public int num_entries;
			public MaterialEntry[] entries;

			[CCode (cname = "material_new")]
			public Material();
			[CCode (cname = "material_delete")]
			public void delete();
			[CCode (cname = "mat_load_file")]
			public static Material load_file(string filename);
			[CCode (cname = "material_get_entry")]
			public MaterialEntry get_entry(int index);
			[CCode (cname = "material_add_entry")]
			public MaterialEntry add_entry();
			[CCode (cname = "material_first_program")]
			public ShaderProgram first_program();
		}	

		[Compact]
		[CCode (cname = "music", cprefix="", free_function = "override_free")]
		public class Music {
			public SDLMixer.Music handle;
			[CCode (cname = "music_delete")]
			public void delete();
		}
		Music mp3_load_file(string filename);
		Music ogg_load_file(string filename);

		[SimpleType]
		[CCode (cname = "vertex_weight", cprefix="")]
		public class VertexWeight {
			public int bone_ids[3];
			public float bone_weights[3];
		}

		[Compact]
		[CCode (cname = "renderable_surface", cprefix="", free_function = "override_free")]
		public class RenderableSurface {
			public GL.GLuint vertex_vbo;
			public GL.GLuint triangle_vbo;
			public int num_verticies;
			public int num_triangles;
			public Sphere bound;

			[CCode (cname = "renderable_surface_new")]
			public RenderableSurface(Mesh m);
			[CCode (cname = "renderable_surface_rigged")]
			public static RenderableSurface rigged(Mesh m, VertexWeight* weights);
			[CCode (cname = "renderable_surface_delete")]
			void delete();
		}

		[Compact]
		[CCode (cname = "renderable", cprefix="", free_function = "override_free")]
		public class Renderable {
			public RenderableSurface[] surfaces;
			public int num_surfaces;
			public bool is_rigged;
			public AssetHandle material;

			[CCode (cname = "renderable_new")]
			public Renderable();
			[CCode (cname = "renderable_delete")]
			public void delete();
			[CCode (cname = "renderable_add_mesh")]
			public void add_mesh(Mesh m);
			[CCode (cname = "renderable_add_model")]
			public void add_model(Model m);
			[CCode (cname = "renderable_set_material")]
			public void set_material(AssetHandle mat);
			[CCode (cname = "renderable_to_model")]
			public Model to_model();
			[CCode (cname = "renderable_bmf_load_file")]
			public static Renderable bmf_load_file(string filename);
			[CCode (cname = "renderable_obj_load_file")]
			public static Renderable obj_load_file(string filename);
			[CCode (cname = "renderable_smd_load_file")]
			public static Renderable smd_load_file(string filename);
			[CCode (cname = "renderable_ply_load_file")]
			public static Renderable ply_load_file(string filename);
			[CCode (cname = "renderable_bmf_save_file")]
			public void save_file(string filename);
						
		}
		
		[Compact]
		[CCode (cname = "skeleton", cprefix="", free_function = "override_free")]
		public class Skeleton {
			public int joint_count;
			public unowned string[] joint_names;
			public Frame rest_pose;
			[CCode (cname = "skeleton_new")]
			public Skeleton();
			[CCode (cname = "skeleton_delete")]
			public void delete();
			[CCode (cname = "skeleton_joint_add")]
			public void joint_add(string name, int parent);
			[CCode (cname = "skeleton_joint_id")]
			public int joint_id(string name);
			[CCode (cname = "skeleton_skl_load_file")]
			public static Skeleton load_file(string filename);
		}

		[Compact]
		[CCode (cname = "sound", cprefix="", free_function = "override_free")]
		public class Sound {
			public SDLMixer.Chunk handle;
			[CCode (cname = "wav_load_file")]
			public Sound(string name);
			[CCode (cname = "sound_delete")]
			public void delete();
			[CCode (cname = "sound_play")]
			public int play();
			[CCode (cname = "sound_play_looped")]
			public int play_looped(int loops);
			[CCode (cname = "sound_play_at")]
			public int play_at(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir);
			[CCode (cname = "sound_play_at_looped")]
			public int play_at_looped(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir, int loops);
		}

		[Compact]
		[CCode (cname = "terrain_chunk", cprefix="", free_function = "override_free")]
		public class TerrainChunk {
			public int id;
			public int x;
			public int y;
			public int width;
			public int height;
			public Sphere bound;
			public TerrainChunk left;
			public TerrainChunk right;
			public TerrainChunk top;
			public TerrainChunk bottom;
			public CMesh colmesh;
			public int num_verts;
			public GL.GLuint vertex_buffer;
			public int num_indicies[7];
			public GL.GLuint index_buffers[7];
			[CCode (cname = "terrain_chunk_delete")]
			public void delete();
		}

		[Compact]
		[CCode (cname = "terrain", cprefix="", free_function = "override_free")]
		public class Terrain {
			public int width;
			[CCode (cname = "height")]
			public int _height;
			public float* heightmap;
			public int chunk_width;
			public int chunk_height;
			public int num_chunks;
			public int num_cols;
			public int num_rows;
			public TerrainChunk[] chunks;
			[CCode (cname = "raw_load_file")]
			public Terrain (string filename);
			[CCode (cname = "raw_save_file")]
			public void save(string filename);
			[CCode (cname = "terrain_delete")]
			public void delete();
			[CCode (cname = "terrain_terrain_get_chunk")]
			public TerrainChunk terrain_get_chunk(int x, int y);
			[CCode (cname = "terrain_reload_chunk")]
			public void reload_chunk(int i);
			[CCode (cname = "terrain_tbn")]
			public Mat3  tbn(Vec2 position);
			[CCode (cname = "terrain_axis")]
			public Mat3  axis(Vec2 position);
			[CCode (cname = "terrain_height")]
			public float height(Vec2 position);
			[CCode (cname = "terrain_normal")]
			public Vec3  normal(Vec2 position);
		}		

		[Compact]
		[CCode (cname = "texture", cprefix="", free_function = "override_free")]
		public class Texture {
			[CCode (cname = "handle")]
			public GL.GLuint _handle;
			[CCode (cname = "type")]
			public GL.GLenu _type;
			[CCode (cname = "texture_new")]
			public Texture();
			[CCode (cname = "texture_new_handle")]
			public static Texture new_handle(GL.GLuint h);
			[CCode (cname = "texture_delete")]
			public void delete();
			[CCode (cname = "texture_handle")]
			public GL.GLuint handle();
			public static GL.GLuint gl(string path) {
				return ((Texture)Asset.get(FPath(path))).handle();
			}			
			[CCode (cname = "texture_type")]
			public GL.GLenu type();
			[CCode (cname = "texture_set_image")]
			public void set_image(Image i);
			[CCode (cname = "texture_get_image")]
			public Image get_image();
			[CCode (cname = "texture_generate_mipmaps")]
			public void generate_mipmaps();
			[CCode (cname = "texture_set_filtering_nearest")]
			public void set_filtering_nearest();
			[CCode (cname = "texture_set_filtering_linear")]
			public void set_filtering_linear();
			[CCode (cname = "texture_set_filtering_anisotropic")]
			public void set_filtering_anisotropic();
			[CCode (cname = "bmp_load_file")]
			public static Texture bmp_load_file( string filename );
			[CCode (cname = "tga_load_file")]
			public static Texture tga_load_file( string filename );
			[CCode (cname = "dds_load_file")]
			public static Texture dds_load_file( string filename );
			[CCode (cname = "lut_load_file")]
			public static Texture lut_load_file( string filename );
			[CCode (cname = "acv_load_file")]
			public static Texture acv_load_file( string filename );
			[CCode (cname = "texture_write_to_file")]
			public void write_to_file(string filename);
			[CCode (cname = "texture3de_write_to_file")]
			public void write_to_file3d(string filename);
		}		
	}

	namespace data {
		public float randf();
		public float randf_seed(float s);
		/* Random float in range -1 to 1 */
		public float randf_n();
		public float randf_nseed(float s);
		/* Random float in range 0 to s */
		public float randf_scale(float s);
		/* Random float in range -s to s */
		public float randf_nscale(float s);
		/* Random float in range s to e */
		public float randf_range(float s, float e);
		public Vec2 randf_circle(float radius);

		[CCode (has_target = false)]
		public delegate void BucketFunc();

		[CCode (has_target = false)]
		public delegate int FilterFunc();

		[Compact]
		[CCode (cname = "bucket", cprefix="", free_function = "override_free")]
		public class Bucket<T> {
			public string key;
			public T item;
			public Bucket next;
			[CCode (cname = "bucket_new")]
			public Bucket(string s, CObject item);
			[CCode (cname = "bucket_map")]
			public void map(BucketFunc func);
			[CCode (cname = "bucket_filter_map")]
			public void filter_map(FilterFunc ffunc , BucketFunc bfunc);
			[CCode (cname = "bucket_delete_with")]
			public void delete_with(FilterFunc func);
			[CCode (cname = "bucket_delete_recursive")]
			public void delete_recursive();
			[CCode (cname = "bucket_print")]
			public void print();
		}

		[CCode (has_target = false)]
		public delegate void DictFunc();

		[Compact]
		[CCode (cname = "dict", cprefix="", free_function = "override_free")]
		public class Dict<T> {
			public int size;
			public Bucket<T>[] buckets;

			[CCode (cname = "dict_new")]
			public Dict(int size);
			[CCode (cname = "dict_delete")]
			public void delete();
			[CCode (cname = "dict_contains")]
			public bool contains(string s);
			[CCode (cname = "dict_get")]
			public T get(string s);
			[CCode (cname = "dict_set")]
			public void set(string s, owned T item);
			[CCode (cname = "dict_remove_with")]
			public void remove_with(string s, DictFunc func);
			[CCode (cname = "dict_mao")]
			public void map(DictFunc func);
			[CCode (cname = "dict_filter_map")]
			public void filter_map(FilterFunc ffunc , DictFunc dfunc);
			[CCode (cname = "dict_print")]
			public void print();
			[CCode (cname = "dict_find")]
			public unowned string find(T item);
		}		

		[Compact]
		[CCode (cname = "int_list", cprefix="", free_function = "override_free")]
		public class IntList {
			public int num_items;
			public int num_slots;
			public int[] items;  

			[CCode (cname = "int_list_new")]
			public IntList();
			[CCode (cname = "int_list_delete")]
			public void delete();
			[CCode (cname = "int_list_push_back")]
			public void push_back(int item);
			[CCode (cname = "int_list_pop_back")]
			public int pop_back();
			[CCode (cname = "int_list_get")]
			public int get(int index);
			[CCode (cname = "int_list_set")]
			public void set(int index, int item);
			[CCode (cname = "int_list_is_empty")]
			public bool is_empty();
			[CCode (cname = "int_list_clear")]
			public void clear();
		}		

		[CCode (has_target = false)]
		public delegate void ListFilter();

		[Compact]
		[CCode (cname = "list", cprefix="", free_function = "override_free")]
		public class List<T> {
			public int num_items;
			public int num_slots;
			public T[] items;

			[CCode (cname = "list_new")]
			public List();
			[CCode (cname = "list_push_back")]
			public void push_back(T item);
			[CCode (cname = "list_pop_back")]
			public CObject pop_back();
			[CCode (cname = "list_pop_at")]
			public CObject pop_at(int index);
			[CCode (cname = "list_remove")]
			public void remove(T item);
			[CCode (cname = "list_get")]
			public T get(int index);
			[CCode (cname = "list_set")]
			public void set(int index, owned T item);
			[CCode (cname = "list_is_empty")]
			public bool is_empty();
			[CCode (cname = "list_delete")]
			public void delete();
			[CCode (cname = "list_clear")]
			public void clear();
			[CCode (cname = "list_delete_with")]
			public void delete_with(ListFilter func);
			[CCode (cname = "list_clear_with")]
			public void clear_with(ListFilter func);
		}		

		[Compact]
		[CCode (cname = "int_bucket", cprefix="", free_function = "override_free")]
		public struct IntBucket {
			public List keys;
			public IntList values;
		}		
		
		[Compact]
		[CCode (cname = "int_hashtable", cprefix="", free_function = "override_free")]
		public class IntHashtable {
			public IntBucket items[];
			public int table_size;

			[CCode (cname = "int_hashtable_new")]
			public IntHashtable(int size);
			[CCode (cname = "int_hashtable_hash")]
			int hash(string key);
			[CCode (cname = "int_hashtable_delete")]
			void delete();
			[CCode (cname = "int_hashtable_set")]
			void set(string key, int value);
			[CCode (cname = "int_hashtable_get")]
			int get(string key);
		}		

		[Compact]
		[CCode (cname = "spline", cprefix="", free_function = "override_free")]
		public class Spline {
			public int num_points;
			public float y0d;
			public float ynd;
			public float x0d;
			public float xnd;
			public float x[20];
			public float y[20];
			public float yd[20];
			public float xd[20];

			[CCode (cname = "spline_new")]
			public Spline();
			[CCode (cname = "spline_delete")]
			public void delete();
			[CCode (cname = "spline_add_point")]
			public void add_point(Vec2 p);
			[CCode (cname = "spline_get_point")]
			public Vec2 get_point(int i);
			[CCode (cname = "spline_set_point")]
			public void set_point(int i, Vec2 p);
			[CCode (cname = "spline_update")]
			public void update();
			[CCode (cname = "spline_print")]
			public void print();
			[CCode (cname = "spline_get_x")]
			public float get_x(float y);
			[CCode (cname = "spline_get_y")]
			public float get_y(float x);
			[CCode (cname = "spline_get_x_between")]
			public float get_x_between(int low, int high, float y);
			[CCode (cname = "spline_get_y_between")]
			public float get_y_between(int low, int high, float x);
		}

		[Compact]
		[CCode (cname = "color_curves", cprefix="", free_function = "override_free")]
		public class ColorCurves {
			public Spline rgb_spline;
			public Spline r_spline;
			public Spline g_spline;
			public Spline b_spline;
			public Spline a_spline;

			[CCode (cname = "color_curves_load")]
			public ColorCurves(string filename);
			[CCode (cname = "color_curves_delete")]
			void delete();
			[CCode (cname = "color_curves_write_lut")]
			void write_lut(string filename);
			[CCode (cname = "color_curves_map")]
			Vec3 map(Vec3 v);
		}		

		[Compact]
		[CCode (cname = "vertex_list", cprefix="", free_function = "override_free")]
		public class VertexList {
			public int num_items;
			public int num_slots;
			public Vertex[] items; 

			[CCode (cname = "vertex_list_new")]
			public VertexList();
			[CCode (cname = "vertex_list_delete")]
			public void delete();
			[CCode (cname = "vertex_list_push_back")]
			public void push_back(Vertex item);
			[CCode (cname = "vertex_list_pop_baxk")]
			public Vertex pop_back();
			[CCode (cname = "vertex_list_get")]
			public Vertex get(int index);
			[CCode (cname = "vertex_list_set")]
			public void set(int index, Vertex item);
			[CCode (cname = "vertex_list_clear")]
			public void clear();
		}		
		
		[Compact]
		[CCode (cname = "vertex_bucket", cprefix="", free_function = "override_free")]
		public class VertexBucket {
			VertexList keys;
			IntList values;
		}		

		[Compact]
		[CCode (cname = "vertex_hashtable", cprefix="", free_function = "override_free")]
		public class VertexHashtable {
			public VertexBucket items;
			public int table_size;

			[CCode (cname = "vertex_hashtable_new")]
			public VertexHashtable(int size);
			[CCode (cname = "vertex_hash")]
			public static int hash(VertexHashtable ht, Vertex v);
			[CCode (cname = "vertex_delete")]
			void delete();
			[CCode (cname = "vertex_set")]
			void set(Vertex key, int value);
			[CCode (cname = "vertex_get")]
			int get(Vertex key);
		}		
	}

	namespace rendering {
		[CCode (cname = "int", cprefix = "RENDERER_MAX_")]
		public enum RendererMax {
			LIGHTS, DYN_LIGHTS
		}
		[CCode (cname = "int", cprefix = "RO_TYPE_")]
		public enum RoType {
			AXIS, STATIC, INSTANCE, ANIMATED, PARTICLES, LIGHT, LANDSCAPE,
			PAINT, SPHERE, ELLIPSOID, CMESH, FRUSTRUM, PLANE, LINE, POINT
		}
		public const float TIME_SUNRISE;
		public const float TIME_MORNING;
		public const float TIME_MIDDAY;
		public const float TIME_EVENING;
		public const float TIME_SUNSET;
		public const float TIME_MIDNIGHT;
		
		[Compact]
		[CCode (cname = "sky", cprefix="", free_function = "override_free")]
		public class Sky {
			public float time;
			public uint32 seed;
			public AssetHandle cloud_mesh[14];
			public AssetHandle cloud_tex[14];
			public float cloud_opacity[14];
			public AssetHandle sun_sprite;
			public AssetHandle sun_tex;
			public AssetHandle moon_sprite;
			public AssetHandle moon_tex;
			public AssetHandle stars_sprite;
			public AssetHandle stars_tex;
			public bool is_day;
			public Vec3 wind;
			public Mat4 world_sun;
			public Mat4 world_moon;
			public Mat4 world_stars;
			public float moon_power;
			public Vec3 moon_direction;
			public Vec3 moon_diffuse;
			public Vec3 moon_ambient;
			public Vec3 moon_specular;
			public float sun_power;
			public Vec3 sun_direction;
			public Vec3 sun_diffuse;
			public Vec3 sun_ambient;
			public Vec3 sun_specular;
			public float sky_power;
			public Vec3 sky_direction;
			public Vec3 sky_diffuse;
			public Vec3 sky_ambient;
			public Vec3 sky_specular;
			public float ground_power;
			public Vec3 ground_direction;
			public Vec3 ground_diffuse;
			public Vec3 ground_ambient;
			public Vec3 ground_specular;

			[CCode (cname = "sky_new")]
			public Sky ();
			[CCode (cname = "sky_delete")]
			public void delete();
			[CCode (cname = "sky_update")]
			public void update(float t, uint32 seed);
		}

		[SimpleType]
		[CCode (cname = "render_object", cprefix="")]
		public struct RenderCObject {
			public RoType type;
			/* Geometry */
			public Mat4 _axis;
			public Sphere _sphere;
			public Ellipsoid _ellipsoid;
			public assets.CMesh colmesh; 
			public Mat4 colworld; 
			public Frustum _frustum;
			public Plane _plane;
			public Vec3 line_start; 
			public Vec3 line_end; 
			public Vec3 line_color; 
			public float line_thickness;
			public Vec3 point_pos; 
			public Vec3 point_color; 
			public float point_size; 
			/* CObjects */
			public entities.StaticCObject _static_object;
			public entities.InstanceCObject _instance_object;
			public entities.AnimatedCObject _animated_object;
			public entities.Landscape _landscape;
			public entities.Particles _particles;
			
			/* UI */
			public entities.Light _light;
			public Mat4 paint_axis; 
			public float paint_radius; 

			[CCode (cname = "render_object_static")]
			public RenderCObject static(entities.StaticCObject s);
			[CCode (cname = "render_object_instance")]
			public RenderCObject instance(entities.InstanceCObject s);
			[CCode (cname = "render_object_animated")]
			public RenderCObject animated(entities.AnimatedCObject a);
			[CCode (cname = "render_object_particles")]
			public RenderCObject particles(entities.Particles p);
			[CCode (cname = "render_object_light")]
			public RenderCObject light(entities.Light l);
			[CCode (cname = "render_object_axis")]
			public RenderCObject axis(Mat4 a);
			[CCode (cname = "render_object_sphere")]
			public RenderCObject sphere(Sphere s);
			[CCode (cname = "render_object_ellipsoid")]
			public RenderCObject ellipsoid(Ellipsoid e);
			[CCode (cname = "render_object_frustum")]
			public RenderCObject frustum(Frustum f);
			[CCode (cname = "render_object_plane")]
			public RenderCObject plane(Plane p);
			[CCode (cname = "render_object_cmesh")]
			public RenderCObject cmesh(assets.CMesh cm, Mat4 world);
			[CCode (cname = "render_object_landscape")]
			public RenderCObject landscape(entities.Landscape l);
			[CCode (cname = "render_object_paint")]
			public RenderCObject paint(Mat4 paint_axis, float paint_radius);
			[CCode (cname = "render_object_line")]
			public RenderCObject line(Vec3 start, Vec3 end, Vec3 color, float thickness);
			[CCode (cname = "render_object_point")]
			public RenderCObject point(Vec3 pos, Vec3 color, float size);
		}

		[Compact]
		[CCode (cname = "renderer", cprefix="", free_function = "override_free")]
		public class Renderer {
			/* Options */
			public AssetHandle options;
			/* Camera */
			public Camera camera;
			/* Lights */
			public int dyn_lights_num;
			public entities.Light dyn_light[13];
			/* Sky */
			public Sky sky;
			/* Materials */
			public AssetHandle mat_static;
			public AssetHandle mat_skin;
			public AssetHandle mat_instance;
			public AssetHandle mat_animated;
			public AssetHandle mat_vegetation;
			public AssetHandle mat_terrain;
			public AssetHandle mat_clear;
			public AssetHandle mat_ui;
			public AssetHandle mat_ssao;
			public AssetHandle mat_compose;
			public AssetHandle mat_tonemap;
			public AssetHandle mat_post0;
			public AssetHandle mat_post1;
			public AssetHandle mat_skydome;
			public AssetHandle mat_depth;
			public AssetHandle mat_depth_ins;
			public AssetHandle mat_depth_ani;
			public AssetHandle mat_depth_veg;
			public AssetHandle mat_depth_ter;
			public AssetHandle mat_sun;
			public AssetHandle mat_clouds;
			public AssetHandle mat_particles;
			public AssetHandle mat_sea;
			/* Meshes */
			public AssetHandle mesh_skydome;
			public AssetHandle mesh_sphere;
			public AssetHandle mesh_sea;
			/* Textures */
			public AssetHandle tex_color_correction;
			public AssetHandle tex_random;
			public AssetHandle tex_random_perlin;
			public AssetHandle tex_environment;
			public AssetHandle tex_vignetting;
			public AssetHandle tex_sea_bump0;
			public AssetHandle tex_sea_bump1;
			public AssetHandle tex_sea_bump2;
			public AssetHandle tex_sea_bump3;
			public AssetHandle tex_sea_env;
			public AssetHandle tex_cube_sea;
			public AssetHandle tex_cube_field;
			public AssetHandle tex_white;
			public AssetHandle tex_grey;
			public AssetHandle tex_skin_lookup;
			/* Buffers */
			public GL.GLuint gfbo;
			public GL.GLuint gdepth_buffer;
			public GL.GLuint gdiffuse_buffer;
			public GL.GLuint gnormals_buffer;

			public GL.GLuint gdiffuse_texture;
			public GL.GLuint gnormals_texture;
			public GL.GLuint gdepth_texture;

			public GL.GLuint ssao_fbo;
			public GL.GLuint ssao_buffer;
			public GL.GLuint ssao_texture;

			public GL.GLuint hdr_fbo;
			public GL.GLuint hdr_buffer;
			public GL.GLuint hdr_texture;

			public GL.GLuint ldr_front_fbo;
			public GL.GLuint ldr_front_buffer;
			public GL.GLuint ldr_front_texture;

			public GL.GLuint ldr_back_fbo;
			public GL.GLuint ldr_back_buffer;
			public GL.GLuint ldr_back_texture;

			public GL.GLuint shadows_fbo[3];
			public GL.GLuint shadows_buffer[3];
			public GL.GLuint shadows_texture[3];

			/* Shadows */
			public float shadows_start[3];
			public float shadows_end[3];
			public int shadows_widths[3];
			public int shadows_heights[3];

			/* Variables */
			public int seed;
			public float glitch;
			public float time;
			public float time_of_day;
			public float exposure;
			public float exposure_speed;
			public float exposure_target;
			public bool skydome_enabled;
			public bool sea_enabled;

			/* CObjects */
			public int render_objects_num;
			public RenderCObject[] render_objects;

			/* Preprocessed */

			public Mat4  camera_view;
			public Mat4  camera_proj;
			public Mat4  camera_inv_view;
			public Mat4  camera_inv_proj;
			public float camera_near;
			public float camera_far;
			public Box   camera_frustum;

			public Mat4  shadow_view[3];
			public Mat4  shadow_proj[3];
			public float shadow_near[3];
			public float shadow_far[3];
			public Box   shadow_frustum[3];
			[CCode (cname = "renderer_new")]
			public Renderer (AssetHandle options);
			[CCode (cname = "renderer_delete")]
			public void delete();
			[CCode (cname = "renderer_set_camera")]
			public void set_camera(Camera cam);
			[CCode (cname = "renderer_set_color_correction")]
			public void set_color_correction(AssetHandle t);
			[CCode (cname = "renderer_set_vignetting")]
			public void set_vignetting(AssetHandle v);
			[CCode (cname = "renderer_set_glitch")]
			public void set_glitch(float glitch);
			[CCode (cname = "renderer_set_skydome_enabled")]
			public void set_skydome_enabled(bool enabled);
			[CCode (cname = "renderer_set_sea_enabled")]
			public void set_sea_enabled(bool enabled);
			[CCode (cname = "renderer_set_tod")]
			public void set_tod(float tod, int seed);
			[CCode (cname = "renderer_add")]
			public void add(RenderCObject ro);
			[CCode (cname = "renderer_add_dyn_light")]
			public void add_dyn_light(entities.Light l);
			[CCode (cname = "renderer_render")]
			public void render();
		}
	}

	namespace entities {
		[Compact]
		[CCode (cname = "particles", cprefix="", free_function = "override_free")]
		public class Particles {
			public Vec3 position;
			public Quat rotation;
			public Vec3 scale;
			public AssetHandle effect;
			public float rate;
			public int count;
			public bool[]  actives;
			public float[] seeds;
			public float[] times;
			public float[] rotations;
			public Vec3[]  scales;
			public Vec4[]  colors;
			public Vec3[]  positions;
			public Vec3[]  velocities;
			public GL.GLuint vertex_buff;
			public float[] vertex_data;

			[CCode (cname = "particles_new")]
			public Particles ();
			[CCode (cname = "particles_delete")]
			public void delete();
			[CCode (cname = "particles_set_effect")]
			public void set_effect(AssetHandle effect);
			[CCode (cname = "particles_update")]
			public void update(float timestep, Camera cam);
		}

		[Compact]
		[CCode (cname = "landscape_blobtree", cprefix="", free_function = "override_free")]
		public class LandscapeBlobtree {
			public Sphere bound;
			public bool is_leaf;
			public int chunk_index;
			public LandscapeBlobtree child0;
			public LandscapeBlobtree child1;
			public LandscapeBlobtree child2;
			public LandscapeBlobtree child3;
			[CCode (cname = "landscape_blobtree_new")]
			public LandscapeBlobtree (Landscape ls);
			[CCode (cname = "landscape_blobtree_delete")]
			public void delete();
			[CCode (cname = "landscape_blobtree_generate")]
			public static void generate(Landscape* l);
		}

		[Compact]
		[CCode (cname = "landscape", cprefix="", free_function = "override_free")]
		public class Landscape {
			public AssetHandle heightmap;
			public AssetHandle attribmap;
			public assets.Image attribimage;
			public float scale;
			public float size_x;
			public float size_y;
			public LandscapeBlobtree blobtree;
			public AssetHandle ground0;
			public AssetHandle ground1;
			public AssetHandle ground2;
			public AssetHandle ground3;
			public AssetHandle ground0_nm;
			public AssetHandle ground1_nm;
			public AssetHandle ground2_nm;
			public AssetHandle ground3_nm;

			[CCode (cname = "landscape_new")]
			public Landscape();
			[CCode (cname = "landscape_delete")]
			public void delete();
			[CCode (cname = "landscape_world")]
			Mat4  world();
			[CCode (cname = "landscape_world_normal")]
			Mat3  world_normal();
			[CCode (cname = "landscape_height")]
			float height(Vec2 pos);
			[CCode (cname = "landscape_normal")]
			Vec3  normal(Vec2 pos);
			[CCode (cname = "landscape_axis")]
			Mat3  axis(Vec2 pos);
			[CCode (cname = "landscape_paint_height")]
			void paint_height(Vec2 pos, float radius, float value, float opacity);
			[CCode (cname = "landscape_paint_color")]
			void paint_color(Vec2 pos, float radius, int type, float opacity);
			[CCode (cname = "landscape_chunks")]
			void chunks(Vec2 pos, ref assets.TerrainChunk[] chunks_out);
		}


		[Compact]
		[CCode (cname = "light", cprefix="", free_function = "override_free")]
		public class Light {
			[CCode (cname = "position")]
			public Vec3 _position;
			public Vec3 target;
			
			public Vec3 diffuse_color;
			public Vec3 specular_color;
			public Vec3 ambient_color;
			
			public float power;
			public float falloff;
			
			public bool enabled;
			public bool cast_shadows;
			
			[CCode (cname = "type")]
			public int _type;
			
			/* Shadow Mapping */
			public Vec3 shadow_color;
			public int shadow_map_width;
			public int shadow_map_height;
			
			/* Orthographic Shadow Mapping */
			public bool orthographic;
			public float ortho_width;
			public float ortho_height;
			
			/* Projection Shadow Mapping */
			public float fov;
			public float aspect_ratio;
			
			[CCode (cname = "light_new")]
			public Light();
			[CCode (cname = "light_position")]
			public static Light position(Vec3 position);
			[CCode (cname = "light_type")]
			public static Light type(Vec3 position, int type);
			[CCode (cname = "light_delete")]
			public void delete();
			[CCode (cname = "light_set_type")]
			public void set_type(int type);
			[CCode (cname = "light_direction")]
			public Vec3 direction();
			[CCode (cname = "light_view_matrix")]
			public Mat4 view_matrix();
			[CCode (cname = "light_proj_matrix")]
			public Mat4 proj_matrix();
		}


		[Compact]
		[CCode (cname = "static_object", cprefix="", free_function = "override_free")]
		public class StaticCObject {
			public Vec3 position;
			public Vec3 scale;
			public Quat rotation;
			public bool active;
			public bool recieve_shadows;
			public bool cast_shadows;
			public AssetHandle renderable;
			public AssetHandle collision_body;

			[CCode (cname = "static_object_new")]
			public StaticCObject();
			[CCode (cname = "static_object_delete")]
			public void delete();
			[CCode (cname = "static_object_world")]
			public Mat4 world();
			[CCode (cname = "static_object_world_normal")]
			public Mat3 world_normal();

		}

		[Compact]
		[CCode (cname = "animated_object", cprefix="", free_function = "override_free")]
		public class AnimatedCObject {
			public Vec3 position;
			public Vec3 scale;
			public Quat rotation;
			public float animation_time;
			public AssetHandle renderable;
			public AssetHandle animation;
			public AssetHandle skeleton;
			public assets.Frame pose;
			
			[CCode (cname = "animated_object_new")]
			public AnimatedCObject();
			[CCode (cname = "animated_object_delete")]
			public void delete();
			[CCode (cname = "animated_object_load_skeleton")]
			public void load_skeleton(AssetHandle ah);
			[CCode (cname = "animated_object_update")]
			public void update(float timestep);
		}

		[Compact]
		[CCode (cname = "physics_object", cprefix="", free_function = "override_free")]
		public class PhysicsCObject {
			public Vec3 position;
			public Vec3 scale;
			public Quat rotation;
			public Vec3 velocity;
			public Quat angular_velocity;
			public Vec3 acceleration;
			public Quat angular_acceleration;
			public Vec3 previous_position;
			public float elasticity;
			public float friction;
			public bool active;
			public bool recieve_shadows;
			public bool cast_shadows;
			public AssetHandle renderable;
			//asset_hndl collision_body;

			[CCode (cname = "physics_object_new")]
			public PhysicsCObject();
			[CCode (cname = "physics_object_delete")]
			void delete();
			[CCode (cname = "physics_object_collide_static")]
			void collide_static(StaticCObject so, float timestep);
			[CCode (cname = "physics_object_update")]
			void update(float timestep);
		}

		
		[SimpleType]
		[CCode (cname = "instance_data", cprefix="")]
		public class InstanceData {
			public Vec3 position;
			public Vec3 scale;
			public Quat rotation;
			public Mat4 world;
			public Mat3 world_normal;
		}


		[Compact]
		[CCode (cname = "instance_object", cprefix="", free_function = "override_free")]
		public class InstanceCObject {
			public int num_instances;
			public InstanceData[] instances;
			public GL.GLuint world_buffer;
			public Sphere bound;
			public AssetHandle renderable;
			public AssetHandle collision_body;
			
			[CCode (cname = "instance_object_new")]
			public InstanceCObject();
			[CCode (cname = "instance_object_delete")]
			public void delete();
			[CCode (cname = "instance_object_update")]
			public void update();
			[CCode (cname = "instance_object_add_instance")]
			public void add_instance(Vec3 position, Vec3 scale, Quat rotation);
			[CCode (cname = "instance_object_rem_instance")]
			public void rem_instance(int i);
			[CCode (cname = "instance_object_world")]
			public Mat4 world(int i);
			[CCode (cname = "instance_object_world_normal")]
			public Mat3 world_normal(int i);
		}	
	}

	namespace ui {
		[CCode (cname = "int", cprefix = "TEXT_ALIGN_")]
		public enum TextAlign {
			LEFT,
			RIGHT,
			CENTER,
			TOP,
			BOTTOM
		}

		[CCode (has_target = false)]
		public delegate void OnTextSelect(UIText entry);
		[CCode (has_target = false)]
		public delegate void OnOptionSelect(UIOption entry);

		[CCode (cname = "ui_button_onclick", instance_pos = 0.1, has_target = false)]
		public delegate void OnClick(UIButton entry, CObject data);


		[Compact]
		[CCode (cname = "ui_button", cprefix="", free_function = "override_free")]	
		public class UIButton {
			public UIRectangle back;
			public UIText label;
			public Vec4 up_color;
			public Vec4 down_color;
			public OnClick onclick;
			public CObject onclick_data;
			public bool active;
			public bool enabled;
			public bool pressed;

			[CCode (cname = "ui_button_new")]
			public UIButton (string fmt, ...);

			public static UIButton create(string fmt, ...) {
      			return (UIButton)(new UIElem(fmt, type_find("ui_button", sizeof(UIButton))));
			} 
			[CCode (cname = "ui_elem_get")]
			public static UIButton get(string fmt);
			[CCode (cname = "ui_button_delete")]
			public void delete();
			[CCode (cname = "ui_button_move")]
			public void move(Vec2 pos);
			[CCode (cname = "ui_button_resize")]
			public void resize(Vec2 size);
			[CCode (cname = "ui_button_set_label")]
			public void set_label(string label);
			[CCode (cname = "ui_button_set_label_color")]
			public void set_label_color(Vec4 color);
			[CCode (cname = "ui_button_set_font")]
			public void set_font(AssetHandle f);
			[CCode (cname = "ui_button_set_onclick")]
			public void set_onclick(OnClick onclick);
			[CCode (cname = "ui_button_set_onclick_data")]
			public void set_onclick_data(CObject data);
			[CCode (cname = "ui_button_set_active")]
			public void set_active(bool active);
			[CCode (cname = "ui_button_set_enabled")]
			public void set_enabled(bool enabled);
			[CCode (cname = "ui_button_set_texture")]
			public void set_texture(AssetHandle tex, int width, int height, bool tile);
			[CCode (cname = "ui_button_disable")]
			public void disable();
			[CCode (cname = "ui_button_enable")]
			public void enable();
			[CCode (cname = "ui_button_position")]
			public Vec2 position();
			[CCode (cname = "ui_button_size")]
			public Vec2 size();
			[CCode (cname = "ui_button_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_button_update")]
			public void update();
			[CCode (cname = "ui_button_render")]
			public void render();
			[CCode (cname = "ui_button_contains_point")]
			public bool contains_point(Vec2 pos);
		}

		[Compact]
		[CCode (cname = "ui_browser", cprefix="", free_function = "override_free")]
		public class UIBrowser {
			public UIRectangle outer;
			public UIListbox inner;
			public FPath directory;
			public bool active;

			[CCode (cname = "ui_browser_new")]
			public UIBrowser();

			public static UIBrowser create(string fmt, ...) {
      			return (UIBrowser)(new UIElem(fmt, type_find("ui_browser", sizeof(UIBrowser))));
			} 
			[CCode (cname = "ui_browser_delete")]
			public void delete();
			[CCode (cname = "ui_browser_chdir")]
			public void chdir(FPath dir);
			[CCode (cname = "ui_browser_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_browser_update")]
			public void update();
			[CCode (cname = "ui_browser_render")]
			public void render();
		}

		[Compact]
		[CCode (cname = "ui_dialog", cprefix="", free_function = "override_free")]
		public class UIDialog {
			public UIButton back;
			public UIText title;
			public UIText contents;
			public bool single_button;
			public UIButton left;
			public UIButton right;

			[CCode (cname = "ui_dialog_new")]
			public UIDialog();
			public static UIDialog create(string fmt, ...) {
				return (UIDialog)(new UIElem(fmt, type_find("ui_dialog", sizeof(UIDialog))));
			} 
			[CCode (cname = "ui_dialog_delete")]
			public void delete();
			[CCode (cname = "ui_dialog_set_single_button")]
			public void set_single_button(bool single);
			[CCode (cname = "ui_dialog_set_title")]
			public void set_title(string title);
			[CCode (cname = "ui_dialog_set_contents")]
			public void set_contents(string contents);
			[CCode (cname = "ui_dialog_set_button_left")]
			public void set_button_left(string left, OnClick onleft);
			[CCode (cname = "ui_dialog_set_button_right")]
			public void set_button_right(string right, OnClick onright);
			[CCode (cname = "ui_dialog_set_font")]
			public void set_font(AssetHandle fnt);
			[CCode (cname = "ui_dialog_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_dialog_update")]
			public void update();
			[CCode (cname = "ui_dialog_render")]
			public void render();
		}

		[Compact]
		[CCode (cname = "ui_option", cprefix="", free_function = "override_free")]
		public class UIOption {
			public UIButton label;
			public int num_options;
			public UIButton[] options;
			public bool active;
			public int selected;
			public OnOptionSelect onselect;

			[CCode (cname = "ui_option_new")]
			public UIOption();
			public static UIOption create(string fmt, ...) {
				return (UIOption)(new UIElem(fmt, type_find("ui_option", sizeof(UIOption))));
			} 
			[CCode (cname = "ui_option_delete")]
			public void delete();
			[CCode (cname = "ui_option_set_active")]
			public void set_active(bool active);
			[CCode (cname = "ui_option_move")]
			public void move(Vec2 position);
			[CCode (cname = "ui_option_set_options")]
			public void set_options(string label, int num, string[] values);
			[CCode (cname = "ui_option_get_selected")]
			public int  get_selected();
			[CCode (cname = "ui_option_set_selected")]
			public void set_selected(int selected);
			[CCode (cname = "ui_option_set_onselect")]
			public void set_onselect(OnOptionSelect onselect);
			[CCode (cname = "ui_option_deactivate")]
			public void deactivate();
			[CCode (cname = "ui_option_activate")]
			public void activate();
			[CCode (cname = "ui_option_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_option_update")]
			public void update();
			[CCode (cname = "ui_option_render")]
			public void render();
		}

		[Compact]
		[CCode (cname = "ui_slider", cprefix="", free_function = "override_free")]
		public class UISlider {
			public UIButton label;
			public UIRectangle slot;
			public UIRectangle bar;  
			public bool pressed;
			public bool active;
			public float amount;
			[CCode (cname = "ui_slider_new")]
			public UISlider();
			public static UISlider create(string fmt, ...) {
				return (UISlider)(new UIElem(fmt, type_find("ui_slider", sizeof(UISlider))));
			} 
			[CCode (cname = "ui_slider_delete")]
			public void delete();
		}

		[Compact]
		[CCode (cname = "ui_spinner", cprefix="", free_function = "override_free")]
		public class UISpinner {
			[CCode (cname = "ui_spinner_new")]
			public UISpinner();
			public static UISpinner create(string fmt, ...) {
				return (UISpinner)(new UIElem(fmt, type_find("ui_spinner", sizeof(UISpinner))));
			} 
			[CCode (cname = "ui_spinner_delete")]
			public void delete();
			[CCode (cname = "ui_spinner_set_label")]
			public void set_label(string label);
			[CCode (cname = "ui_spinner_move")]
			public void move(Vec2 position);
			[CCode (cname = "ui_spinner_set_amount")]
			public void set_amount(float amount);
			[CCode (cname = "ui_spinner_get_amount")]
			public float get_amount();
			[CCode (cname = "ui_spinner_set_active")]
			public void set_active(bool active);
			[CCode (cname = "ui_spinner_deactivate")]
			public void deactivate();
			[CCode (cname = "ui_spinner_activate")]
			public void activate();
			[CCode (cname = "ui_spinner_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_spinner_update")]
			public void update();
			[CCode (cname = "ui_spinner_render")]
			public void render();
		}

		[Compact]
		[CCode (cname = "ui_style", cprefix="", free_function = "override_free")]
		public class UIStyle {
			/* Box */
			public FPath box_back_image;
			public int   box_back_width;
			public int   box_back_height;
			public bool  box_back_tile;
			public int   box_back_border_size;
			public Vec4  box_back_border_color;
			public float box_glitch;
			public int   box_blend_src;
			public int   box_blend_dst;
			public Vec4 box_text_color;
			public Vec4 box_label_color;
			public int  box_text_halign;
			public int  box_text_valign;
			public Vec4 box_up_color;
			public Vec4 box_down_color;
			public Vec4 box_inset_color;
			/* Text  */
			public FPath text_font;
			public Vec4  text_color;
			public Vec2  text_scale;
			/* Spinner */
			public FPath spinner_image;
			public float spinner_speed;			
		}

		[Compact]
		[CCode (cname = "ui_textbox", cprefix="", free_function = "override_free")]
		public class UITextbox {
			[CCode (cname = "ui_textbox_new")]
			public UIRectangle outer;
			public UIRectangle inner;
			public UIText contents;
			public UIText label;
			public bool password;
			public int max_chars;
			public bool selected;
			public bool active;
			public bool enabled;			

			[CCode (cname = "ui_textbox_new")]
			public UITextbox();
			public static UITextbox create(string fmt, ...) {
				return (UITextbox)(new UIElem(fmt, type_find("ui_textbox", sizeof(UITextbox))));
			} 
			[CCode (cname = "ui_textbox_delete")]
			public void delete();
			[CCode (cname = "ui_textbox_set_password")]
			public void set_password(bool password);
			[CCode (cname = "ui_textbox_set_max_chars")]
			public void set_max_chars(int l);
			[CCode (cname = "ui_textbox_addchar")]
			public void addchar(char c);
			[CCode (cname = "ui_textbox_rmchar")]
			public void rmchar();
			[CCode (cname = "ui_textbox_move")]
			public void move(Vec2 pos);
			[CCode (cname = "ui_textbox_resize")]
			public void resize(Vec2 size);
			[CCode (cname = "ui_textbox_set_font")]
			public void set_font(AssetHandle f);
			[CCode (cname = "ui_textbox_set_label")]
			public void set_label(string label);
			[CCode (cname = "ui_textbox_set_contents")]
			public void set_contents(string label);
			[CCode (cname = "ui_textbox_set_alignment")]
			public void set_alignment(int halign, int valign);
			[CCode (cname = "ui_textbox_disable")]
			public void disable();
			[CCode (cname = "ui_textbox_enable")]
			public void enable();
			[CCode (cname = "ui_textbox_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_textbox_update")]
			public void update();
			[CCode (cname = "ui_textbox_render")]
			public void render();
			[CCode (cname = "ui_textbox_contains_point")]
			public bool contains_point(Vec2 p);
		}

		[Compact]
		[CCode (cname = "ui_toast", cprefix="", free_function = "override_free")]
		public class UIToast {
			public UIText label;  
			public float opacity;
			public bool active;

			[CCode (cname = "ui_toast_new")]
			public UIToast();
			public static UIToast create(string fmt, ...) {
				return (UIToast)(new UIElem(fmt, type_find("ui_toast", sizeof(UIToast))));
			} 
			[CCode (cname = "ui_toast_delete")]
			public void delete();
			[CCode (cname = "ui_toast_popup")]
			public void popup(string fmt, ...);
			[CCode (cname = "ui_toast_set_label")]
			public void set_label(string label);
			[CCode (cname = "ui_toast_set_font")]
			public void set_font(AssetHandle f);
			[CCode (cname = "ui_toast_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_toast_update")]
			public void update();
			[CCode (cname = "ui_toast_render")]
			public void render();
						
		}

		[Compact]
		[CCode (cname = "ui_listbox", cprefix="", free_function = "override_free")]
		public class UIListbox {
			public UIRectangle back;
			public int scroll;  
			public int num_items;
			public UIText[] items;
			public bool active;
			public OnTextSelect onselect;

			[CCode (cname = "ui_listbox_new")]
			public UIListbox();
			public static UIListbox create(string fmt, ...) {
				return (UIListbox)(new UIElem(fmt, type_find("ui_listbox", sizeof(UIListbox))));
			} 
			[CCode (cname = "ui_listbox_delete")]
			public void delete();
			[CCode (cname = "ui_listbox_clear")]
			public void clear();
			[CCode (cname = "ui_listbox_add_item")]
			public UIText add_item(string item);
			[CCode (cname = "ui_listbox_move")]
			public void move(Vec2 pos);
			[CCode (cname = "ui_listbox_resize")]
			public void resize(Vec2 size);
			[CCode (cname = "ui_listbox_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_listbox_update")]
			public void update();
			[CCode (cname = "ui_listbox_render")]
			public void render();
			[CCode (cname = "ui_listbox_set_onselect")]
			public void set_onselect(OnTextSelect onselect);
		}

		[Compact]
		[CCode (cname = "ui_text", cprefix="", free_function = "override_free")]
		public class UIText {
			[CCode (cname = "string")]
			public string text;
			public GL.GLuint positions_buffer;
			public GL.GLuint texcoords_buffer;
			public GL.GLuint colors_buffer;
			public int num_positions;
			public int num_texcoords;
			public Vec2 top_left;
			public Vec2 bottom_right;
			/* public */
			public AssetHandle font;  
			public Vec2 position;
			public Vec2 scale;
			public Vec4 color;
			public int halign;
			public int valign;
			public float line_spacing;
			public float char_spacing;
			public float rotation;
			public float line_length;
			public bool active;

			[CCode (cname = "ui_text_new")]
			public UIText();
			public static UIText create(string fmt, ...) {
				return (UIText)(new UIElem(fmt, type_find("ui_text", sizeof(UIText))));
			} 
			[CCode (cname = "ui_text_new_string")]
			public static UIText fromString(string str);
			[CCode (cname = "ui_text_delete")]
			public void delete();
			[CCode (cname = "ui_text_move")]
			public void move(Vec2 pos);
			[CCode (cname = "ui_text_set_font")]
			public void set_font(AssetHandle font);
			[CCode (cname = "ui_text_set_color")]
			public void set_color(Vec4 color);
			[CCode (cname = "ui_text_set_scale")]
			public void set_scale(Vec2 scale);
			[CCode (cname = "ui_text_align")]
			public void align(int halign, int valign);
			[CCode (cname = "ui_text_draw")]
			public void draw();
			[CCode (cname = "ui_text_draw_string")]
			public void draw_string(string str);
			[CCode (cname = "ui_text_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_text_update")]
			public void update();
			[CCode (cname = "ui_text_render")]
			public void render();
			[CCode (cname = "ui_text_contains_point")]
			public bool contains_point(Vec2 position);
		}

		[Compact]
		[CCode (cname = "ui_rectangle", cprefix="")]
		public class UIRectangle {
			public Vec2 top_left;
			public Vec2 bottom_right;
			public Vec4 color;
			public AssetHandle texture;
			public int texture_width;
			public int texture_height;
			public bool texture_tile;
			public float border_size;
			public Vec4 border_color;
			public float glitch;
			public float time;
			public GL.GLenu blend_src;
			public GL.GLenu blend_dst;
			public bool active;

			[CCode (cname = "ui_rectangle_new")]
			public UIRectangle();
			public static UIRectangle create(string fmt, ...) {
				return (UIRectangle)(new UIElem(fmt, type_find("ui_rectangle", sizeof(UIRectangle))));
			} 
			[CCode (cname = "ui_rectangle_delete")]
			public void delete();
			[CCode (cname = "ui_rectangle_event")]
			public void event(SDL.Event e);
			[CCode (cname = "ui_rectangle_update")]
			public void update();
			[CCode (cname = "ui_rectangle_render")]
			public void render();
			[CCode (cname = "ui_rectangle_move")]
			public void move(Vec2 pos);
			[CCode (cname = "ui_rectangle_resize")]
			public void resize(Vec2 size);
			[CCode (cname = "ui_rectangle_set_texture")]
			public void set_texture(AssetHandle tex, int width, int height, bool tile);
			[CCode (cname = "ui_rectangle_set_border")]
			public void set_border(float size, Vec4 color);
			[CCode (cname = "ui_rectangle_set_color")]
			public void set_color(Vec4 color);
			[CCode (cname = "ui_rectangle_set_glitch")]
			public void set_glitch(float glitch);
			[CCode (cname = "ui_rectangle_center")]
			public Vec2 center();
			[CCode (cname = "ui_rectangle_contains_point")]
			public bool contains_point(Vec2 pos);
			[CCode (cname = "ui_rectangle_blend")]
			public void blend(GL.GLenu blend_src, GL.GLenu blend_dst);
			[CCode (cname = "ui_rectangle_position")]
			public Vec2 position();
			[CCode (cname = "ui_rectangle_size")]
			public Vec2 size();
		}
	}
}

