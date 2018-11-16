#include "camera.h"
#include <Angel.h>

Camera::Camera() : 
	viewDirection(0.0, 0.0, -1.0, 1.0), up(0.0, 1.0, 0.0, 1.0)
	{

	}

void Camera::mouseUpdate(const vec2& newMousePos)
{
	vec2 mouseDelta = newMousePos - oldMousePos;
	viewDirection = Rotate(mouseDelta.x, up) * viewDirection;
	oldMousePos = newMousePos;
}

mat4 Camera::getWorldToViewMatrix() const
{
	return LookAt(position, position + viewDirection, up);
}