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

[CCode (cprefix = "", lower_case_cprefix = "", cheader_filename = "corange.h")]
namespace corange {

	[SimpleType]
	public struct GLuint : uint32 {}
	[SimpleType]
	public struct GLenu : int {}

	[SimpleType]
	public struct GLint : int32 {}

	[CCode (cname = "corange_init")]
	public static void init (string core_assets_path);

	[CCode (cname = "corange_finish")]
	public static void finish();

	[SimpleType]
	[CCode (cname = "fpath")]
	public struct FPath {
		public char* ptr;

		[CCode (cname = "P")]
		public static FPath create(string path);

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


	public void timestamp(string outs);

	public void frame_begin();
	public void frame_end();

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
		public void* Graphics();
		public void context_delete();
		public void context_current();
		
		public static int get_multisamples();
		public static bool get_fullscreen();
		public static int get_antialiasing();
		
		public static void viewport_set_title(string title);
		public static void viewport_set_icon(FPath icon);
		public static void viewport_set_position(int x, int y);
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

	[SimpleType]
	[CCode (cname = "music")]
	public struct Music : uint64 {
		public static Music mp3_load_file(string filename);
		public static Music ogg_load_file(string filename);
		public void delete();
		public void play();
		public static void pause();
		public static void resume();
		public static void stop();
		
		public static void set_volume(float volume);
		public static float get_volume();
	}

	[SimpleType]
	[CCode (cname = "sound")]
	public struct Sound : uint64 {
		public static Sound wav_load_file(string filename);
		public void delete();
		
		public int play();
		public int play_looped(int loops);
		
		public int play_at(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir);
		public int play_at_looped(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir, int loops);
	}

	[CCode (cname = "MAX_STICKS")]
	public const int MAX_STICKS;

	[SimpleType]
	[CCode (cname = "joystick")]
	public struct Joystick {
		public static void init();
		public static void finish();
		
		public static int count();
		public static void* get(int i);
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

	//  collision (*colfunc)(void* x, vec3* pos, vec3* vel)

	[CCode (has_target = false)]
	public delegate Collision ColFunc (void* obj, ref Vec3 pos, ref Vec3 vel);
	
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

		public static void collision_response_slide(void* obj, ref Vec3 pos, ref Vec3 vel, ColFunc func);
	}

	[CCode (has_target = false)]
	public delegate void EntityNew ();
	
	[CCode (has_target = false)]
	public delegate void EntityDel (void* entity);
	
	[SimpleType]
	[CCode (cname = "entity")]
	public struct Entity : int {
		public static void init();
		public static void finish();
		[CCode (cname = "entity_new")]
		public Entity(string fmt, int type, ...);
		[CCode (cname = "entity_handler_cast")]
		public void handler(EntityNew ref_func, EntityDel unref_func);
		public static bool exists(string fmt, ...);
		public static void* get(string fmt, ...);
		public static void delete(string fmt, ...);
		public string name();
		public string typename();
		[CCode (cname = "entity_type_count_type_id")]
		public static int type_count(int type_id);
	}

	[SimpleType]
	[CCode (cname = "entities")]
	public struct Entities : int {
		[CCode (cname = "entities_new")]
		public Entities(string fmt, int count, int type);
		public static void get_type_id(ref Entity[] entities, ref int returned, int type_id);

	}

	[Compact]
	[CCode (cname = "camera")]
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
		[CCode (cname = "animation")]
		public class Animation {
			public int frame_count;
			public float frame_time;
			Frame[] frames;
			[CCode (cname = "animation_new")]
			public Animation();
			public void delete();
			public float duration();
			
			public Frame add_frame(Frame base);
			public Frame frame(int i);
			public Frame sample(float time);
			public void sample_to(float time, Frame result);
			
			public static Animation ani_load_file(string filename);
		}

		[SimpleType]
		[CCode (cname = "ctri")]
		public struct Ctri {
			public Vec3 a;
			public Vec3 b;
			public Vec3 c;
			public Vec3 norm;
			public Sphere bound;

			[CCode (cname = "ctri_new")]
			public Ctri(Vec3 a, Vec3 b, Vec3 c, Vec3 norm);
			Ctri transform(Mat4 m, Mat3 mn);
			Ctri transform_space(Mat3 s, Mat3 sn);
			bool inside_plane(Plane p);
			bool outside_plane(Plane p);
			bool intersects_plane(Plane p);
		}

		[Compact]
		[CCode (cname = "cmesh")]
		public class CMesh {
			public bool is_leaf;
			public Plane division;
			public CMesh front;
			public CMesh back;

			//  public Ctri triangles;
			//  public int triangles_num;
			//  public Sphere bound;
			
			public CMesh col_load_file(string filename);
			public void delete();
			
			public Sphere bound();
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
		[CCode (cname = "image")]
		public class Image {
			public int width;
			public int height;
			public uchar[] data;
			public int repeat_type;
			public int sample_type;
			[CCode (cname = "image_new")]
			public Image (int width, int height, uchar[] data);
			public static Image empty (int width, int height);
			public static Image blank (int width, int height);

			public Image copy();
			public void delete();
			public Vec4 get(int u, int v);
			public void set(int u, int v, Vec4 c);
			public void map(MapFunc func);
			
			public Image red_channel();
			public Image green_channel();
			public Image blue_channel();
			public Image alpha_channel();
			
			public void bgr_to_rgb();
			public void rotate_90_clockwise();
			public void rotate_90_counterclockwise();
			public void rotate_180();
			public void rotate_inplace(float amount);
			public void flip_horizontal();
			public void flip_vertical();
			
			public void fill(Vec4 color);
			public void fill_black();
			public void fill_white();
			
			public void apply_gamma(float amount);
			public void to_gamma();
			public void from_gamma();
			
			public void rgb_to_hsv();
			public void hsv_to_rgb();
			public void hsv_scalar();
			
			public Vec4 min();
			public Vec4 max();
			public Vec4 mean();
			public Vec4 var();
			public Vec4 std();
			public void auto_contrast();
			public void set_to_mask();
			public void set_brightness(float brightness);
			
			public Vec4 alpha_mean();
			
			public Image get_subimage(int left, int top, int width, int height);
			
			public void set_subimage(int left, int top, Image src);
			public void paste_subimage(int left, int top, Image src);
			
			public Vec4 sample(Vec2 uv);
			public void paint(Vec2 uv, Vec4 color);
			
			public void scale(Vec2 scale);
			
			public void mask_not();
			public void mask_binary(Image other, MaskBinaryFunc func);
			public void mask_or(Image other);
			public void mask_and(Image other);
			public void mask_xor(Image other);
			public void mask_nor(Image other);
			public void mask_nand(Image other);
			public void mask_xnor(Image other);
			
			public Image mask_alpha();
			public Image mask_nearest();
			public Image mask_flood_fill(int u, int v, float tolerance);
			public Image mask_difference(Vec4 color, float tolerance);
			
			public long mask_count();
			public void mask_median(ref int u, ref int v);
			public void mask_random(ref int u, ref int v);
			
			public Image read_from_file(string filename);
			public Image tga_load_file(string filename);
			public Image bmp_load_file(string filename);
			
			public void write_to_file(string filename);
			public void tga_save_file(string filename);
			public void bmp_save_file(string filename);
						
		}

		[Compact]
		[CCode (cname = "frame")]
		public class Frame {
			public int joint_count;
			public int[] joint_parents;
			public Vec3[] joint_positions;
			public Quat[] joint_rotations;
			public Mat4[] transforms;
			public Mat4[] transforms_inv;
			[CCode (cname = "frame_new")]
			public Frame();
			public Frame copy();
			public Frame interpolate(Frame other, float amount);
		}

		[Compact]
		[CCode (cname = "config")]
		public class Config {
			public data.Dict entries;
			[CCode (cname = "cfg_load_file")]
			public Config(string filename);
			[CCode (cname = "cfg_save_file")]
			public void save();
			public void delete();
			[CCode (cname = "config_string")]
			public string str(string key);
			public int   int(string key);
			public float float(string key);
			public bool  bool(string key);
			
			public void set_string(string key, string val);
			public void set_int(string key, int val);
			public void set_float(string key, float val);
			public void set_bool(string key, bool val);
			
			public entities.AssetHandle option_graphics_asset(string key, entities.AssetHandle high, entities.AssetHandle medium, entities.AssetHandle low);
			public int option_graphics_int(string key, int high, int medium, int low);
			public float option_graphics_float(string key, float high, float medium, float low);
		}

		[SimpleType]
		[CCode (cname = "effect_key")]
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
		[CCode (cname = "effect")]
		public class Effect {
			public entities.AssetHandle texture;
			public entities.AssetHandle texture_nm;
			public GLuint blend_src;
			public GLuint blend_dst;
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
			public static Effect load_file(string filename);
			public void delete();
			
			public EffectKey get_key(float ptime);
		}

		[Compact]
		[CCode (cname = "font")]
		public class Font {
			public entities.AssetHandle texture_map;
			public int width;
			public int height;
			public Vec2[] locations;
			public Vec2[] sizes;
			public Vec2[] offsets;
			[CCode (cname = "font_load_file")]
			public Font(string filename);
			public void delete();
		}

		[Compact]
		[CCode (cname = "lang")]
		public class Lang {
			public data.Dict map;
			[CCode (cname = "lang_load_file")]
			public Lang(string filename);
			public void delete();
			public string get(string id);
			public static void set_language(entities.AssetHandle t);
			public static string S(string id);
		}
		
		[Compact]
		[CCode (cname = "shader")]
		public class Shader  {
			public GLuint shader;
			public static Shader vs_load_file(string filename);
			public static Shader fs_load_file(string filename);
			public static Shader gs_load_file(string filename);
			public static Shader tcs_load_file(string filename);
			public static Shader tes_load_file(string filename);
			
			void delete();
			void print_log();
			GLuint handle();
		}

		[Compact]
		[CCode (cname = "shader_program")]
		public class ShaderProgram {
			public GLuint shader;
			[CCode (cname = "shader_program_new")]
			public ShaderProgram();
			public void delete();

			public bool has_shader(Shader s);
			public void attach_shader(Shader s);
			public void link();
			
			public void print_info();
			public void print_log();
			
			public GLuint handle();
			public GLint get_attribute(string name);
			
			public void enable();
			public void disable();
			
			public void set_int(string name, int val);
			public void set_float(string name, float val);
			public void set_vec2(string name, Vec2 val);
			public void set_vec3(string name, Vec3 val);
			public void set_vec4(string name, Vec4 val);
			public void set_mat3(string name, Mat3 val);
			public void set_mat4(string name, Mat4 val);
			public void set_float_array(string name, ref float vals, int count);
			public void set_vec2_array(string name, ref Vec2 vals, int count);
			public void set_vec3_array(string name, ref Vec3 vals, int count);
			public void set_vec4_array(string name, ref Vec4 vals, int count);
			public void set_mat4_array(string name, ref Mat4 vals, int count);
			public void set_texture(string name, int index, entities.AssetHandle t);
			public void set_texture_id(string name, int index, GLint t);
			
			public void enable_attribute(string name, int count, int stride, void* ptr);
			public void enable_attribute_instance(string name, int count, int stride, void* ptr);
			public void disable_attribute(string name);
			
			public void enable_attribute_instance_matrix(string name, void* ptr);
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
		[CCode (cname = "material_item")]
		public struct MaterialItem {
			public int as_int;
			public float as_float;
			public Vec2 as_vec2;
			public Vec3 as_vec3;
			public Vec4 as_vec4;
			public entities.AssetHandle as_asset;
		}

		[Compact]
		[CCode (cname = "material_entry")]
		public class MaterialEntry {
			public ShaderProgram program;
			public int num_items;
			public int[] types;
			public string[] names;
			public MaterialItem[] items;
			public void delete();
			public MaterialItem item(string name);
			public bool has_item(string name);
			public void add_item(string name, int type, MaterialItem mi);
		}

		[Compact]
		[CCode (cname = "material")]
		public class Material {
			public int num_entries;
			public MaterialEntry[] entries;
			[CCode (cname = "material_new")]
			public Material();
			public void delete();

			[CCode (cname = "mat_load_file")]
			public static Material load_file(string filename);
			
			public MaterialEntry get_entry(int index);
			public MaterialEntry add_entry();
			
			public ShaderProgram first_program();
		}	

		[Compact]
		[CCode (cname = "music")]
		public class Music {
			public SDLMixer.Music handle;
			public void delete();
		}
		Music mp3_load_file(string filename);
		Music ogg_load_file(string filename);

		[SimpleType]
		[CCode (cname = "vertex_weight")]
		public class VertexWeight {
			public int bone_ids[3];
			public float bone_weights[3];
		}

		[Compact]
		[CCode (cname = "renderable_surface")]
		public class RenderableSurface {
			public GLuint vertex_vbo;
			public GLuint triangle_vbo;
			public int num_verticies;
			public int num_triangles;
			public Sphere bound;
			[CCode (cname = "renderable_surface_newmaterial_new")]
			public RenderableSurface(Mesh m);
			public static RenderableSurface renderable_surface_new_rigged(Mesh m, VertexWeight* weights);
			void delete();
		}

		[Compact]
		[CCode (cname = "renderable")]
		public class Renderable {
			public RenderableSurface[] surfaces;
			public int num_surfaces;
			public bool is_rigged;
			public entities.AssetHandle material;
			[CCode (cname = "renderable_new")]
			public Renderable();
			public void delete();
			public void add_mesh(Mesh m);
			public void add_model(Model m);
			public void set_material(entities.AssetHandle mat);
			
			public Model to_model();
			
			public static Renderable bmf_load_file(string filename);
			public static Renderable obj_load_file(string filename);
			public static Renderable smd_load_file(string filename);
			public static Renderable ply_load_file(string filename);
			
			public void bmf_save_file(string filename);
						
		}
		
		[Compact]
		[CCode (cname = "skeleton")]
		public class Skeleton {
			public int joint_count;
			public string[] joint_names;
			public Frame rest_pose;
			[CCode (cname = "skeleton_new")]
			public Skeleton();
			public void delete();
			public void joint_add(string name, int parent);
			public int joint_id(string name);
			
			public static Skeleton skl_load_file(string filename);
		}

		[Compact]
		[CCode (cname = "sound")]
		public class Sound {
			public SDLMixer.Chunk handle;
			[CCode (cname = "wav_load_file")]
			public Sound(string name);
			public void delete();
			public int play();
			public int play_looped(int loops);
			
			public int play_at(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir);
			public int play_at_looped(Vec3 pos, Vec3 cam_pos, Vec3 cam_dir, int loops);
		}

		[Compact]
		[CCode (cname = "terrain_chunk")]
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
			public GLuint vertex_buffer;
			
			public int num_indicies[7];
			public GLuint index_buffers[7];
			public void delete();
		}

		[Compact]
		[CCode (cname = "terrain")]
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
			public void delete();
			
			public TerrainChunk terrain_get_chunk(int x, int y);
			public void reload_chunk(int i);
			
			public Mat3  tbn(Vec2 position);
			public Mat3  axis(Vec2 position);
			public float height(Vec2 position);
			public Vec3  normal(Vec2 position);
			

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
		[CCode (cname = "bucket")]
		public class Bucket<T> {
			public string key;
			public T item;
			public Bucket next;
			[CCode (cname = "bucket_new")]
			public Bucket(string s, void* item);
			public void map(BucketFunc func);
			public void filter_map(FilterFunc ffunc , BucketFunc bfunc);
			public void delete_with(FilterFunc func);
			public void delete_recursive();
			public void print();
		}

		[CCode (has_target = false)]
		public delegate void DictFunc();

		[Compact]
		[CCode (cname = "dict", cprefix="")]
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
			public string find(T item);
		}		

		[Compact]
		[CCode (cname = "int_list")]
		public class IntList {
			public int num_items;
			public int num_slots;
			public int[] items;  
			[CCode (cname = "int_list_new")]
			public IntList();
			public void delete();

			public void push_back(int item);
			public int pop_back();
			
			public int get(int index);
			public void set(int index, int item);
			
			public bool is_empty();
			
			public void clear();
		}		

		[CCode (has_target = false)]
		public delegate void ListFunc();

		[Compact]
		[CCode (cname = "list")]
		public class List<T> {
			public int num_items;
			public int num_slots;
			public T[] items;
			[CCode (cname = "list_new")]
			public List();
			public void push_back(T item);
			public void* pop_back();
			
			public void* pop_at(int index);
			
			public void remove(T item);
			
			public T get(int index);
			public void set(int index, owned T item);
			
			public bool is_empty();
			
			public void delete();
			public void clear();
			
			public void delete_with(ListFunc func);
			public void clear_with(ListFunc func);
		}		

		[Compact]
		[CCode (cname = "int_bucket")]
		public class IntBucket {
			public List keys;
			public IntList* values;
		}		
		
		[Compact]
		[CCode (cname = "int_hashtable")]
		public class IntHashtable {
			[CCode (cname = "int_hashtable_new")]
			public IntHashtable(int size);
			public IntBucket items;
			public int table_size;
		}		

		[Compact]
		[CCode (cname = "spline")]
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
			public void delete();

			public void add_point(Vec2 p);
			public Vec2 get_point(int i);
			public void set_point(int i, Vec2 p);
			
			public void update();
			public void print();
			
			public float get_x(float y);
			public float get_y(float x);
			public float get_x_between(int low, int high, float y);
			public float get_y_between(int low, int high, float x);
		}

		[Compact]
		[CCode (cname = "color_curves")]
		public class ColorCurves {
			public Spline rgb_spline;
			public Spline r_spline;
			public Spline g_spline;
			public Spline b_spline;
			public Spline a_spline;
			[CCode (cname = "color_curves_load")]
			public ColorCurves(string filename);
			void delete();
			void write_lut(string filename);
			Vec3 map(Vec3 v);
		}		

		[Compact]
		[CCode (cname = "vertex_list")]
		public class VertexList {
			public int num_items;
			public int num_slots;
			public Vertex[] items;  
			[CCode (cname = "vertex_list_new")]
			public VertexList();
			public void delete();

			public void push_back(Vertex item);
			public Vertex pop_back();
			
			public Vertex get(int index);
			public void set(int index, Vertex item);
			
			public void clear();
						
		}		
		
		[Compact]
		[CCode (cname = "vertex_bucket")]
		public class VertexBucket {
			VertexList keys;
			IntList values;
		}		

		[Compact]
		[CCode (cname = "vertex_hashtable")]
		public class VertexHashtable {
			public VertexBucket items;
			public int table_size;
			[CCode (cname = "vertex_hashtable_new")]
			public VertexHashtable(int size);
			[CCode (cname = "vertex_hash")]
			public static int hash(VertexHashtable ht, Vertex v);

			void delete();
			
			void set(Vertex key, int value);
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
		[CCode (cname = "sky")]
		public class Sky {
			public float time;
			public uint32 seed;
			
			public entities.AssetHandle cloud_mesh[14];
			public entities.AssetHandle cloud_tex[14];
			public float cloud_opacity[14];
			
			public entities.AssetHandle sun_sprite;
			public entities.AssetHandle sun_tex;
			
			public entities.AssetHandle moon_sprite;
			public entities.AssetHandle moon_tex;
			
			public entities.AssetHandle stars_sprite;
			public entities.AssetHandle stars_tex;
			
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
			public void delete();
			public void update(float t, uint32 seed);
		}

		[SimpleType]
		[CCode (cname = "render_object")]
		public struct RenderObject {
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
			/* Objects */
			public entities.StaticObject _static_object;
			public entities.InstanceObject _instance_object;
			public entities.AnimatedObject _animated_object;
			public entities.Landscape _landscape;
			public entities.Particles _particles;
			
			/* UI */
			public entities.Light _light;
			public Mat4 paint_axis; 
			public float paint_radius; 

			public RenderObject static(entities.StaticObject s);
			public RenderObject instance(entities.InstanceObject s);
			public RenderObject animated(entities.AnimatedObject a);
			public RenderObject particles(entities.Particles p);
			public RenderObject light(entities.Light l);
			public RenderObject axis(Mat4 a);
			public RenderObject sphere(Sphere s);
			public RenderObject ellipsoid(Ellipsoid e);
			public RenderObject frustum(Frustum f);
			public RenderObject plane(Plane p);
			public RenderObject cmesh(assets.CMesh cm, Mat4 world);
			public RenderObject landscape(entities.Landscape l);
			public RenderObject paint(Mat4 paint_axis, float paint_radius);
			public RenderObject line(Vec3 start, Vec3 end, Vec3 color, float thickness);
			public RenderObject point(Vec3 pos, Vec3 color, float size);
		}

		[Compact]
		[CCode (cname = "renderer")]
		public class Renderer {
			/* Options */
			public entities.AssetHandle options;

			/* Camera */
			public Camera camera;

			/* Lights */
			public int dyn_lights_num;
			public entities.Light dyn_light[13];

			/* Sky */
			public Sky sky;

			/* Materials */
			public entities.AssetHandle mat_static;
			public entities.AssetHandle mat_skin;
			public entities.AssetHandle mat_instance;
			public entities.AssetHandle mat_animated;
			public entities.AssetHandle mat_vegetation;
			public entities.AssetHandle mat_terrain;
			public entities.AssetHandle mat_clear;
			public entities.AssetHandle mat_ui;
			public entities.AssetHandle mat_ssao;
			public entities.AssetHandle mat_compose;
			public entities.AssetHandle mat_tonemap;
			public entities.AssetHandle mat_post0;
			public entities.AssetHandle mat_post1;
			public entities.AssetHandle mat_skydome;
			public entities.AssetHandle mat_depth;
			public entities.AssetHandle mat_depth_ins;
			public entities.AssetHandle mat_depth_ani;
			public entities.AssetHandle mat_depth_veg;
			public entities.AssetHandle mat_depth_ter;
			public entities.AssetHandle mat_sun;
			public entities.AssetHandle mat_clouds;
			public entities.AssetHandle mat_particles;
			public entities.AssetHandle mat_sea;

			/* Meshes */
			public entities.AssetHandle mesh_skydome;
			public entities.AssetHandle mesh_sphere;
			public entities.AssetHandle mesh_sea;

			/* Textures */
			public entities.AssetHandle tex_color_correction;
			public entities.AssetHandle tex_random;
			public entities.AssetHandle tex_random_perlin;
			public entities.AssetHandle tex_environment;
			public entities.AssetHandle tex_vignetting;
			public entities.AssetHandle tex_sea_bump0;
			public entities.AssetHandle tex_sea_bump1;
			public entities.AssetHandle tex_sea_bump2;
			public entities.AssetHandle tex_sea_bump3;
			public entities.AssetHandle tex_sea_env;
			public entities.AssetHandle tex_cube_sea;
			public entities.AssetHandle tex_cube_field;
			public entities.AssetHandle tex_white;
			public entities.AssetHandle tex_grey;
			public entities.AssetHandle tex_skin_lookup;

			/* Buffers */
			public GLuint gfbo;
			public GLuint gdepth_buffer;
			public GLuint gdiffuse_buffer;
			public GLuint gnormals_buffer;

			public GLuint gdiffuse_texture;
			public GLuint gnormals_texture;
			public GLuint gdepth_texture;

			public GLuint ssao_fbo;
			public GLuint ssao_buffer;
			public GLuint ssao_texture;

			public GLuint hdr_fbo;
			public GLuint hdr_buffer;
			public GLuint hdr_texture;

			public GLuint ldr_front_fbo;
			public GLuint ldr_front_buffer;
			public GLuint ldr_front_texture;

			public GLuint ldr_back_fbo;
			public GLuint ldr_back_buffer;
			public GLuint ldr_back_texture;

			public GLuint shadows_fbo[3];
			public GLuint shadows_buffer[3];
			public GLuint shadows_texture[3];

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

			/* Objects */
			public int render_objects_num;
			public RenderObject[] render_objects;

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
			public Renderer (entities.AssetHandle options);
			public void delete();
			public void set_camera(Camera cam);
			public void set_color_correction(entities.AssetHandle t);
			public void set_vignetting(entities.AssetHandle v);
			public void set_glitch(float glitch);
			public void set_skydome_enabled(bool enabled);
			public void set_sea_enabled(bool enabled);
			public void set_tod(float tod, int seed);
			
			public void add(RenderObject ro);
			public void add_dyn_light(entities.Light l);
			
			public void render();
		}
	}

	namespace entities {
		[Compact]
		[CCode (cname = "particles")]
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
			
			public GLuint vertex_buff;
			public float[] vertex_data;

			[CCode (cname = "particles_new")]
			public Particles ();
			public void delete();
			public void set_effect(AssetHandle effect);
			public void update(float timestep, Camera cam);
		}

		[Compact]
		[CCode (cname = "landscape_blobtree")]
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
			public void delete();
			public static void generate(Landscape* l);
		}

		[Compact]
		[CCode (cname = "landscape")]
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
			public void delete();
			Mat4  world();
			Mat3  world_normal();
			float height(Vec2 pos);
			Vec3  normal(Vec2 pos);
			Mat3  axis(Vec2 pos);
			
			void paint_height(Vec2 pos, float radius, float value, float opacity);
			void paint_color(Vec2 pos, float radius, int type, float opacity);
			
			void chunks(Vec2 pos, ref assets.TerrainChunk[] chunks_out);
						
		}


		[Compact]
		[CCode (cname = "light")]
		public class Light {
			public Vec3 position;
			public Vec3 target;
			
			public Vec3 diffuse_color;
			public Vec3 specular_color;
			public Vec3 ambient_color;
			
			public float power;
			public float falloff;
			
			public bool enabled;
			public bool cast_shadows;
			
			public int type;
			
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
			public static Light Position(Vec3 position);
			public static Light Type(Vec3 position, int type);
			public void delete();
			public void set_type(int type);
			public Vec3 direction();
			public Mat4 view_matrix();
			public Mat4 proj_matrix();

		}

		[SimpleType]
		[CCode (cname = "asset_hndl")]
		public struct AssetHandle {
			[CCode (cname = "path")]
			FPath _path;
			[CCode (cname = "ptr")]
			void* _ptr;
			uint32 timestamp;

			[CCode (cname = "asset_hndl_new")]
			public AssetHandle(FPath path);

			[CCode (cname = "asset_hndl_null")]
			public static AssetHandle Null();
			[CCode (cname = "asset_hndl_new_load")]
			public static AssetHandle Load(FPath path);
			[CCode (cname = "asset_hndl_new_ptr")]
			public static AssetHandle Ptr(void* as);

			public bool isnull();
			public FPath path();
			public void* ptr();
			public bool equal(AssetHandle other);
		}


		[Compact]
		[CCode (cname = "static_object")]
		public class StaticObject {
			public Vec3 position;
			public Vec3 scale;
			public Quat rotation;
			
			public bool active;
			public bool recieve_shadows;
			public bool cast_shadows;
		
			public AssetHandle renderable;
			public AssetHandle collision_body;

			[CCode (cname = "static_object_new")]
			public StaticObject();
			public void delete();
			public Mat4 world();
			public Mat3 world_normal();

		}

		[Compact]
		[CCode (cname = "animated_object")]
		public class AnimatedObject {
			public Vec3 position;
			public Vec3 scale;
			public Quat rotation;
		
			public float animation_time;
		
			public AssetHandle renderable;
			public AssetHandle animation;
			public AssetHandle skeleton;
			
			public assets.Frame pose;
			
			[CCode (cname = "animated_object_new")]
			public AnimatedObject();
			public void delete();
			public void object_load_skeleton(AssetHandle ah);
			public void object_update(float timestep);
		}

		[Compact]
		[CCode (cname = "physics_object")]
		public class PhysicsObject {
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
			public PhysicsObject();

			void delete();

			void collide_static(StaticObject so, float timestep);
			void update(float timestep);
		}

		
		[SimpleType]
		[CCode (cname = "instance_data")]
		public class InstanceData {
			public Vec3 position;
			public Vec3 scale;
			public Quat rotation;
			public Mat4 world;
			public Mat3 world_normal;
		}


		[Compact]
		[CCode (cname = "instance_object")]
		public class InstanceObject {
			public int num_instances;
			public InstanceData[] instances;
			
			public GLuint world_buffer;
			
			public Sphere bound;
			public AssetHandle renderable;
			public AssetHandle collision_body;
			
			[CCode (cname = "instance_object_new")]
			public InstanceObject();

			public void delete();
			
			public void update();
			public void add_instance(Vec3 position, Vec3 scale, Quat rotation);
			public void rem_instance(int i);
			public Mat4 world(int i);
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
		[CCode (has_target = false)]
		public delegate void OnClick(UIButton entry, void* data);

		[Compact]
		[CCode (cname = "ui_button")]
		public class UIButton {
			public UIRectangle back;
			public UIText label;
			public Vec4 up_color;
			public Vec4 down_color;
			public OnClick onclick;
			public void* onclick_data;
			public bool active;
			public bool enabled;
			public bool pressed;
			[CCode (cname = "ui_button_new")]
			public UIButton();
			public void delete();
			public void move(Vec2 pos);
			public void resize(Vec2 size);
			public void set_label(string label);
			public void set_label_color(Vec4 color);
			public void set_font(entities.AssetHandle f);
			public void set_onclick(OnClick onclick);
			public void set_onclick_data(void* data);
			public void set_active(bool active);
			public void set_enabled(bool enabled);
			public void set_texture(entities.AssetHandle tex, int width, int height, bool tile);
			public void disable();
			public void enable();
			public Vec2 position();
			public Vec2 size();
			public void event(SDL.Event e);
			public void update();
			public void render();
			public bool contains_point(Vec2 pos);
		}

		[Compact]
		[CCode (cname = "ui_browser")]
		public class UIBrowser {
			public UIRectangle outer;
			public UIListbox inner;
			public FPath directory;
			public bool active;

			[CCode (cname = "ui_browser_new")]
			public UIBrowser();
			public void delete();
			public void chdir(FPath dir);
			public void event(SDL.Event e);
			public void update();
			public void render();
						
		}

		[Compact]
		[CCode (cname = "ui_dialog")]
		public class UIDialog {
			public UIButton back;
			public UIText title;
			public UIText contents;
			public bool single_button;
			public UIButton left;
			public UIButton right;
			[CCode (cname = "ui_dialog_new")]
			public UIDialog();
			public void delete();
			public void set_single_button(bool single);
			public void set_title(string title);
			public void set_contents(string contents);
			public void set_button_left(string left, OnClick onleft);
			public void set_button_right(string right, OnClick onright);
			public void set_font(entities.AssetHandle fnt);
			
			public void event(SDL.Event e);
			public void update();
			public void render();
		}

		[Compact]
		[CCode (cname = "ui_option")]
		public class UIOption {
			public UIButton label;
			public int num_options;
			public UIButton[] options;
			public bool active;
			public int selected;
			public OnOptionSelect onselect;
			[CCode (cname = "ui_option_new")]
			public UIOption();
			public void delete();
			public void set_active(bool active);
			public void move(Vec2 position);
			public void set_options(string label, int num, string[] values);
			public int  get_selected();
			public void set_selected(int selected);
			public void set_onselect(OnOptionSelect onselect);
			public void deactivate();
			public void activate();
			public void event(SDL.Event e);
			public void update();
			public void render();
		}

		[Compact]
		[CCode (cname = "ui_slider")]
		public class UISlider {
			public UIButton label;
			public UIRectangle slot;
			public UIRectangle bar;  
			public bool pressed;
			public bool active;
			public float amount;
			[CCode (cname = "ui_slider_new")]
			public UISlider();
			public void delete();
		}

		[Compact]
		[CCode (cname = "ui_spinner")]
		public class UISpinner {
			[CCode (cname = "ui_spinner_new")]
			public UISpinner();
			public void delete();
			public void set_label(string label);
			public void move(Vec2 position);
			public void set_amount(float amount);
			public float get_amount();
			public void set_active(bool active);
			public void deactivate();
			public void activate();
			public void event(SDL.Event e);
			public void update();
			public void render();
		}

		[Compact]
		[CCode (cname = "ui_style")]
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
		[CCode (cname = "ui_textbox")]
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
			public void delete();
			public void set_password(bool password);
			public void set_max_chars(int l);
			public void addchar(char c);
			public void rmchar();
			public void move(Vec2 pos);
			public void resize(Vec2 size);
			public void set_font(entities.AssetHandle f);
			public void set_label(string label);
			public void set_contents(string label);
			public void set_alignment(int halign, int valign);
			public void disable();
			public void enable();
			public void event(SDL.Event e);
			public void update();
			public void render();
			public bool contains_point(Vec2 p);
			
		}

		[Compact]
		[CCode (cname = "ui_toast")]
		public class UIToast {
			public UIText label;  
			public float opacity;
			public bool active;
			[CCode (cname = "ui_toast_new")]
			public UIToast();
			public void delete();
			public void popup(string fmt, ...);
			public void set_label(string label);
			public void set_font(entities.AssetHandle f);
			public void event(SDL.Event e);
			public void update();
			public void render();
						
		}

		[Compact]
		[CCode (cname = "ui_listbox")]
		public class UIListbox {
			public UIRectangle back;
			public int scroll;  
			public int num_items;
			public UIText[] items;
			public bool active;
			public OnTextSelect onselect;
			[CCode (cname = "ui_listbox_new")]
			public UIListbox();
			public void delete();
			public void clear();
			public UIText add_item(string item);
			public void move(Vec2 pos);
			public void resize(Vec2 size);
			public void event(SDL.Event e);
			public void update();
			public void render();
			public void set_onselect(OnTextSelect onselect);
		}

		[Compact]
		[CCode (cname = "ui_rectangle")]
		public class UIText {
			public string str;
			public GLuint positions_buffer;
			public GLuint texcoords_buffer;
			public GLuint colors_buffer;
			public int num_positions;
			public int num_texcoords;
			public Vec2 top_left;
			public Vec2 bottom_right;
			/* public */
			public entities.AssetHandle font;  
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
			[CCode (cname = "ui_text_new_string")]
			public static UIText fromString(string str);
			public void delete();
			public void move(Vec2 pos);
			public void set_font(entities.AssetHandle font);
			public void set_color(Vec4 color);
			public void set_scale(Vec2 scale);
			public void align(int halign, int valign);
			
			public void draw();
			public void draw_string(string str);
			
			public void event(SDL.Event e);
			public void update();
			public void render();
			
			public bool contains_point(Vec2 position);
						

		}

		[Compact]
		[CCode (cname = "ui_rectangle")]
		public class UIRectangle {
			public Vec2 top_left;
			public Vec2 bottom_right;
			public Vec4 color;
			public entities.AssetHandle texture;
			public int texture_width;
			public int texture_height;
			public bool texture_tile;
			public float border_size;
			public Vec4 border_color;
			public float glitch;
			public float time;
			public GLenu blend_src;
			public GLenu blend_dst;
			public bool active;

			[CCode (cname = "ui_rectangle_new")]
			public UIRectangle();
			public void delete();
			public void event(SDL.Event e);
			public void update();
			public void render();
			
			public void move(Vec2 pos);
			public void resize(Vec2 size);
			public void set_texture(entities.AssetHandle tex, int width, int height, bool tile);
			public void set_border(float size, Vec4 color);
			public void set_color(Vec4 color);
			public void set_glitch(float glitch);
			public Vec2 center();
			public bool contains_point(Vec2 pos);
			public void blend(GLenu blend_src, GLenu blend_dst);
			
			public Vec2 position();
			public Vec2 size();
						
		}
	}
}

