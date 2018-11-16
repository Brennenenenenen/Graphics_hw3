#ifndef CAMERA_H
#define CAMERA_H

#include <Angel.h>

class Camera
{
	vec4 position;
	vec4 viewDirection;
	const vec4 up;
	vec2 oldMousePos;
	public:
		Camera();
		void mouseUpdate(const vec2& newMousePos);
		mat4 getWorldToViewMatrix() const;

};

#endif